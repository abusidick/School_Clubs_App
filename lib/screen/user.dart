import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            ListTile(
              title: Text(
                'Address',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              leading: Icon(IconlyBold.location),
              trailing: Icon(IconlyLight.arrowRight2),
            ),
          ],
        ),
      ),
    );
  }
}
