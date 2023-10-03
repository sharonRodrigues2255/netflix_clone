import 'package:flutter/material.dart';
import 'package:netflix/view/fast%20laughs/widgets/fast_laugh_video.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            20,
            (index) => videoListItem(
                  index: index,
                )),
      ),
    ));
  }
}
