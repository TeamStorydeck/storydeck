import 'package:flutter/material.dart';
import 'package:storydeck/views/home/common.dart';

class MyDeck extends StatelessWidget {
  const MyDeck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("My Deck"),
          actions: [TopBarActionButton()],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            ListBody(
              children: [
                Container(
                  // height: 160,
                  color: Theme.of(context).backgroundColor.withOpacity(0.15),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _buildPersonAvater(context),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Login to your Stroydeck account"),
                                Text(
                                  "Sync my list, likes and history",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: () => null,
                          child: Text("Log In"),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 5),
                ),
              ],
            ),
            ListBody(
              children: [
                ListTile(
                  title: Text("My List"),
                  subtitle: Text("No Audiobooks"),
                  leading: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.playlist_play,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Likes"),
                  subtitle: Text("No Audiobooks"),
                  leading: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("Downloads"),
                  subtitle: Text("No Audiobooks"),
                  leading: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.file_download,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("History"),
                  subtitle: Text("No Audiobooks"),
                  leading: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.history,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }

  Container _buildPersonAvater(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(10),
      child: Icon(
        Icons.person,
        color: Colors.white,
      ),
    );
  }
}
