import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_final/classes/songlist_class.dart';
import 'package:music_player_final/classes/songs_class.dart';
import 'package:music_player_final/constants.dart';
import 'package:music_player_final/screens/player.dart';

class SongTile extends StatefulWidget {
  final Song song;
  const SongTile({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  State<SongTile> createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  MaterialAccentColor playButtonColor = inactiveButtonColor;
  MaterialAccentColor textColor = inactiveTextColor;
  String buttonString = inactiveString;
  final player = AudioPlayer();
  void playSong(int i){
    player.play(AssetSource('Song$i.mp3'));
  }
  void pauseSong(){
    player.pause();
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.song.number - 1;

    return ListTile(
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.song.songName,
                style: songNameStyle,
              ),
              whiteGap,
              Text(
                widget.song.artistName,
                style: artistName,
              ),
              whiteGap,
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {
                  if (!widget.song.play) {
                    playSong(index + 1);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Player(
                        songName: widget.song.songName,
                      );
                    }));
                  }
                  else if(widget.song.play){
                    pauseSong();
                  }

                  setState(() {
                    // widget.song.play = !widget.song.play;
                    songList[index].play = !songList[index].play;
                  });
                },
                child: Container(
                  width: buttonContainerWidth,
                  padding: buttonContainerPadding,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: widget.song.play
                          ? activeButtonColor
                          : inactiveButtonColor,
                    ),
                    borderRadius: buttonBorderRadius,
                  ),
                  child: Text(
                    widget.song.play ? activeString : inactiveString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: widget.song.play
                          ? activeTextColor
                          : inactiveTextColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('images/theWeeknd_albumCover.jpeg'),
                    fit: BoxFit.fill),
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)),
            height: 110.0,
            width: 130.0,
          )

        ],
      ),
    );
  }
}
