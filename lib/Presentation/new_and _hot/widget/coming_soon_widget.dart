import 'package:flutter/material.dart';
import 'package:netflix/core/Colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/custom_buton.dart';
import 'package:netflix/presentation/new_and%20_hot/widget/vedio_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 16,
                  color: kGreycolor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8, top: 10),
                    child: Text(
                      "TALL GIRL 2",
                      style: TextStyle(
                        fontSize: 35,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 11,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 11,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kheight,
              const Text("Coming on Friday"),
              kheight,
              const Text(
                "Tall Gril 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              const Text(
                "Landing the lead in the school muscial is a dream come true for jodi, until the  pressure sends her confidence - and her relationship - into a tailspain.",
                style: TextStyle(
                  color: kGreycolor,
                  letterSpacing: 1,
                  wordSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
