import 'package:flutter/material.dart';
import 'package:netflix/core/contants/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainTileCardLIst extends StatelessWidget {
  const MainTileCardLIst({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
                    child: const MainCard())),
          ),
        )
      ],
    );
  }
}
