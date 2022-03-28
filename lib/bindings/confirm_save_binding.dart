import 'package:get/get.dart';
import 'package:timestamp_camera/controller/confirm_save_controller.dart';

class ConfirmSaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ConfirmSaveController());
  }
}
