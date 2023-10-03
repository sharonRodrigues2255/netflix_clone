import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/view/Search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/wiE9doxiLwq3WCGamDIOb2PqBqc.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        SearchTitleTileWidget(
          title: "Top Searches",
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TopSearchItemTile(),
                  ),
              separatorBuilder: (context, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: containerWidth / 3,
          height: containerWidth / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        kwidth,
        Expanded(
            child: Text(
          "Peaky Blinders",
          style: myfont(size: small),
        )),
        CircleAvatar(
            radius: 22,
            backgroundColor: kwhite,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: kblack,
              child: Icon(
                Icons.play_arrow,
                color: kwhite,
              ),
            ))
      ],
    );
  }
}
