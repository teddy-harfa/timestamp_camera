import 'dart:io';

import 'package:get/get.dart';
import 'package:timestamp_camera/controller/demo_controller.dart';

class ConfirmSaveController extends GetxController {
  //
  static final String uploadEndPoint = 'http://localhost/api/testing/upload';
  File file;
  String status = '';
  String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';

  void setStatus(String message) {
    status = message;
    update();
  }

  void saveImage() {
    DemoController _demoController = Get.find<DemoController>();
    _demoController.listFile.add(file);
    Get.back(result: 'saved');
  }

  @override
  void onInit() {
    DemoController _demoController = Get.find<DemoController>();
    file = _demoController.file;
    super.onInit();
  }
}
