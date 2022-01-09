import 'package:flutter/material.dart';
import 'package:spotify_desktop_demo/data/data.dart';

class PlayListButtons extends StatelessWidget {
  const PlayListButtons({
    Key? key,
    required this.followers,
  }) : super(key: key);

  final String followers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text("PLAY"),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 48.0,
            ),
            primary: Theme.of(context).iconTheme.color,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            textStyle: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontSize: 12.0, letterSpacing: 2.0),
          ),
        ),
        const SizedBox(width: 8.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
          iconSize: 30.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
          iconSize: 30.0,
        ),
        const Spacer(),
        Text(
          "Followers\n$followers",
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.overline!.copyWith(
                fontSize: 12.0,
              ),
        )
      ],
    );
  }
}
