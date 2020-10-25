import 'package:flutter/material.dart';

import 'package:music_player/src/theme/theme.dart';
import 'package:music_player/src/modules/player/music_player_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: musicTheme,
        debugShowCheckedModeBanner: false,
        home: MusicPlayerPage());
  }
}
