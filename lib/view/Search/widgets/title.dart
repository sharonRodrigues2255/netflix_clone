import 'package:flutter/cupertino.dart';
import 'package:netflix/core/contants/constants.dart';

class SearchTitleTileWidget extends StatelessWidget {
  final String title;
  const SearchTitleTileWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: myfont(),
    );
  }
}
