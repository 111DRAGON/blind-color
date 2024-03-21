import 'package:blind_color/core/recourses/images%20manager/images%20manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../widget/Match outfit card.dart';

class MatchOutfitView extends StatelessWidget {
  const MatchOutfitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: context.theme.splashColor,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color: context.theme.shadowColor)
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.s40),
                  bottomRight: Radius.circular(AppSize.s40),
                ),
              ),
              padding: const EdgeInsets.all(AppSize.s26),
              width: double.infinity,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: ColorManager.white,
                      )),
                  Text(
                    "Match Outfit".tr,
                    style: getSemiBoldStyle(
                        color: ColorManager.white, fontSize: AppSize.s26),
                  ),
                  const SizedBox(
                    height: AppSize.s20,
                  ),
                  Text(
                    "Let’s match your outfit".tr,
                    style: getRegularStyle(
                        color: ColorManager.white, fontSize: AppSize.s20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(PaddingSize.p20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.shadowColor,
                            offset: const Offset(0, 3))
                      ],
                      border: Border.all(color: ColorManager.white),
                      borderRadius: BorderRadius.circular(AppSize.s20),
                      color: context.theme.cardColor,
                    ),
                    padding: const EdgeInsets.all(AppSize.s16),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 60,
                          child: Image.asset(ImagesManager.matchOutfitImage),
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dark orange",
                                style: getBoldStyle(
                                    color: context.theme.canvasColor,
                                    fontSize: AppSize.s24),
                              ),
                              const SizedBox(height: AppSize.s12),
                              Text(
                                "Let’s match your outfit".tr,
                                style: getRegularStyle(
                                    color: ColorManager.gray,
                                    fontSize: AppSize.s20),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s26,
                  ),
                  Container(
                    padding: const EdgeInsets.all(PaddingSize.p20),
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.white),
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.shadowColor,
                            offset: const Offset(3.5, 3.5))
                      ],
                      borderRadius: BorderRadius.circular(AppSize.s20),
                      color: context.theme.cardColor,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Switch in colors".tr,
                          style: getMediumStyle(
                            color: context.theme.canvasColor,
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: AppSize.s14,
                              backgroundColor: ColorManager.primary,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "blue",
                              style: getMediumStyle(
                                  color: context.theme.canvasColor,
                                  fontSize: AppSize.s12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: AppSize.s12,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: AppSize.s14,
                              backgroundColor: ColorManager.black,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Black",
                              style: getMediumStyle(
                                  color: context.theme.canvasColor,
                                  fontSize: AppSize.s12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: AppSize.s12,
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: AppSize.s14,
                              backgroundColor: ColorManager.gray,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Gray",
                              style: getMediumStyle(
                                  color: context.theme.canvasColor,
                                  fontSize: AppSize.s12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  GridView.count(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    children: [
                      MatchOutfitCard(
                        image: ImagesManager.jacketImage,
                        text: "Jacket".tr,
                        radius: 16,
                      ),
                      MatchOutfitCard(
                        image: ImagesManager.pantImage,
                        text: "Pant".tr,
                        radius: 16,
                      ),
                      MatchOutfitCard(
                        image: ImagesManager.shortsImage,
                        text: "Shorts".tr,
                        radius: 16,
                      ),
                      MatchOutfitCard(
                        image: ImagesManager.shoesImage,
                        text: "Shoes".tr,
                        radius: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Recognize the color".tr,
                      style: getMediumStyle(color: ColorManager.amber),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
