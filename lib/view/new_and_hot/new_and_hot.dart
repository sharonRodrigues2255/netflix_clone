import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/view/new_and_hot/widgets/coming_soon.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: kblack,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            "New & Hot",
            style: myfont(size: large, weight: boldfont),
          ),
          actions: [
            Icon(
              Icons.cast,
              size: large,
            ),
            kwidth,
            Container(
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            kwidth
          ],
          bottom: TabBar(
              isScrollable: true,
              labelColor: kblack,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: kwhite),
              tabs: [
                Tab(
                  text: "  🍿Coming Soon    ",
                ),
                Tab(
                  text: " 👀 Everyone's Watching   ",
                )
              ]),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneIsWatching(context),
        ]),
      )),
    );
  }
}

_buildComingSoon() {
  return ListView.builder(
      itemCount: 4,
      itemBuilder: ((context, index) {
        return ComingSoonWidget();
      }));
}

_buildEveryoneIsWatching(context) {
  return ListView.builder(itemBuilder: ((context, index) {
    return EveryOneIsWatching();
  }));
}

class EveryOneIsWatching extends StatelessWidget {
  const EveryOneIsWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          'You',
          style: myfont(),
        ),
        kheight,
        Text(
          "The first season follows the story of Joe Goldberg, a bookstore manager in New York, who upon meeting Guinevere Beck, an aspiring writer, becomes infatuated with her. He feeds his toxic obsession using social media and other technology to track her presence and remove obstacles to their romance.",
          style: TextStyle(color: Colors.grey),
        ),
        const VideoWidget(),
        kheight,
        kheight
      ],
    );
  }
}

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            "https://www.themoviedb.org/t/p/w227_and_h127_bestv2/8L7ofyA6ae9hTmVNes3udRYwEFO.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.5),
                radius: 22,
                child: Icon(
                  Icons.volume_off,
                  color: Colors.white,
                  size: 25,
                ),
              )),
        ),
      ],
    );
  }
}
