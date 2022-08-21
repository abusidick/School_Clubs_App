import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: const TextSpan(
                      text: 'Hi, ',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 27,
                          fontWeight: FontWeight.bold))),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              _listTiles(
                  title: 'Address',
                  icon: IconlyBold.location,
                  onPressed: () {}),
              _listTiles(
                  title: 'Clubs', icon: IconlyBold.user3, onPressed: () {}),
              _listTiles(
                  title: 'Notifications',
                  icon: IconlyBold.notification,
                  onPressed: () {}),
              _listTiles(
                  title: 'Forget Password',
                  icon: IconlyBold.lock,
                  onPressed: () {}),
              _listTiles(
                  title: 'Log Out', icon: IconlyBold.logout, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listTiles({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle == null ? "" : subtitle),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
}
