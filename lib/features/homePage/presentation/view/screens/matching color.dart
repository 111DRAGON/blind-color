import 'package:blind_color/core/recourses/value%20manger/value%20manager.dart';
import 'package:blind_color/features/homePage/presentation/data/model/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../widget/matching color card.dart';

class MatchingColorView extends StatefulWidget {
  const MatchingColorView({super.key});

  @override
  State<MatchingColorView> createState() => _MatchingColorViewState();
}

class _MatchingColorViewState extends State<MatchingColorView> {
  late List<ColorInfo> allcolorPalette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: context.theme.canvasColor,
        ),
        title: Text(
          "Matchy Colors".tr,
          style: getSemiBoldStyle(
              color: context.theme.canvasColor, fontSize: AppSize.s26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(PaddingSize.p16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5 / 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: allcolorPalette.length,
          itemBuilder: (BuildContext context, int index) {
            return MatchingColorCard();
          },
        ),
      ),
    );
  }
}
