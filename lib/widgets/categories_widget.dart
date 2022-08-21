import 'package:flutter/material.dart';
import 'package:helloworld/widgets/text_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.red.withOpacity(0.7),
              width: 2,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: _screenWidth * 0.35,
              width: _screenWidth * 0.4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/People.jpg',
                      ),
                      fit: BoxFit.fill)),
            ),
            TextWidget(
              text: 'Educational',
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
