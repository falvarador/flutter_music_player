import 'package:flutter/material.dart';
import 'package:music_player/src/helpers/helpers.dart';

class Lyrics extends StatelessWidget {
  const Lyrics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();

    return Container(
      child: Container(
        child: ListWheelScrollView(
          physics: BouncingScrollPhysics(),
          itemExtent: 42,
          diameterRatio: 1.5,
          children: lyrics
              .map(
                (verse) => Text(
                  verse,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
