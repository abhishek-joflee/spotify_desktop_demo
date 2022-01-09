import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/data.dart';
import '../../../data/model/current_track_model.dart';

class TracksList extends StatelessWidget {
  const TracksList({
    Key? key,
    required this.tracks,
  }) : super(key: key);

  final List<Song> tracks;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showCheckboxColumn: false,
      columns: const [
        DataColumn(label: Text("TITLE")),
        DataColumn(label: Text("ARTIST")),
        DataColumn(label: Text("ALBUM")),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map(
        (song) {
          bool isSelected =
              context.watch<CurrentTrackModel>().currentSong?.id == song.id;
          TextStyle txtStyle = TextStyle(
            color: isSelected
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).iconTheme.color,
          );
          return DataRow(
            selected: isSelected,
            onSelectChanged: (value) =>
                context.read<CurrentTrackModel>().selectTrack(song),
            cells: [
              DataCell(
                Text(song.title, style: txtStyle),
              ),
              DataCell(
                Text(song.artist, style: txtStyle),
              ),
              DataCell(
                Text(song.album, style: txtStyle),
              ),
              DataCell(
                Text(song.duration, style: txtStyle),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
