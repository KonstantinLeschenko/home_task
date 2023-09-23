class Song {
  final String name;
  final String artist;
  final Duration duration;
  final int yearOfRelease;

  Song(this.name, this.artist, this.duration, this.yearOfRelease);
}

class Playlist {
  final String name;
  final List<Song> songs;

  Playlist(this.name, this.songs);
}

// total duration of songs
extension TotalDuration on List<Song> {
  Duration totalDuration() {
    return map((song) => song.duration).reduce((a, b) => a + b);
  }
}

// search by name or artist
extension Search on Playlist {
  searchByText(String text) {
    return songs
        .where((song) => song.name.contains(text) || song.artist.contains(text))
        .toList();
  }
}

// list of songs
var songs = [
  Song('Shape of You', 'Ed Sheeran', const Duration(seconds: 180), 2017),
  Song('Despacito', 'Luis Fonsi', const Duration(seconds: 180), 2017),
  Song('Perfect', 'Ed Sheeran', const Duration(seconds: 180), 2017),
  Song('Havana', 'Camila Cabello', const Duration(seconds: 180), 2017),
  Song('God Plan', 'Drake', const Duration(seconds: 180), 2018),
  Song('In My Feelings', 'Drake', const Duration(seconds: 180), 2018),
  Song('Girls Like You', 'Maroon 5', const Duration(seconds: 254), 2018),
  Song('Taki Taki', 'DJ Snake', const Duration(seconds: 180), 2018),
];

// output of the playlist in a formatted form
void printPlaylist(Playlist playlist) {
  int dMinutes, dSeconds = 0;
  int totalDuration = playlist.songs.totalDuration().inSeconds;

  dMinutes = totalDuration ~/ 60;
  dSeconds = totalDuration - dMinutes * 60;

  print('***');
  print('Playlist: ${playlist.name}');
  for (int i = 0; i < playlist.songs.length; i++) {
    print(
        '${playlist.songs[i].name}, ${playlist.songs[i].artist}, ${playlist.songs[i].duration.inSeconds ~/ 60}min.${playlist.songs[i].duration.inSeconds - playlist.songs[i].duration.inMinutes * 60}sec., ${playlist.songs[i].yearOfRelease}');
  }
  print('Total Duration: $dMinutes min. $dSeconds sec.');
  print('***');
}

// output filtered playlist
void printFilteredPlatlist(Playlist playlist, String condition) {
  List<Song> filterdPlaylist = playlist.searchByText(condition);
  int filterdPlaylistDuration = 0;
  int durationMinutes, durationSeconds = 0;
  for (int i = 0; i < filterdPlaylist.length; i++) {
    filterdPlaylistDuration += filterdPlaylist[i].duration.inSeconds;
  }
  durationMinutes = filterdPlaylistDuration ~/ 60;
  durationSeconds = filterdPlaylistDuration - durationMinutes * 60;

  print('***');
  print('Filterd Playlist by condition <<$condition>>');
  for (int i = 0; i < filterdPlaylist.length; i++) {
    print(
        '${filterdPlaylist[i].name}, ${filterdPlaylist[i].artist}, ${filterdPlaylist[i].duration}, ${filterdPlaylist[i].yearOfRelease}');
  }
  print(
      'Filtered Playlist Duration is $durationMinutes min. $durationSeconds sec.');
  print('***');
}

void main() {
  Playlist playlist = Playlist('playlist1', songs);

  printPlaylist(playlist);

  printFilteredPlatlist(playlist, 'You');
}
