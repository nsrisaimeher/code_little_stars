import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:flutter/material.dart';
import '../util/titlecard.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  int _colorIndex = 0;

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: TitleCard(
                cardRadius: cardRadius,
                cardChild: Center(
                    child: Text(
                  'తెలుగు కిడ్స్ ఆప్',
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
                child: GlowingOverscrollIndicator(
                  axisDirection: AxisDirection.down,
                  color: Color(0XFFb67bff),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/varnamala');
                        },
                        child: OptionCard(
                          optionText: 'వర్ణమాల',
                          widgetColor: optionColors[0],
                          imagePath: 'assets/alphabet.png',
                          isCircleImage: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/birds');
                        },
                        child: OptionCard(
                          optionText: 'పక్షులు',
                          widgetColor: optionColors[getNextColorIndex()],
                          imagePath: 'assets/birds.png',
                          isCircleImage: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/animals');
                        },
                        child: OptionCard(
                          optionText: 'జంతువులు',
                          widgetColor: optionColors[getNextColorIndex()],
                          imagePath: 'assets/animals.png',
                          isCircleImage: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/fruits');
                        },
                        child: OptionCard(
                          optionText: 'ఫలాలు',
                          widgetColor: optionColors[getNextColorIndex()],
                          imagePath: 'assets/fruits.png',
                          isCircleImage: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/flowers');
                        },
                        child: OptionCard(
                          optionText: 'పుష్పాలు',
                          widgetColor: optionColors[getNextColorIndex()],
                          imagePath: 'assets/flowers.png',
                          isCircleImage: true,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/veggies');
                        },
                        child: OptionCard(
                          optionText: 'కూరగాయలు',
                          widgetColor: optionColors[getNextColorIndex()],
                          imagePath: 'assets/veggies.png',
                          isCircleImage: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle buildTeluguFontStyle(BuildContext context) => GoogleFonts.ramaraja(
      color: Colors.white, textStyle: Theme.of(context).textTheme.headline3);
}
