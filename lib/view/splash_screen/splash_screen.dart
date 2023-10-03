import 'package:flutter/material.dart';
import 'package:netflix/core/Image_constants/image_constants.dart';
import 'package:netflix/view/preview_page/preview_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => PreviewScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 279,
          height: 99.7,
          child: Image(image: AssetImage(ImageConstants.logo)),
        ),
      ),
    );
  }
}
