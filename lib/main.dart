import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:music_player/src/theme/theme.dart';
import 'package:music_player/src/modules/player/music_player_page.dart';

import 'package:music_player/src/data/models/audio_player_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (provider) => new AudioPlayerModel(),
        )
      ],
      child: MaterialApp(
          title: 'Material App',
          theme: musicTheme,
          debugShowCheckedModeBanner: false,
          home: MusicPlayerPage()),
    );
  }
}
