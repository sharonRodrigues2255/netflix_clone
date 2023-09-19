import 'package:flutter/material.dart';
import 'package:netflix/core/contants/constants.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: myfont(),
    );
  }
}
