import 'package:ent_max/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class CastAndCrew extends StatelessWidget {
  final List cast;
  const CastAndCrew({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            const Text(
              kCast,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: cast.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (item, index) {
                  return castCard(cast[index]);
                },
              ),
            )
          ],
        ));
  }

  Widget castCard(final Map cast) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 100,
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(cast['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            cast['name'],
            maxLines: 2,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
