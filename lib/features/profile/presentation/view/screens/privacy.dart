import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/fount manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: context.theme.splashColor,
        leading: IconButton(
          onPressed: () {Get.back();},
          icon: const Icon(Icons.arrow_back),
          color: ColorManager.white,
        ),
        title: Text(
          "Privacy and Security",
          style: getBoldStyle(
              color: ColorManager.white, fontSize: FontSizeManager.s22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(PaddingSize.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Text("Security",style: getSemiBoldStyle(color: context.theme.canvasColor,fontSize: FontSizeManager.s24),),
          const SizedBox(height: AppSize.s16,),
          Text("Two-Step Verification",style: getMediumStyle(color: ColorManager.gray,fontSize: FontSizeManager.s20),),
          const SizedBox(height: AppSize.s20,),
          Text("Change Password ",style: getMediumStyle(color: ColorManager.gray,fontSize: FontSizeManager.s20),),
        ],),
      ),
    );
  }
}
