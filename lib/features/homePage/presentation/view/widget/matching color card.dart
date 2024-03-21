import 'package:blind_color/core/recourses/value%20manger/value%20manager.dart';
import 'package:flutter/material.dart';

import '../../../../../core/recourses/color manager/color manager.dart';

class MatchingColorCard extends StatelessWidget {
  MatchingColorCard({
    this.color1,
    this.color2,
    this.color3,
    this.color4,
  });
  Color? color1;
  Color? color2;
  Color? color3;
  Color? color4;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: ColorManager.shadowColor, offset: const Offset(0, 2.5))
        ],
        border: Border.all(color: ColorManager.white),
        borderRadius: BorderRadius.circular(AppSize.s20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: color1 ?? ColorManager.darkPrimary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(PaddingSize.p20),
                  topRight: Radius.circular(PaddingSize.p20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: color2 ?? ColorManager.darkBlue,
            ),
          ),
          Expanded(
            child: Container(
              color: color3 ?? ColorManager.lightPrimary,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: color4 ?? ColorManager.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(PaddingSize.p20),
                  bottomRight: Radius.circular(PaddingSize.p20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
