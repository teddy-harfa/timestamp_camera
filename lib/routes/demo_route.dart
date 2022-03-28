import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timestamp_camera/controller/demo_controller.dart';

class DemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DemoController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text("Upload Image Demo"),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Jumlah gambar tersimpan : ${controller.listFile.length}'),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: controller.chooseImage,
                child: Text('Take Image'),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: controller.uploadImage,
                child: Text('Upload All Image'),
              ),
              Text(
                controller.status,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:
                      controller.listFile.isEmpty ? Colors.red : Colors.green,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
