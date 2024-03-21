import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../../core/widgets/default button.dart';

class HomePageCard extends StatelessWidget {
  HomePageCard(
      {required this.image,
      required this.buttonText,
      required this.cardText,
      required this.onPressed});
  String? cardText;
  String? buttonText;
  String? image;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: ColorManager.shadowColor, offset: const Offset(2.5, 5))
        ],
        border: Border.all(color: ColorManager.white),
        borderRadius: BorderRadius.circular(AppSize.s20),
        color: context.theme.cardColor,
      ),
      padding: const EdgeInsets.all(AppSize.s16),
      child: Row(
        children: [
          SizedBox(
            height: 180,
            width: 120,
            child: Image.asset(image ?? ""),
          ),
          const SizedBox(
            width: AppSize.s20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardText ?? "",
                  maxLines: 5,
                  style: getRegularStyle(
                      color: context.theme.canvasColor, fontSize: AppSize.s18),
                ),
                const SizedBox(
                  height: AppSize.s26,
                ),
                DefaultButton(
                    width: 180,
                    text: buttonText ?? "",
                    onPressed: onPressed)
              ],
            ),
          )
        ],
      ),
    );
  }
}
