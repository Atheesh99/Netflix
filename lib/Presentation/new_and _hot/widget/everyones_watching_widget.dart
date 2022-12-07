import 'package:flutter/material.dart';
import 'package:netflix/core/Colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/custom_buton.dart';
import 'package:netflix/presentation/new_and%20_hot/widget/vedio_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20 -something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan.",
          style: TextStyle(
            color: kGreycolor,
            letterSpacing: 1,
            wordSpacing: 1,
          ),
        ),
        kheight50,
        const VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.navigation_rounded,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "PLay",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
          ],
        ),
        kheight20,
      ],
    );
  }
}
