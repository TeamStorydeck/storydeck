import 'package:flutter/material.dart';
import 'package:storydeck/home/widgets/popupmenu.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 30),
              SizedBox(width: 10),
              Text(
                "Storydeck",
                style: theme.textTheme.headline5
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_outlined),
              onPressed: () => null,
              // color: theme.colorScheme.onPrimary,
            ),
            TopBarActionButton(),
          ],
          pinned: true,
        ),
        /* SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Cover image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://picsum.photos/200',
                        height: 56,
                        width: 56,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(width: 5),
                    // Title & Subtitle
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Story Title",
                          style: theme.primaryTextTheme.subtitle1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Author Name | Channel Name",
                          style: theme.primaryTextTheme.subtitle2?.copyWith(
                              color: theme.primaryTextTheme.subtitle2?.color
                                  ?.withOpacity(0.85)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            print(constraints.biggest);
                            return Container();
                          },
                        )
                        // SizedBox(height: 5),
                        // LinearProgressIndicator(minHeight: 2),
                      ],
                    ),
                  ],
                ),
                Row(),
              ],
            ),
          ),
        ), */
      ],
    );
  }
}
