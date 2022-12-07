import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/Colors/colors.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 60,
              height: 200,
            ),
            Container(
              width: 140,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/tegBpjM5ODoYoM1NjaiHVLEA0QM.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 15,
          bottom: -30,
          child: BorderedText(
            strokeWidth: 8.0,
            strokeColor: kwhitecolor,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  fontSize: 130,
                  color: kBlackcolor,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
