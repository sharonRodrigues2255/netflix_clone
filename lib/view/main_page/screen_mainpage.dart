import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/view/Search/search.dart';
import 'package:netflix/view/downloads/downloads.dart';
import 'package:netflix/view/fast%20laughs/fast_laughs.dart';
import 'package:netflix/view/main_page/widgets/botton_navigation.dart';
import 'package:netflix/view/new_and_hot/new_and_hot.dart';
import 'package:netflix/view/home/screen_home.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _Pages = [
    ScreenHome(),
    NewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int newvalue, _) {
              return _Pages[newvalue];
            }),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
