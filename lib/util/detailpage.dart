import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:code_little_stars/util/optioncard.dart';
import 'package:code_little_stars/util/titleappcard.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key key, @required this.detailPageTitle, @required this.optionList, this.optionCardColor = Colors.black})
      : super(key: key);

  final String detailPageTitle;
  final List optionList;
  final Color optionCardColor;

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/varnamala/amma.jpg"), context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: TitleAppCard(appCardTitle: detailPageTitle, appCardColor: optionCardColor,),
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
                  viewportFraction: 0.75,
                ),
                items: optionList.map((optionMap) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: OptionCard(
                            optionText: optionMap['optionText'],
                            optionTextSize: 35.0,
                            widgetColor: optionCardColor,
                            imagePath: optionMap['optionImagePath'],
                            isCircleImage: false,
                          ));
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
