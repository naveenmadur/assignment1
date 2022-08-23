import 'package:flutter/material.dart';
import 'package:music_player_final/widgets/song_tile.dart';
import 'package:music_player_final/classes/songlist_class.dart';
class SongList extends StatefulWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:const EdgeInsets.all(10.0),
      itemCount: 10,
      itemBuilder: (context, index){
        return Column(
          children: [
            SongTile(song: songList[index]),
            const Divider(thickness: 2.0,),
          ],
        );
      },
    );
  }//hhj
}
