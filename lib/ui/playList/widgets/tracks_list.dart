import 'package:flutter/material.dart';

import 'package:spotify_desktop_demo/data/data.dart';

class TracksList extends StatelessWidget {
  const TracksList({
    Key? key,
    required this.tracks,
  }) : super(key: key);

  final List<Song> tracks;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("TITLE")),
        DataColumn(label: Text("ARTIST")),
        DataColumn(label: Text("ALBUM")),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks
          .map(
            (song) => DataRow(
              cells: [
                DataCell(
                  Text(
                    song.title,
                    style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    song.artist,
                    style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    song.album,
                    style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    song.duration,
                    style: TextStyle(
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
