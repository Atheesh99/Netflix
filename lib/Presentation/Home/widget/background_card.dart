import 'package:flutter/material.dart';
import 'package:netflix/core/Colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/custom_buton.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 700,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(kMainimage), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, title: "My List"),
                _playButton(),
                const CustomButtonWidget(
                    icon: Icons.info_outline, title: "Info")
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhitecolor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: kBlackcolor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kBlackcolor),
        ),
      ),
    );
  }
}
