import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  final String songName;
  const Player({Key? key, required this.songName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Music Player',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.left,
        ),
      ),
      body: Center(
        child: Text('$songName is playing' ,style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w400
        ),),
      ),
    );
  }
}
