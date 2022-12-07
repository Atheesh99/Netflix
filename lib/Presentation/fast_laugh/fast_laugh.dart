import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widget/vedio_page_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(10, (index) {
              return VedioListItem(
                index: index,
              );
            }),
          ),
        ),
      ),
    );
  }
}
