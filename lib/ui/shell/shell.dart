import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../playList/play_list_screen.dart';
import 'widgets/side_menu.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                // side menu
                SideMenu(),
                // playlist screen
                Expanded(
                  child: PlayListScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          // bottom bar
          Container(
            height: 84,
            width: double.infinity,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
