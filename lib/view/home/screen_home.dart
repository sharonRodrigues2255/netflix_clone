import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/view/home/numberCard.dart';
import 'package:netflix/view/widgets/main_Title_card_list.dart';
import 'package:netflix/view/widgets/main_title.dart';

ValueNotifier<bool> scrolling = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder(
          valueListenable: scrolling,
          builder: (context, direction, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final scrolldirection = notification.direction;
                if (scrolldirection == ScrollDirection.reverse) {
                  scrolling.value = true;
                } else if (scrolldirection == ScrollDirection.forward) {
                  scrolling.value = false;
                }

                return true;
              },
              child: Stack(
                children: [
                  const SingleChildScrollView(
                    child: Column(
                      children: [
                        HighlightCard(),
                        MainTileCardLIst(
                          title: "Released in the past year",
                        ),
                        MainTileCardLIst(
                          title: "Trending Now",
                        ),
                        NumberTitleCard(),
                        MainTileCardLIst(
                          title: "Tense Dramas",
                        ),
                        MainTileCardLIst(
                          title: "South Indian Cinema",
                        ),
                      ],
                    ),
                  ),
                  scrolling.value ? kheight : TopBar(),
                ],
              ),
            );
          },
        ),
      ),
    ));
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 10),
      height: 70,
      width: double.infinity,
      color: Colors.black.withOpacity(.3),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYAz6PeGPkGmG2wzhFNj1Ro7b1XZgr6yRdmQ&usqp=CAU"))),
              ),
              Spacer(),
              Icon(
                Icons.cast,
                size: large,
              ),
              kwidth,
              Container(
                width: 45,
                height: 45,
                color: Colors.blue,
              ),
              kwidth
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "TV Shows",
                style: myfont(size: 15.0),
              ),
              Text(
                "Movies",
                style: myfont(size: 15.0),
              ),
              Text(
                "Categories",
                style: myfont(size: 15.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HighlightCard extends StatelessWidget {
  const HighlightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg"))),
        ),
        Positioned(
          bottom: 1,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  Text(
                    "My list",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: kwhite),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: kblack,
                    ),
                    label: Text(
                      "Play",
                      style: myfont(color: kblack, size: 15.0),
                    )),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.info_outlined,
                        color: kwhite,
                      )),
                  Text(
                    "info",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows In India Today"),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
                    child: NumberCard(index: index))),
          ),
        )
      ],
    );
  }
}
