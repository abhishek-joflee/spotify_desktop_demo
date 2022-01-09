import 'package:flutter/foundation.dart';

import '../data.dart';

class CurrentTrackModel extends ChangeNotifier {
  Song? currentSong;

  void selectTrack(Song s) {
    currentSong = s;
    notifyListeners();
  }
}
