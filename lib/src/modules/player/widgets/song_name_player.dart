import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:music_player/src/data/models/audio_player_model.dart';

class SongNameAndButtomPlayer extends StatefulWidget {
  const SongNameAndButtomPlayer({Key key}) : super(key: key);

  @override
  _SongNameAndButtomPlayerState createState() =>
      _SongNameAndButtomPlayerState();
}

class _SongNameAndButtomPlayerState extends State<SongNameAndButtomPlayer>
    with SingleTickerProviderStateMixin {
  bool firsTime = true;
  bool isPlaying = false;
  AnimationController playAnimation;

  final assetAudioPlayer = new AssetsAudioPlayer();

  @override
  void initState() {
    playAnimation = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    super.initState();
  }

  @override
  void dispose() {
    this.playAnimation.dispose();

    super.dispose();
  }

  void open() {
    final audioPlayerModel =
        Provider.of<AudioPlayerModel>(context, listen: false);

    assetAudioPlayer.open(
      Audio('assets/coldplay-magic.mp3'),
    );

    assetAudioPlayer.currentPosition.listen((duration) {
      audioPlayerModel.currentPosition = duration;
    });

    assetAudioPlayer.current.listen((playingAudio) {
      audioPlayerModel.songDuration = playAnimation.duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        margin: EdgeInsets.only(top: 40),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Magic',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                Text(
                  '-Coldplay-',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Spacer(),
            FloatingActionButton(
              elevation: 0,
              highlightElevation: 0,
              backgroundColor: Color(0xffF8CB51),
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: playAnimation,
              ),
              onPressed: () {
                final audioPlayerModel =
                    Provider.of<AudioPlayerModel>(context, listen: false);

                if (this.isPlaying) {
                  this.playAnimation.reverse();
                  this.isPlaying = false;
                  audioPlayerModel.controller.stop();
                } else {
                  this.playAnimation.forward();
                  this.isPlaying = true;
                  audioPlayerModel.controller.repeat();
                }

                if (this.firsTime) {
                  this.open();
                  this.firsTime = false;
                } else {
                  assetAudioPlayer.playOrPause();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
