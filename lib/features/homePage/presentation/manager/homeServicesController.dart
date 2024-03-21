import 'package:get/get.dart';
import '../../../category/presentation/view/screens/my clothes.dart';
import '../../../profile/presentation/view/screens/profile.dart';
import '../view/screens/homePage.dart';

class HomeServicesController extends GetxController {
  var currentIndex = 0.obs;
 final List screens = [
    const HomePageView(),
    const MyClothesView(),
    const ProfileView(),
  ];
 final List appBarTitleList = [
    "Home".tr,
    "My Clothes".tr,
    "Profile".tr,
  ];
}
