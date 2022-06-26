import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My App')),
      drawer: Drawer(
          backgroundColor: Colors.grey,
          child: ListView(
            children: <Widget>[
              ListTile(
                  title: const Text('Import'),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/myIntroductionScreen',
                    );
                  }),
              ListTile(title: const Text('Gallery'), onTap: () {})
            ],
          )),
    );
  }
}
