import 'package:flutter/material.dart';
import 'package:spotify_desktop_demo/ui/shell/widgets/side_menu.dart';

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
