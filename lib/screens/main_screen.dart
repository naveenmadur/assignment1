import 'package:flutter/material.dart';
import 'package:music_player_final/screens/song_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Trending Songs',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.left,
        ),
        centerTitle: false,
      ),
      body: const SongList(),
    );
  }
}
