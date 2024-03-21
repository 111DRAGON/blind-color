import 'package:blind_color/core/recourses/images%20manager/images%20manager.dart';
import 'package:blind_color/features/homePage/presentation/view/screens/chooseOutfit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../widget/homePage card.dart';
import 'matching color.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Scanning".tr,
                  style: getSemiBoldStyle(
                      color: context.theme.canvasColor,
                      fontSize: AppSize.s24),
                ),
                Icon(
                  Icons.document_scanner,
                  color: ColorManager.primary,
                )
              ],
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            HomePageCard(
              image: ImagesManager.home1Image,
              buttonText: 'Scan'.tr,
              cardText:
              "Scan your clothes to discover the perfect match, making style accessible to all"
                  .tr,
              onPressed: () {
                Get.to(const ChooseOutfitView());
              },
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            Row(
              children: [
                Text(
                  "Identify Colors".tr,
                  style: getSemiBoldStyle(
                      color: context.theme.canvasColor,
                      fontSize: AppSize.s24),
                ),
                Icon(
                  Icons.colorize,
                  color: ColorManager.primary,
                )
              ],
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            HomePageCard(
              image: ImagesManager.home2Image,
              buttonText: "Identify Colors".tr,
              cardText:
              "Discover the beauty in the world around you – you can identify the colors that paint your life"
                  .tr,
              onPressed: () {},
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            Row(
              children: [
                Text(
                  "Matchy Colors".tr,
                  style: getSemiBoldStyle(
                      color: context.theme.canvasColor,
                      fontSize: AppSize.s24),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            HomePageCard(
              image: ImagesManager.home3Image,
              buttonText: 'Match Colors'.tr,
              cardText:
              "you can explore the world of color harmony and discover which colors complement each other perfectly"
                  .tr,
              onPressed: () {
                Get.to(const MatchingColorView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
