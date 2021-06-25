import 'package:code_little_stars/util/constants.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:flutter/material.dart';
import 'package:new_version/new_version.dart';
import '../util/titlecard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _colorIndex = 0;

  int getNextColorIndex() {
    if (_colorIndex >= optionColors.length - 1) {
      _colorIndex = 0;
    } else {
      _colorIndex++;
    }
    return _colorIndex;
  }

  void _checkVersion() {
    final newVersion = NewVersion(
      context: context,
      androidId: 'com.code_little_stars.telugukidsapp',
      dialogText: 'Don\'t miss out on some great new features🤩🥳👌 '
      );
    newVersion.showAlertIfNecessary();

  }

  @override
  void initState() {
    super.initState();
    _checkVersion();
      }
    
      @override
      Widget build(BuildContext context) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Container(width: 32.0, height: 0.0),
                Expanded(
                  child: TitleCard(
                    cardRadius: cardRadius,
                    cardChild: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Center(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                          'తెలుగు కిడ్స్ ఆప్',
                          style: buildTeluguFontStyle(context),
                        ),
                            ),
                        ),
                         IconButton(
                           icon: Icon(
                             Icons.share_rounded,
                          color: Colors.white,
                          size: 30,
                          ), 
                          onPressed: () {
                            Share.share('''
    Hey! I think you\'ll enjoy Telugu Kids Learning App, a free, lightweight way to study and learn telugu. 
    మీ పిల్లలు👶 ఇంత త్వరగా తెలుగు నేర్చుకోవడం📖 చూసి కచ్చితంగా ఆశ్చర్య పడతారు😲😲😲...
    : https://play.google.com/store/apps/details?id=com.code_little_stars.telugukidsapp''', subject: 'Telugu for Kids!');
                           },
                        ),
                      ],
                    ),
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
                              imagePath: 'assets/alphabet.webp',
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
                              imagePath: 'assets/birds.webp',
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
                              imagePath: 'assets/animals.webp',
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
                              imagePath: 'assets/fruits.webp',
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
                              imagePath: 'assets/flowers.webp',
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
                              imagePath: 'assets/veggies.webp',
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
