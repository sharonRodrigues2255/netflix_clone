import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/contants/constants.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "11",
                style: myfont(),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                      "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/wu444tM9YBllq9UcBv5TeidO3j3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: IconButton(
                        onPressed: () {},
                        icon: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(.5),
                          radius: 22,
                          child: Icon(
                            Icons.volume_off,
                            color: Colors.white,
                            size: 25,
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Ragnarok",
                    style: myfont(size: 40.0),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.snapchat,
                                color: kwhite,
                              )),
                          Text(
                            "Remind me",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      kwidth,
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.info_outline,
                                color: kwhite,
                              )),
                          Text(
                            "Info",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              kheight,
              Text("Coming on Friday"),
              kheight,
              kheight,
              Text(
                'Ragnarok',
                style: myfont(),
              ),
              kheight,
              Text(
                "A small Norwegian town experiencing warm winters and violent downpours seems to be headed for another Ragnarok -- unless somebody intervenes in time.",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
