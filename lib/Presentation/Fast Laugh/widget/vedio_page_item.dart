import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';

class VedioListItem extends StatelessWidget {
  const VedioListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.4),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kwhitecolor,
                    ),
                  ),
                ),

                //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://www.themoviedb.org/t/p/w220_and_h330_face/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg"),
                      ),
                    ),
                    VideoActionsWidget(
                        icon: Icons.emoji_emotions, title: "LOL"),
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    VideoActionsWidget(icon: Icons.share, title: "Share"),
                    VideoActionsWidget(icon: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kwhitecolor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
