import 'package:flutter/material.dart';
import 'package:helloworld/widgets/text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget(
      {Key? key,
      required this.catText,
      required this.imgPath,
      this.color = const Color(0xffB7DFF5)})
      : super(key: key);
  String catText, imgPath;
  Color color = Color(0xffB7DFF5);
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: color.withOpacity(0.7),
              width: 2,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: _screenWidth * 0.35,
              width: _screenWidth * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imgPath,
                      ),
                      fit: BoxFit.fill)),
            ),
            TextWidget(
              text: catText,
              color: Colors.black,
              textSize: 20,
              isTitle: true,
            )
          ],
        ),
      ),
    );
  }
}
