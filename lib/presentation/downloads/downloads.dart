import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final _widgetsList = [const Section1(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: AppBarWidget(
                  title: "Downloads",
                )),
            backgroundColor: kblack,
            body: ListView.separated(
                padding: EdgeInsets.all(10),
                itemBuilder: (context, index) => _widgetsList[index],
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: _widgetsList.length)));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Icon(Icons.settings),
        kwidth,
        Text(
          "Smart Downloads",
          style: myfont(size: small, weight: regularfont),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget(
      {super.key,
      required this.angle,
      required this.imageList,
      required this.height,
      required this.margin});
  final double angle;
  final String imageList;
  final double height;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 100,
      child: Container(
        margin: margin,
        width: size.width * .35,
        height: size.width * height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  imageList,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _SmartDownloads(),
        kheight,
        kheight,
        kheight,
        Center(
            child: Text(
          "Introdusing Downloads For You",
          style: myfont(),
        )),
        kheight,
        Center(
          child: Text(
            "We will download a personalized selection of\nmovies and shows for you , so there is \nalways something to watch on your \ndevice",
            style: myfont(size: small, weight: regularfont, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        kheight,
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/7CBO9GhsUeMSsWQb47WTPZnKjdj.jpg",
    "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: size.width * .35,
              backgroundColor: Colors.grey.withOpacity(.5),
            ),
            DownloadsImageWidget(
              angle: 10,
              imageList: imageList[1],
              margin: EdgeInsets.only(left: 150, bottom: 20),
              height: .45,
            ),
            DownloadsImageWidget(
              angle: -10,
              imageList: imageList[0],
              margin: EdgeInsets.only(right: 150, bottom: 20),
              height: .45,
            ),
            DownloadsImageWidget(
              angle: 0,
              imageList: imageList[2],
              margin: EdgeInsets.zero,
              height: .51,
            ),
          ],
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MaterialButton(
            minWidth: MediaQuery.sizeOf(context).width * .95,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Color.fromARGB(255, 61, 55, 250),
            onPressed: () {},
            child: Text(
              "Set Up",
              style: myfont(weight: boldfont),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kwhite,
            onPressed: () {},
            child: Text(
              "See what you can download",
              style: myfont(color: kblack, weight: boldfont),
            ),
          ),
        ),
      ],
    );
  }
}
