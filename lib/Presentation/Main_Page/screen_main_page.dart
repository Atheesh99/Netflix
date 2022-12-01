import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Downloads/screen_downloads.dart';
import 'package:netflix/Presentation/Fast%20Laugh/fast_laugh.dart';
import 'package:netflix/Presentation/Home/screen_home.dart';
import 'package:netflix/Presentation/Main_Page/Widgets/bottom_nav.dart';
import 'package:netflix/Presentation/New%20and%20Hot/screen_new_and_hot.dart';
import 'package:netflix/Presentation/Search/screen-search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNAvigationWidgets(),
    );
  }
}
