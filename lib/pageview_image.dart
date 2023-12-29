import 'package:flutter/material.dart';
import 'package:image_chandru/appdata_image.dart';
import 'package:image_chandru/intagreation_.dart';

import 'display_image.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
  var selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MSD Image',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              child: PageView.builder(
                  itemCount: appDataImage.length,
                  itemBuilder: (context, index) {
                    return Displayimage(appDataImage: appDataImage[index]);
                  }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  appDataImage.length,
                  (index) => Intagaration(
                      isActive: selectIndex == index ? true : false))
            ],
          )
        ],
      ),
    );
  }
}
