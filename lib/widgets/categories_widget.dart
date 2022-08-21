import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.red.withOpacity(0.7),
            width: 2,
          )),
      child: Column(
        children: [
          Container(
            height: _screenWidth * 0.3,
            width: _screenWidth * 0.3,
            decoration: const BoxDecoration(
                image:  DecorationImage(image: AssetImage('image/people.jpg'),fit: BoxFit.fill)),
          ),
        ],
      ),
    );
  }
}
