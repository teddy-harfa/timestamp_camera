import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timestamp_camera/common/constant_data.dart';
import 'package:timestamp_camera/helpers/route_helper.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('id_ID').then(
    (_) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: ConstantData.initialRoute,
      getPages: RouteHelper.getRoute(),
    );
  }
}
