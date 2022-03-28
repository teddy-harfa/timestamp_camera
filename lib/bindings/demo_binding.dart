import 'package:get/get.dart';
import 'package:timestamp_camera/controller/confirm_save_controller.dart';
import 'package:timestamp_camera/controller/demo_controller.dart';

class DemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DemoController());
  }
}
