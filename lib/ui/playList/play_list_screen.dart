import 'package:flutter/material.dart';

import 'package:spotify_desktop_demo/data/data.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  _PlayListScreenState createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayList'),
      ),
      body: Container(),
    );
  }
}
