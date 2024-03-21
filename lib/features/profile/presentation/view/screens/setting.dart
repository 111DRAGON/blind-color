import 'package:blind_color/features/profile/presentation/manger/Setting%20controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/fount manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../widget/setting row.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<SettingController>(
      init: SettingController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: 5,
            backgroundColor: context.theme.splashColor,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back),
              color: ColorManager.white,
            ),
            title: Text(
              "Settings".tr,
              style: getBoldStyle(
                  color: ColorManager.white, fontSize: FontSizeManager.s22),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(PaddingSize.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  "Option".tr,
                  style: getSemiBoldStyle(
                      color: context.theme.canvasColor,
                      fontSize: FontSizeManager.s24),
                ),
                SettingRow(
                  icon: CupertinoIcons.bell,
                  text: "Notifications and Sounds".tr,
                  onChanged: (value) =>
                      controller.notificationOnchange(value.obs),
                  switchKey: controller.notification.value,
                ),
                SettingRow(
                  icon: CupertinoIcons.sun_max,
                  text: "Theme Mode".tr,
                  onChanged: (value) => controller.themOnchange(value.obs),
                  switchKey: controller.them.value,
                ),
                GestureDetector(
                  onTap: () => controller.changeToEnLanguage(),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: context.theme.primaryColor,
                          size: AppSize.s30,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Text(
                          "change to English Language",
                          style:
                              getMediumStyle(color: context.theme.canvasColor),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.changeToArLanguage(),
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Icon(
                          Icons.language_sharp,
                          color: context.theme.primaryColor,
                          size: AppSize.s30,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Text(
                          "تحويل للغه العربيه",
                          style:
                              getMediumStyle(color: context.theme.canvasColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(PaddingSize.p20),
                  child: Container(
                    width: double.infinity,
                    height: 1.5,
                    color: ColorManager.primary,
                  ),
                ),
                Text(
                  "Support".tr,
                  style: getSemiBoldStyle(
                      color: context.theme.canvasColor,
                      fontSize: FontSizeManager.s24),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  "Terms of Services".tr,
                  style: getSemiBoldStyle(
                      color: ColorManager.gray, fontSize: FontSizeManager.s20),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  "About".tr,
                  style: getSemiBoldStyle(
                      color: ColorManager.gray, fontSize: FontSizeManager.s20),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  "Privacy Policy".tr,
                  style: getSemiBoldStyle(
                      color: ColorManager.gray, fontSize: FontSizeManager.s20),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
