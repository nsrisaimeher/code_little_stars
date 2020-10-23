import 'package:flutter/material.dart';
import 'constants.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key key,
    @required this.cardRadius,
    @required this.cardChild,
  }) : super(key: key);

  final Radius cardRadius;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.only(bottomRight: cardRadius, bottomLeft: cardRadius),
        color: primaryColor,
      ),
      child: cardChild,
    );
  }
}