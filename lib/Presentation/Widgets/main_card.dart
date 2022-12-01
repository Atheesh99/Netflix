import 'package:flutter/material.dart';
import 'package:netflix/Core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius20,
        image: const DecorationImage(
          image: NetworkImage(
            "https://www.themoviedb.org/t/p/w220_and_h330_face/7c1JtraYsjMMnk8Md0IMoyRzqZJ.jpg",
          ),
        ),
      ),
    );
  }
}
