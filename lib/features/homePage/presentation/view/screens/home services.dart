import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../manager/homeServicesController.dart';
import '../widget/default BottomNavBar.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});
  @override
  Widget build(BuildContext context) {
    return GetX<HomeServicesController>(
      init: HomeServicesController(),
      builder: (controller) {
        return Scaffold(
          body: controller.screens[controller.currentIndex.value],
          appBar: AppBar(
              title: Text(
                controller.appBarTitleList[controller.currentIndex.value],
                style: getSemiBoldStyle(
                    color: context.theme.canvasColor, fontSize: AppSize.s26),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    'images/logo.png',
                    width: 30,
                    height: 40, // Path to your logo image asset
                  ),
                ),
              ]),
          bottomNavigationBar: DefaultBottomNavBar(
            onTap: (index) {
              controller.currentIndex.value = index!;
            },
            currentIndex: controller.currentIndex.value,
            iconOfItem1: Icons.home,
            iconOfItem2: LineIcons.tShirt,
            iconOfItem3: Icons.person,
            textOfItem1: "Home".tr,
            textOfItem2: "My Clothes".tr,
            textOfItem3: "Profile".tr,
          ),
        );
      },
    );
  }
}
