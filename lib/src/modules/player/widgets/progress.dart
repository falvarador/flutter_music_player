import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white.withOpacity(0.4),
    );

    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              '00:00',
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
                    height: 30,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '00:00',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
