import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timestamp_camera/controller/confirm_save_controller.dart';
import 'package:timestamp_camera/widgets/show_image_preview.dart';

class ConfirmSaveRoute extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ConfirmSaveController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Upload Image Demo"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ShowImagePreview(file: controller.file),
            SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
              onPressed: () {
                Get.back(result: 'retry');
              },
              child: Text('Retake Image'),
            ),
            OutlinedButton(
              onPressed: controller.saveImage,
              child: Text('Simpan Image'),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
