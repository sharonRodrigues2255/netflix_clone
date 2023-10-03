import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            left: 50,
            child: Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kradius,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg"))),
            ),
          ),
          Positioned(
            top: 28,
            left: 1,
            child: BorderedText(
              strokeWidth: 5,
              strokeColor: kwhite,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                    fontSize: 160, color: kblack, fontWeight: boldfont),
              ),
            ),
          )
        ],
      ),
    );
  }
}
