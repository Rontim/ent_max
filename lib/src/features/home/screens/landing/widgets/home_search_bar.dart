import 'package:ent_max/src/constants/colors.dart';
import 'package:ent_max/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kSearchbarColor,
        ),
        child: const Row(
          children: [
            Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.white30),
            SizedBox(width: 20),
            Text(
              kSearch,
              style: TextStyle(fontSize: 18, color: Colors.white30),
            )
          ],
        ),
      ),
    );
  }
}
