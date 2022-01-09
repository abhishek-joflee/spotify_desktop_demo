import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../playList/play_list_screen.dart';
import 'widgets/current_track.dart';
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
              children: <Widget>[
                // side menu
                if (MediaQuery.of(context).size.width > 700) const SideMenu(),
                // playlist screen
                const Expanded(
                  child: PlayListScreen(
                    playlist: lofihiphopPlaylist,
                  ),
                ),
              ],
            ),
          ),
          // bottom bar
          const CurrentTrack(),
        ],
      ),
    );
  }
}
