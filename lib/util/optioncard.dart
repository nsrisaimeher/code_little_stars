import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionCard extends StatelessWidget {
  const OptionCard(
      {Key key,
      @required this.optionText,
      @required this.widgetColor,
      @required this.imagePath})
      : super(key: key);

  final String optionText, imagePath;
  final Color widgetColor;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
        // color: widgetColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 21.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 45.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(imagePath,
                ),
              ),
            ),
            // Divider(]
            //   thickness: 3.0,

            // ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                  color: widgetColor,
                ),
                child: Center(
                  child: Text(
                    optionText,
                    style: GoogleFonts.ramaraja(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w100,
                      textStyle: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
