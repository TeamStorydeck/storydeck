import 'package:flutter/material.dart';
import 'package:storydeck/setting/setting_page.dart';

enum PopupTarget { SETTING, PRIVACY_POLICY, FEEDBACK }

class TopBarActionButton extends StatelessWidget {
  const TopBarActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (PopupTarget value) {
        switch (value) {
          case PopupTarget.SETTING:
            Navigator.pushNamed(context, SettingPage.path);
            break;
          case PopupTarget.PRIVACY_POLICY:
            // TODO: Handle this case.
            break;
          case PopupTarget.FEEDBACK:
            // TODO: Handle this case.
            break;
        }
      },
      itemBuilder: (context) => <PopupMenuEntry<PopupTarget>>[
        PopupMenuItem(
          child: Text("Setting"),
          value: PopupTarget.SETTING,
        ),
        PopupMenuItem(
          child: Text("Privacy Policy"),
          value: PopupTarget.PRIVACY_POLICY,
        ),
        PopupMenuItem(
          child: Text("Feedback"),
          value: PopupTarget.FEEDBACK,
        ),
      ],
    );
  }
}
