import 'package:blind_color/core/recourses/value%20manger/value%20manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/recourses/images manager/images manager.dart';
import '../widget/my clothes card.dart';

class MyClothesView extends StatelessWidget {
  const MyClothesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingSize.p16),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return const MyClothesCard(
            clothesType: 'T-shirt',
            clothesColor: 'Dark orange',
            image: ImagesManager.matchOutfitImage,
          );
        },
      ),
    );
  }
}
