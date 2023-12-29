import 'package:flutter/cupertino.dart';
import 'package:image_chandru/appdata_image.dart';

class Displayimage extends StatelessWidget {
final AppDataImage appDataImage;
  const Displayimage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1),

decoration: BoxDecoration(
borderRadius: BorderRadius.circular(25),
image: DecorationImage(image: AssetImage(appDataImage.image),
fit: BoxFit.cover
)
),
    );
  }
}
