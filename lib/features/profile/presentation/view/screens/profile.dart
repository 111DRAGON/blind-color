import 'package:blind_color/features/profile/presentation/view/screens/privacy.dart';
import 'package:blind_color/features/profile/presentation/view/screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/fount manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../../core/widgets/default button.dart';
import '../widget/profile row.dart';
import 'editProfile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s20,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.amber,
          ),
          const SizedBox(
            height: AppSize.s8,
          ),
          Text(
            "Karim Mohamed",
            style: getBoldStyle(
                color: context.theme.canvasColor,
                fontSize: FontSizeManager.s24),
          ),
          Text(
            "KarimMohamed203@gmail.com",
            style: getMediumStyle(
                color: ColorManager.gray, fontSize: FontSizeManager.s20),
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          ProfileRow(
            icon: CupertinoIcons.profile_circled,
            text: "Edit Profile".tr,
            onTap: () {
              Get.to(const EditProfileView());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: PaddingSize.p30, left: PaddingSize.p30),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorManager.gray,
            ),
          ),
          ProfileRow(
            icon: Icons.lock_outline_rounded,
            text: 'Security and Privacy'.tr,
            onTap: () {
              Get.to(const PrivacyView());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: PaddingSize.p30, left: PaddingSize.p30),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorManager.gray,
            ),
          ),
          ProfileRow(
            icon: Icons.help,
            text: 'Help'.tr,
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: PaddingSize.p30, left: PaddingSize.p30),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorManager.gray,
            ),
          ),
          ProfileRow(
            icon: Icons.settings_rounded,
            text: "Settings".tr,
            onTap: () {
              Get.to(const SettingView());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: PaddingSize.p30, left: PaddingSize.p30),
            child: Container(
              width: double.infinity,
              height: 1,
              color: ColorManager.gray,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(PaddingSize.p20),
            child: Align(
                alignment: Alignment.topLeft,
                child: DefaultButton(
                  text: 'Logout'.tr,
                  fontSize: FontSizeManager.s20,
                  width: 190,
                  onPressed: () {
                    Get.back();
                  },
                )),
          ),
        ],
      ),
    );
  }
}
