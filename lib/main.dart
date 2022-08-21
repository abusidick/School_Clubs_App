import 'package:flutter/material.dart';
import 'package:helloworld/screen/home.dart';
import 'login_page.dart';
import 'screen/home.dart';
import 'screen/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'WorkSans'),
      // A widget which will be started on application startup
      home: BottomBar(),
    );
  }
}
