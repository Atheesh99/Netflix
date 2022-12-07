import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widget/background_card.dart';
import 'package:netflix/presentation/home/widget/main_title_card.dart';
import 'package:netflix/presentation/home/widget/number_title_card.dart';

ValueNotifier<bool> scrolNotifer = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrolNotifer,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                print(direction);
                if (direction == ScrollDirection.reverse) {
                  scrolNotifer.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrolNotifer.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundCardWidget(),
                      kheight20,
                      kheight,
                      MainTitleCard(title: "Released in the past year"),
                      kheight,
                      MainTitleCard(title: "Tending Now"),
                      kheight,
                      NumberTitleCard(),
                      kheight,
                      MainTitleCard(title: "Tense Darmas"),
                      kheight,
                      MainTitleCard(title: "South Indian Cinema"),
                      kheight,
                    ],
                  ),
                  scrolNotifer.value == true
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 100,
                          color: Colors.black.withOpacity(0.5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/800px-Netflix_2015_N_logo.svg.png",
                                      width: 60,
                                      height: 50,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kWidth,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  kWidth,
                                ],
                              ),
                              kheight,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Tv Shows",
                                    style: kHomeTextStyle,
                                  ),
                                  Text(
                                    "Movies",
                                    style: kHomeTextStyle,
                                  ),
                                  Text(
                                    "Categories",
                                    style: kHomeTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : kheight,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
