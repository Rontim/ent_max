import 'package:ent_max/src/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class CardThumbnail extends StatelessWidget {
  final String imageAsset;
  const CardThumbnail({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: kBackgroundColor.withOpacity(0.25),
              offset: const Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 1),
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageAsset),
          fit: BoxFit.cover,
        ),
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
    );
  }
}
