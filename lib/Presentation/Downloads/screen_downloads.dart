import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarWidget(title: "Downloads"),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        itemCount: _widgetList.length,
        separatorBuilder: (context, index) => SizedBox(
          height: 20,
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imagelist = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitecolor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your \ndevice.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              wordSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.42,
                  backgroundColor: Colors.grey.withOpacity(0.7),
                ),
              ),
              DownloadImageWidget(
                imagelist: imagelist[0],
                margin: EdgeInsets.only(left: 165, top: 50),
                angle: 25,
                size: Size(size.width * 0.44, size.height * 0.30),
              ),
              DownloadImageWidget(
                imagelist: imagelist[1],
                margin: EdgeInsets.only(right: 165, top: 50),
                angle: -25,
                size: Size(size.width * 0.44, size.height * 0.30),
              ),
              DownloadImageWidget(
                imagelist: imagelist[2],
                radius: 20,
                margin: EdgeInsets.only(bottom: 35, top: 50),
                size: Size(size.width * 0.44, size.height * 0.33),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kbuttoncolorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Set up ",
                style: TextStyle(
                  color: kwhitecolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See what you can download ",
              style: TextStyle(
                color: kBlackcolor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    Key? key,
    this.angle = 0,
    required this.imagelist,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          //margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: kBlackcolor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imagelist,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
