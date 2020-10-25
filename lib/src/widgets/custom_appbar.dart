import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Icon(FontAwesomeIcons.chevronLeft),
          Spacer(),
          Icon(FontAwesomeIcons.commentAlt),
          SizedBox(
            width: 20.0,
          ),
          Icon(FontAwesomeIcons.headphonesAlt),
          SizedBox(
            width: 20.0,
          ),
          Icon(FontAwesomeIcons.externalLinkAlt),
        ],
      ),
    );
  }
}
