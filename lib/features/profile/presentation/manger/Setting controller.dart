import 'package:get/get.dart';

import '../../../../core/locale/locale settings.dart';
import '../../../../core/recourses/theme manger/theme manager.dart';

class SettingController extends GetxController {
  MyLocaleController controllerLang = Get.find();
  RxBool notification = true.obs;
  RxBool them = true.obs;

  themOnchange(RxBool value) {
    them.value = value.value;
    ThemeService().switchTheme();
  }

  changeToEnLanguage() {
    controllerLang.changeLange("en");
  }

  changeToArLanguage() {
    controllerLang.changeLange("ar");
  }

  notificationOnchange(RxBool value) {
    notification.value = value.value;
  }
}
