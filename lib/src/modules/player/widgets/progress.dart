import 'package:flutter/material.dart';

import 'package:music_player/src/data/models/audio_player_model.dart';
import 'package:provider/provider.dart';

class Progress extends StatelessWidget {
  const Progress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white.withOpacity(0.4),
    );

    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);
    final percentage = audioPlayerModel.percentage;

    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              '${audioPlayerModel.songTotalDuration}',
              style: textStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 3,
                  height: 230,
                  color: Colors.white.withOpacity(0.1),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 3,
                    height: 230 * percentage,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${audioPlayerModel.songCurrentDuration}',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
