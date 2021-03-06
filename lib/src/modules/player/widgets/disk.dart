import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:music_player/src/data/models/audio_player_model.dart';
import 'package:provider/provider.dart';

class Disk extends StatelessWidget {
  const Disk({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final audioPlayerModel = Provider.of<AudioPlayerModel>(context);

    return Container(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 250,
        height: 250,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SpinPerfect(
                  duration: Duration(milliseconds: 5000),
                  infinite: true,
                  manualTrigger: true,
                  controller: (animationController) =>
                      audioPlayerModel.controller = animationController,
                  child: Image(
                    image: AssetImage('assets/coldplay.png'),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black38,
                  ),
                ),
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff1C1C25),
                  ),
                )
              ],
            )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: LinearGradient(begin: Alignment.topLeft, colors: <Color>[
            Color(0xff484750),
            Color(0xff1E1C24),
          ]),
        ),
      ),
    );
  }
}
