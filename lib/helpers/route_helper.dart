import 'package:get/get.dart';
import 'package:timestamp_camera/bindings/confirm_save_binding.dart';
import 'package:timestamp_camera/bindings/demo_binding.dart';
import 'package:timestamp_camera/common/constant_data.dart';
import 'package:timestamp_camera/routes/confirm_save_route.dart';
import 'package:timestamp_camera/routes/demo_route.dart';

class RouteHelper {
  static List<GetPage> getRoute() => <GetPage>[
        GetPage(
          binding: DemoBinding(),
          name: ConstantData.initialRoute,
          page: () => DemoRoute(),
        ),
        GetPage(
          binding: ConfirmSaveBinding(),
          name: ConstantData.confirmSaveRoute,
          page: () => ConfirmSaveRoute(),
        ),
      ];
}
