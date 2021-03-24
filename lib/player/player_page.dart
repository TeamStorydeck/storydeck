import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);
  static String get path => '/player';

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
        centerTitle: true,
        titleTextStyle: _theme.textTheme.subtitle2,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CoverImageWidget(),
          MetadataWidget(),
          SeekbarWidget(),
          ControllWidget(),
        ],
        // .map(
        //   (element) => Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     mainAxisSize: MainAxisSize.max,
        //     children: [element],
        //   ),
        // )
        // .toList(),
      ),
    );
  }
}

class ControllWidget extends StatelessWidget {
  const ControllWidget({
    Key? key,
  }) : super(key: key);

  static List<double> get sizes => [62, 36, 28];

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: Icon(Icons.download_rounded),
          iconSize: sizes[2],
          onPressed: () => null,
        ),
        IconButton(
          icon: Icon(Icons.fast_rewind_rounded),
          iconSize: sizes[1],
          onPressed: () => null,
        ),
        IconButton(
          icon: Icon(Icons.play_circle_filled_rounded),
          iconSize: sizes[0],
          color: _theme.primaryColorDark,
          onPressed: () => null,
        ),
        IconButton(
          icon: Icon(Icons.fast_forward_rounded),
          iconSize: sizes[1],
          onPressed: () => null,
        ),
        IconButton(
          icon: Icon(Icons.bookmark_rounded),
          iconSize: sizes[2],
          onPressed: () => null,
        ),
      ],
    );
  }
}

class SeekbarWidget extends StatelessWidget {
  const SeekbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Slider(
            value: 0.3,
            onChanged: (_) => null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("02:56", style: _theme.textTheme.bodyText2),
                Text("01:03:40", style: _theme.textTheme.bodyText2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MetadataWidget extends StatelessWidget {
  const MetadataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Audiobook Title',
            style: _theme.textTheme.subtitle1,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Audiobook Channel Name',
            style: _theme.textTheme.subtitle2,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class CoverImageWidget extends StatelessWidget {
  const CoverImageWidget({
    Key? key,
  }) : super(key: key);

  static double get dimension => 180;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'cover_image',
      child: Container(
        height: dimension,
        width: dimension,
        color: Colors.blueGrey,
      ),
    );
  }
}
