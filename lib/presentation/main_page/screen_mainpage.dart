import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/Search/search.dart';
import 'package:netflix/presentation/downloads/downloads.dart';
import 'package:netflix/presentation/fast%20laughs/fast_laughs.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/botton_navigation.dart';
import 'package:netflix/presentation/new_and_hot/new_and_hot.dart';

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
