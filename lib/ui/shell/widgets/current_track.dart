import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_desktop_demo/data/data.dart';
import 'package:spotify_desktop_demo/data/model/current_track_model.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: const [
            _TrackInfo(),
            Spacer(),
            _PlayerControls(),
            Spacer(),
            _MoreControls(),
          ],
        ),
      ),
    );
  }
}

class _TrackInfo extends StatelessWidget {
  const _TrackInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Song? currentSong = context.watch<CurrentTrackModel>().currentSong;
    if (currentSong == null) return const SizedBox.shrink();

    return Row(
      children: [
        Image.asset(
          'assets/images/lofigirl.jpg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              currentSong.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 4.0),
            Text(
              currentSong.artist,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
        const SizedBox(width: 12.0),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}

class _PlayerControls extends StatelessWidget {
  const _PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Song? currentSong = context.watch<CurrentTrackModel>().currentSong;
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.shuffle),
              iconSize: 20.0,
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.skip_previous_outlined),
              iconSize: 20.0,
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.play_circle_outline),
              iconSize: 34.0,
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.skip_next_outlined),
              iconSize: 20.0,
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              onPressed: () {},
              icon: const Icon(Icons.repeat),
              iconSize: 20.0,
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          children: <Widget>[
            Text(
              "0:00",
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(width: 8.0),
            Container(
              height: 4.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              currentSong?.duration ?? "0:00",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  const _MoreControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.devices_outlined),
          iconSize: 20.0,
        ),
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up_outlined),
            ),
            Container(
              height: 4.0,
              width: 70.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.fullscreen_outlined),
        ),
      ],
    );
  }
}
