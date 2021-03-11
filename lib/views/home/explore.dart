import 'package:flutter/material.dart';
import 'package:storydeck/views/home/common.dart';

class Explore extends StatelessWidget {
  const Explore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Storydeck"),
            actions: [TopBarActionButton()],
            bottom: TabBar(
              tabs: [
                Tab(text: 'Newest'),
                Tab(text: 'Trending'),
                Tab(text: 'Most Played'),
              ],
            ),
            pinned: true,
            elevation: 5.0,
            forceElevated: true,
          ),
          SliverFillRemaining(
            child: TabBarView(
              children: [
                _NewestTabView(
                  key: Key('newest'),
                ),
                _TrendingTabView(
                  key: Key('trending'),
                ),
                _MostPlayedTabView(
                  key: Key('most_played'),
                ),
              ],
            ),
            hasScrollBody: true,
            fillOverscroll: true,
          ),
        ],
      ),
    );
  }
}

class _MostPlayedTabView extends StatelessWidget {
  const _MostPlayedTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 15,
      padding: EdgeInsets.all(10),
      childAspectRatio: 16 / 9,
      children: List.generate(
        10,
        (index) => _ListItem(index: index),
      ),
    );
  }
}

class _TrendingTabView extends StatelessWidget {
  const _TrendingTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 15,
      padding: EdgeInsets.all(10),
      childAspectRatio: 16 / 9,
      children: List.generate(
        10,
        (index) => _ListItem(index: index),
      ),
    );
  }
}

class _NewestTabView extends StatelessWidget {
  const _NewestTabView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 15,
      padding: EdgeInsets.all(10),
      childAspectRatio: 16 / 9,
      children: List.generate(
        10,
        (index) => _ListItem(index: index),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://picsum.photos/seed/random$index/800/450",
          ),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors: [Colors.transparent, Colors.grey[200]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black45],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () => null,
                  color: Colors.white,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Channel Name",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Long Story Name",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
