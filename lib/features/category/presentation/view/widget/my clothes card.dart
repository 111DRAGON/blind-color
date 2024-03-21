import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/images manager/images manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class MyClothesCard extends StatelessWidget {
  const MyClothesCard({super.key, required this.clothesType,required this.clothesColor,required this.image,});

  final String? clothesType;
  final String? image;
  final String? clothesColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingSize.p20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: ColorManager.shadowColor, offset: const Offset(0, 3))
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
              child: Image.asset(image??ImagesManager.matchOutfitImage),
            ),
            const SizedBox(
              width: AppSize.s20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    clothesType??"T-shirt",
                    style: getBoldStyle(
                        color: context.theme.canvasColor, fontSize: AppSize.s24),
                  ),
                  const SizedBox(height: AppSize.s12),
                  Text(
                    clothesColor??"Dark orange",
                    style: getRegularStyle(
                        color: ColorManager.gray, fontSize: AppSize.s20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
