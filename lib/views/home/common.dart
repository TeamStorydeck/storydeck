import 'package:flutter/material.dart';

class TopBarActionButton extends StatelessWidget {
  const TopBarActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => <PopupMenuEntry<int>>[
        PopupMenuItem(
          child: Text("Settings"),
          value: 1,
        ),
        PopupMenuItem(
          child: Text("Privacy Policy"),
          value: 2,
        ),
        PopupMenuItem(
          child: Text("Feedback"),
          value: 3,
        ),
        PopupMenuItem(
          child: Text("Sign In"),
          value: 4,
        ),
      ],
    );
  }
}
