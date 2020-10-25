import 'package:flutter/material.dart';

class SongNameAndButtomPlayer extends StatefulWidget {
  const SongNameAndButtomPlayer({Key key}) : super(key: key);

  @override
  _SongNameAndButtomPlayerState createState() =>
      _SongNameAndButtomPlayerState();
}

class _SongNameAndButtomPlayerState extends State<SongNameAndButtomPlayer>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  AnimationController playAnimation;

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
                if (this.isPlaying) {
                  this.playAnimation.reverse();
                  this.isPlaying = false;
                } else {
                  this.playAnimation.forward();
                  this.isPlaying = true;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
