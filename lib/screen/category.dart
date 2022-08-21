import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,childAspectRatio: 240/250,crossAxisSpacing: 10,mainAxisSpacing: 10,),
    );
  }
}
