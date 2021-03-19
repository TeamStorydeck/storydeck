import 'package:flutter/material.dart';
import 'package:storydeck/views/home/explore.dart';
import 'package:storydeck/views/home/my_deck.dart';
import 'package:storydeck/views/home/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final pages = <Widget>[
  Explore(),
  Search(),
  MyDeck(),
];

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
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: setActiveTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Search",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.multitrack_audio_rounded),
          //   label: "Podcast",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "My Deck",
          ),
        ],
      ),
    );
  }
}
