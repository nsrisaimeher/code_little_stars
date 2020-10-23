
import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:flutter/material.dart';
import '../util/titlecard.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  final Radius cardRadius = Radius.circular(50);
  int _colorIndex = 0;
  List<Color> optionColors = [
    primaryColor,
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.orange,
    Colors.red
  ];

  int getNextColorIndex() {
    if (_colorIndex >= optionColors.length - 1) {
      _colorIndex = 0;
    } else {
      _colorIndex++;
    }
    return _colorIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TitleCard(
            cardRadius: cardRadius,
            cardChild: Center(
                child: Text(
              'బుల్లి తారలు',
              style: buildTeluguFontStyle(context),
              
            )),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Expanded(
            flex: 2,
            child: Container(
                child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 12,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                OptionCard(
                  optionText: 'వర్ణమాల',
                  widgetColor: optionColors[0], imagePath: 'assets/alphabet.png',
                ),
                OptionCard(
                  optionText: 'పక్షులు',
                  widgetColor: optionColors[getNextColorIndex()], imagePath: 'assets/birds.png',
                ),
                OptionCard(
                  optionText: 'జంతువులు',
                  widgetColor: optionColors[getNextColorIndex()], imagePath: 'assets/animals.png',
                ),
                OptionCard(
                  optionText: 'ఫలాలు',
                  widgetColor: optionColors[getNextColorIndex()], imagePath: 'assets/fruits.png',
                ),
                OptionCard(
                  optionText: 'పుష్పాలు',
                  widgetColor: optionColors[getNextColorIndex()], imagePath: 'assets/flowers.png',
                ),
                OptionCard(
                  optionText: 'కూరగాయలు',
                  widgetColor: optionColors[getNextColorIndex()], imagePath: 'assets/veggies.png',
                ),
              ],
            )))
      ],
    );
  }

  TextStyle buildTeluguFontStyle(BuildContext context) => GoogleFonts.ramaraja(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline3
              );
}

