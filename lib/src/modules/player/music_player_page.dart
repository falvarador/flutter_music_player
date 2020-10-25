import 'package:flutter/material.dart';
import 'package:music_player/src/modules/player/widgets/disk_progress.dart';
import 'package:music_player/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            Container(
              child: DiskAndProgress(),
            )
          ],
        ),
      ),
    );
  }
}
