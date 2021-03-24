import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:storydeck/home/search_page.dart';
import 'package:storydeck/home/explore_page.dart';
import 'package:storydeck/home/my_deck_page.dart';
import 'package:storydeck/home/widgets/mediacontrolls.dart';
import 'package:storydeck/player/player_page.dart';

class Page {
  Page({
    @required this.label,
    @required this.icon,
    @required this.child,
  });

  final String? label;
  final IconData? icon;
  final Widget? child;
}

final pages = <Page>[
  Page(
    label: "Home",
    icon: Icons.home_rounded,
    child: ExplorePage(),
  ),
  Page(
    label: "Explore",
    icon: Icons.explore_rounded,
    child: SearchPage(),
  ),
  Page(
    label: "My Deck",
    icon: Icons.bookmark_rounded,
    child: MyDeckPage(),
  ),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex;

  void setActiveTab(int idx) {
    setState(() => _currentIndex = idx);
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex].child,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OpenContainer(
            closedBuilder: (context, action) => MediaControlls(),
            openBuilder: (context, action) => PlayerPage(),
          ),
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: setActiveTab,
            items: pages
                .map((page) => BottomNavigationBarItem(
                      label: page.label,
                      icon: Icon(page.icon),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
