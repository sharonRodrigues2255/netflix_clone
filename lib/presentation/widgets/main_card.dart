import 'package:flutter/material.dart';
import 'package:netflix/core/contants/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: kradius,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w94_and_h141_bestv2/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg"))),
    );
  }
}
