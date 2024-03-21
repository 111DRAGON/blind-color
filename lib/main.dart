import 'package:blind_color/features/splash/presentation/view/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/locale/locale settings.dart';
import 'core/locale/locale.dart';
import 'injection_container.dart' as di;
import 'core/recourses/theme manger/theme manager.dart';

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());
    return GetMaterialApp(
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeService().mode,
      debugShowCheckedModeBanner: false,
      translations: MyLocal(),
      home: const SplashView(),
    );
  }
}
