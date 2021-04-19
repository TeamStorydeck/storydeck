// import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:storydeck/home/search_page.dart';
import 'package:storydeck/home/explore_page.dart';
import 'package:storydeck/home/my_deck_page.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          ExplorePage(),
          SearchPage(),
          Container(),
          MyDeckPage(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.explore_rounded),
            title: Text("Explore"),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search_rounded),
            title: Text("Search"),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.cloud_download_rounded),
            title: Text("Downloads"),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_rounded),
            title: Text("My Deck"),
          ),
        ],
        onItemSelected: _onTabChanged,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        curve: Curves.easeInOut,
        // containerHeight: 48,
        itemCornerRadius: 10, showElevation: true,
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);
  }

  void _onTabChanged(int index) {
    setState(() => _currentIndex = index);
    _pageController.jumpToPage(index);
  }
}


/* class _HomePageState extends State<HomePage> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens,
      items: _buildNavbarItems,
      navBarStyle: NavBarStyle.style9,
      backgroundColor: theme.scaffoldBackgroundColor,
      navBarHeight: 64,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: theme.shadowColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }

  List<Widget> get _buildScreens {
    return [
      ExplorePage(),
      SearchPage(),
      Container(),
      MyDeckPage(),
    ];
  }

  List<PersistentBottomNavBarItem> get _buildNavbarItems {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.explore_rounded),
        title: 'Explore',
        // activeColorPrimary: Colors.deepPurple,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search_rounded),
        title: 'Search',
        // activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.cloud_download_rounded),
        title: 'Downloads',
        // activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_rounded),
        title: 'My Deck',
        // activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
 */
