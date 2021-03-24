import 'package:flutter/material.dart';

class MediaControlls extends StatelessWidget {
  const MediaControlls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      color: _theme.colorScheme.surface,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Cover art
          Hero(
            tag: 'cover_image',
            child: Container(
              height: 45,
              width: 45,
              color: Colors.blueGrey,
            ),
          ),
          // Title and Subtitle
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title', style: _theme.textTheme.subtitle1),
                  Text('Subtitle', style: _theme.textTheme.subtitle2),
                ],
              ),
            ),
          ),
          // Controll buttons
          Row(
            children: [
              IconButton(
                /* icon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.grey.shade300,
                        ),
                      ],
                      color: _theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(2)),
                  child: Icon(Icons.play_arrow),
                ), */
                icon: Icon(Icons.play_arrow),
                iconSize: 30,
                onPressed: () => null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
