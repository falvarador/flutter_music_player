import 'package:flutter/material.dart';

import 'package:music_player/src/widgets/custom_appbar.dart';
import 'package:music_player/src/modules/player/widgets/disk_progress.dart';
import 'package:music_player/src/modules/player/widgets/lyrics.dart';
import 'package:music_player/src/modules/player/widgets/song_name_player.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Background(),
            Column(
              children: <Widget>[
                CustomAppBar(),
                DiskAndProgress(),
                SongNameAndButtomPlayer(),
                Expanded(
                  child: Lyrics(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: screenSize.height * 0.70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.center,
              colors: [
                Color(0xff33333E),
                Color(0xff201E28),
              ])),
    );
  }
}
