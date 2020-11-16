import 'package:code_little_stars/util/titlecard.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


class TitleAppCard extends StatelessWidget {
  const TitleAppCard({
    Key key,
    @required this.appCardTitle,
    this.appCardColor = primaryColor,
  }) : super(key: key);

  final String appCardTitle;
  final Color appCardColor;

  @override
  Widget build(BuildContext context) {
    return TitleCard(
      cardRadius: cardRadius,
      cardColor: appCardColor,
      cardChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Center(
              child: Text(
            appCardTitle,
            style: buildTeluguFontStyle(context),
          )),
          Container(width: 32.0, height: 0.0),
        ],
      ),
    );
  }
}