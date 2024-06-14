import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scaads/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 640),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
    }
    );
  }
}

