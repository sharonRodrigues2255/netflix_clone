import 'package:flutter/material.dart';

import 'package:netflix/core/contants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: myfont(size: large, weight: boldfont),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          size: large,
        ),
        kwidth,
        Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
        kwidth
      ],
    );
  }
}
