import 'package:flutter/material.dart';
import 'package:storydeck/views/home/explore.dart';
import 'package:storydeck/views/home/my_deck.dart';
import 'package:storydeck/views/home/search.dart';

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
    child: Explore(),
  ),
  Page(
    label: "Explore",
    icon: Icons.explore_rounded,
    child: Search(),
  ),
  Page(
    label: "My Deck",
    icon: Icons.bookmark_outline_rounded,
    child: MyDeck(),
  ),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: setActiveTab,
        items: pages
            .map((page) => BottomNavigationBarItem(
                  label: page.label,
                  icon: Icon(page.icon),
                ))
            .toList(),
      ),
    );
  }
}
