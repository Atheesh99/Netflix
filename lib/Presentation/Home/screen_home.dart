import 'package:flutter/material.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Widgets/main_card.dart';

import 'package:netflix/Presentation/Widgets/main_title.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MainTitle(
                title: "Released in the past year",
              ),
              kheight,
              LimitedBox(
                maxHeight: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => const MainCard(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
