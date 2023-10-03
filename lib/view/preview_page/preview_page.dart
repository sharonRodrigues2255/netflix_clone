import 'package:flutter/material.dart';
import 'package:netflix/core/Image_constants/image_constants.dart';
import 'package:netflix/core/Image_constants/preview_page_constants.dart';
import 'package:netflix/core/my_textstyle.dart';
import 'package:netflix/core/preview_page_names.dart';
import 'package:netflix/view/main_page/screen_mainpage.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 30,
          child: Image(image: AssetImage(ImageConstants.logo)),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.edit,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 20),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        index < 5
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ScreenMainPage()))
                            : null;
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: index <
                                      PreviewPageImages.previewImageList.length
                                  ? BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(PreviewPageImages
                                              .previewImageList[index])))
                                  : BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              PreviewPageImages.addProfile)))),
                          Text(
                            index < PreviewPageNames.nameList.length
                                ? PreviewPageNames.nameList[index]
                                : "Add Profile",
                            style: myFont(),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
//HomeScreen(profileName: PreviewPageNames.nameList[index],);