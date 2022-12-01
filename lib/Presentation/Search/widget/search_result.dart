import 'package:flutter/cupertino.dart';
import 'package:netflix/Core/constants.dart';
import 'package:netflix/Presentation/Search/widget/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTexttitle(title: "Movies & TV"),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.4,
            children: List.generate(
              20,
              (index) {
                return const MoveCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MoveCard extends StatelessWidget {
  const MoveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
