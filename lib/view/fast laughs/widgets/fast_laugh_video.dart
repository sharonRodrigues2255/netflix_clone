import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/contants/constants.dart';

class videoListItem extends StatelessWidget {
  final index;
  const videoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(.5),
                      radius: 30,
                      child: Icon(
                        Icons.volume_mute,
                        color: Colors.white,
                        size: 30,
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/7CBO9GhsUeMSsWQb47WTPZnKjdj.jpg"),
                  ),
                  kheight,
                  kheight,
                  VideoActions(
                    icon: Icons.emoji_emotions,
                    title: "LOL",
                  ),
                  VideoActions(icon: Icons.add, title: "My List"),
                  VideoActions(icon: Icons.share, title: "Share"),
                  VideoActions(icon: Icons.play_arrow, title: "Play")
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
        ),
        Text(
          title,
          style: myfont(size: 10.0, weight: regularfont),
        ),
        kheight,
        kheight
      ],
    );
  }
}
