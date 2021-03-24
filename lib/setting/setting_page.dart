import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  static String get path => '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: [
          ThemeTile(),
        ],
      ),
    );
  }
}

class ThemeTile extends StatelessWidget {
  const ThemeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Theme'),
      subtitle: Text(''),
    );
  }
}
