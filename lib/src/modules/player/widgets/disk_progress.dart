import 'package:flutter/material.dart';
import 'package:music_player/src/modules/player/widgets/disk.dart';
import 'package:music_player/src/modules/player/widgets/progress.dart';

class DiskAndProgress extends StatelessWidget {
  const DiskAndProgress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 100),
      child: Container(
        child: Row(
          children: <Widget>[
            Disk(),
            SizedBox(
              width: 40,
            ),
            Progress(),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
