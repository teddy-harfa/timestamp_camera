import 'dart:io';
import 'dart:math';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timestamp_camera/common/constant_data.dart';
import 'package:image/image.dart' as Im;
import 'package:intl/intl.dart';

class DemoController extends GetxController {
  //
  List<File> listFile = [];
  File file;
  String status = '';

  void chooseImage() async {
    file = await ImagePicker.pickImage(
        source: ImageSource.camera, maxHeight: 1000, maxWidth: 1000);
    if (file != null) {
      await addTimeStamp();
      final result = await Get.toNamed(ConstantData.confirmSaveRoute);
      if (result == 'retry') {
        chooseImage();
      } else if (result == 'saved') {
        Get.snackbar('Tersimpan', 'Gambar disimpan');
        update();
      }
    } else {
      Get.snackbar('Error', 'Image not loaded');
    }
  }

  setStatus(String text) {
    status = text;
    update();
  }

  addTimeStamp() async {
    // final tempDir = await getTemporaryDirectory();
    final tempDir = await getExternalStorageDirectory();
    final path = tempDir.path;
    int rand = Random().nextInt(10000);
    var dateTime = DateFormat('d/M/y H:m:s').format(DateTime.now());

    Im.Image image = Im.decodeImage(file.readAsBytesSync());
    Im.Image timestamped = Im.drawString(image, Im.arial_48, 10, 10, dateTime);

    File source = file;
    file = File('$path/img_$rand.jpg')..writeAsBytesSync(Im.encodeJpg(image, quality: 90));
    if (file != null) {
      source.delete();
    }
    print(file);
  }

  void startUpload() {
    setStatus('Uploading Image...');
    if (listFile.isEmpty) {
      setStatus(ConstantData.errorKosong);
      return;
    }
    uploadImage();
  }

  uploadImage() {
    print(listFile);
    setStatus('success');
    listFile.forEach((element) {
      element.delete();
    });
    listFile.clear();
    // http.post(uploadEndPoint, body: {
    //   "image": base64Image,
    //   "name": fileName,
    // }).then((result) {
    //   setStatus(result.statusCode == 200 ? result.body : errMessage);
    // }).catchError((error) {
    //   setStatus(error);
    // });
  }
}
