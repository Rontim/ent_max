import 'package:ent_max/src/constants/colors.dart';
import 'package:ent_max/src/constants/image_string.dart';
import 'package:ent_max/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class HomeScreenBar extends StatefulWidget {
  const HomeScreenBar({
    super.key,
  });

  @override
  State<HomeScreenBar> createState() => _HomeScreenBarState();
}

class _HomeScreenBarState extends State<HomeScreenBar> {
  String greeting = '';

  void _updateGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      setState(() {
        greeting = 'Good Morning, Ron';
      });
    } else if (hour < 17) {
      setState(() {
        greeting = 'Good Afternoon, Ron';
      });
    } else {
      setState(() {
        greeting = 'Good Evening, Ron';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            greeting,
            style: const TextStyle(color: kTextColor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Stack(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(kProfileImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kButtonColor,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
