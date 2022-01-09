import 'package:flutter/material.dart';

import 'library_playlist.dart';
import 'side_menu_icon_tab.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/spotify_logo1.png",
                  height: 55.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SideMenuIconTab(
            iconData: Icons.home,
            title: "Home",
            onTap: () {
              debugPrint("Home tapped");
            },
          ),
          SideMenuIconTab(
            iconData: Icons.search,
            title: "Search",
            onTap: () {
              debugPrint("Search tapped");
            },
          ),
          SideMenuIconTab(
            iconData: Icons.audiotrack,
            title: "Radio",
            onTap: () {
              debugPrint("Radio tapped");
            },
          ),
          const SizedBox(height: 12.0),
          const LibraryPlayList(),
        ],
      ),
    );
  }
}
