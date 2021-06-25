import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:code_little_stars/util/titleappcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts_improved/flutter_tts_improved.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {Key key,
      @required this.detailPageTitle,
      @required this.optionList,
      this.optionCardColor = Colors.black})
      : super(key: key);

  final String detailPageTitle;
  final List optionList;
  final Color optionCardColor;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  FlutterTtsImproved _tts;
  String language = 'te-IN';

   @override
  initState() {
    super.initState();
    initTts();
    _speak();
    
    }
    
       initTts() {
        _tts = FlutterTtsImproved();
        _tts.setLanguage(language);
        _tts.setSpeechRate(0.7);
        _tts.setVolume(1.0);
        _tts.setPitch(1.0);
    
      }

      Future<Null> _speak() async {
        await _tts.speak(widget.optionList[0]['optionText']);

      }
    
      @override
      void dispose() {
        super.dispose();
        _tts.stop();
      }
    
      @override
      Widget build(BuildContext context) {
        precacheImage(AssetImage("assets/varnamala/amma.webp"), context);
    
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Expanded(
                  child: TitleAppCard(
                    appCardTitle: widget.detailPageTitle,
                    appCardColor: widget.optionCardColor,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Expanded(
                  flex: 3,
                  child: CarouselSlider(
                  
                    options: CarouselOptions(
                      height: 300.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      viewportFraction: 0.75,
    
                      onPageChanged: (int index, CarouselPageChangedReason reason) async {
                        await _tts.speak(widget.optionList[index]['optionText']);
                      },
                    ),
                    items: widget.optionList.map((optionMap) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: GestureDetector(
                              onTap: () async {
                                await _tts.stop();
                                if(optionMap['optionText'] != null) {
                                  await _tts.speak(optionMap['optionText']);
                                }
                                
                              },
                                child: OptionCard(
                                optionText: optionMap['optionText'],
                                optionTextSize: 35.0,
                                widgetColor: widget.optionCardColor,
                                imagePath: optionMap['optionImagePath'],
                                isCircleImage: false,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        );
      }
    
      
}
