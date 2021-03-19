import 'package:flutter/material.dart';
import 'package:storydeck/views/home/common.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            icon: Icon(Icons.search),
            onPressed: () => null,
          ),
          title: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
            ),
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          centerTitle: true,
          actions: [TopBarActionButton()],
        ),
        SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.sticky_note_2_rounded,
                  size: 65,
                ),
                SizedBox(height: 5),
                Text("Your search history will appear here"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
