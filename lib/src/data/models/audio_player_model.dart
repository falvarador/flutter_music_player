import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;
  Duration _songDuration = new Duration(milliseconds: 0);
  Duration _currentDuration = new Duration(milliseconds: 0);

  AnimationController _animationController;

  set controller(AnimationController controller) {
    this._animationController = controller;
  }

  AnimationController get controller => this._animationController;

  String get songTotalDuration => this.getSongDuration(_songDuration);
  String get songCurrentDuration => this.getSongDuration(_currentDuration);

  double get percentage => (this._songDuration.inSeconds > 0)
      ? this._currentDuration.inSeconds / this._songDuration.inSeconds
      : 0;

  bool get playing => this._playing;
  set playing(bool value) {
    this._playing = value;
    notifyListeners();
  }

  Duration get songDuration => this._songDuration;
  set songDuration(Duration value) {
    this._songDuration = value;
    notifyListeners();
  }

  Duration get currentPosition => this._currentDuration;
  set currentPosition(Duration value) {
    this._currentDuration = value;
    notifyListeners();
  }

  String getSongDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) {
        return "$n";
      }
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
