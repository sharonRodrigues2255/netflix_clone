import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/presentation/Search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: TextStyle(color: Colors.white),
            ),
            // Expanded(child: SearchIdleWidget()),
            Expanded(child: SearchResults())
          ],
        ),
      ),
    ));
  }
}
