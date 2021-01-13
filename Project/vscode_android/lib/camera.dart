import 'package:camera/camera.dart';
import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vscode_android/constans.dart';
import 'package:vscode_android/preview_camera.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  static String routeName = '/camera';

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

/// References
/// * Camera: https://dev.to/samuelezedi/building-a-camera-app-with-flutter-52p5
/// * External Storage: https://pub.dev/packages/ext_storage
/// * Storage Permission: https://stackoverflow.com/questions/50561737/getting-permission-to-the-external-storage-file-provider-plugin
/// * Share File: https://pub.dev/packages/esys_flutter_share

class _CameraScreenState extends State {
  CameraController controller;
  List cameras;
  int selectedCameraIndex;
  String imgPath;

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      cameras = value;

      if (cameras.length > 0) {
        setState(() {
          selectedCameraIndex = 0;
        });
        initCameraController(cameras[selectedCameraIndex]).then((void v) {});
      } else {
        print('No camera available');
      }
    }).catchError((err) {
      print('Error :${err.code}Error message : ${err.message}');
    });
  }

  Future initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }
    controller = CameraController(cameraDescription, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (err) {
      print('Error:${err.code}\nError message : ${err.description}');
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('AyoBerbagi.id', textAlign: TextAlign.center),
        centerTitle: true,),
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: cameraPreviewWidget(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      cameraToggleRowWidget(),
                      cameraControlWidget(context),
                      Spacer()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return Center(
        child: Container(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
              backgroundColor: ColorPalette.primaryColor),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }

  Widget cameraControlWidget(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(
                Icons.camera,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              onPressed: () {
                onCapturePressed(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget cameraToggleRowWidget() {
    if (cameras == null || cameras.isEmpty) {
      return Spacer();
    }
    CameraDescription selectedCamera = cameras[selectedCameraIndex];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton.icon(
          onPressed: () {
            selectedCameraIndex = selectedCameraIndex < cameras.length - 1
                ? selectedCameraIndex + 1
                : 0;
            CameraDescription selectedCamera = cameras[selectedCameraIndex];
            initCameraController(selectedCamera);
          },
          icon: Icon(
            getCameraLensIcon(lensDirection),
            color: Colors.white,
            size: 24,
          ),
          label: Text(
            '${lensDirection.toString().substring(lensDirection.toString().indexOf('.') + 1).toUpperCase()}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  IconData getCameraLensIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.back:
        return CupertinoIcons.switch_camera;
      case CameraLensDirection.front:
        return CupertinoIcons.switch_camera_solid;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }

  void onCapturePressed(context) async {
    try {
      //path untuk directory project
      // final path =
      //     join((await getTemporaryDirectory()).path, '${DateTime.now()}.jpg');
      // await controller.takePicture().then((value) => value.saveTo(path));

      //path untuk external storage ke directory "pictures"
      final extPath = join(
          await ExtStorage.getExternalStoragePublicDirectory(
              ExtStorage.DIRECTORY_PICTURES),
          '${DateTime.now()}.jpg');

      if (!(await Permission.storage.status).isGranted) {
        var status = await Permission.storage.request();
        if (!status.isGranted) {
          return null;
        }
      }

      await controller.takePicture(extPath);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PreviewCamera(
                  imgPath: extPath,
                )),
      );
    } catch (err) {
      print('Error:${err.code}\nError message : ${err.description}');
    }
  }
}
