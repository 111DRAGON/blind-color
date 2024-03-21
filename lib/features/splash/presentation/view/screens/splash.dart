import 'package:blind_color/core/recourses/images%20manager/images%20manager.dart';
import 'package:blind_color/features/splash/presentation/view/screens/onboarding%20view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 2),
        ),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagesManager.home2Image,
                            width: 180,
                            height: 180,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "WELCOME".tr,
                            style: getBoldStyle(fontSize: AppSize.s30,color: context.theme.primaryColor),
                          ),
                          const SizedBox(
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : const OnboardingView();
        },
      ),
    );
  }
}
