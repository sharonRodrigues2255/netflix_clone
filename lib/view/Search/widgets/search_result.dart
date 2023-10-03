import 'package:flutter/cupertino.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/view/Search/widgets/title.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        SearchTitleTileWidget(title: "Movies & TV"),
        kheight,
        Expanded(
            child: GridView.count(
          childAspectRatio: .7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(100, (index) => MovieCard()),
        ))
      ],
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/7CBO9GhsUeMSsWQb47WTPZnKjdj.jpg",
              )),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
