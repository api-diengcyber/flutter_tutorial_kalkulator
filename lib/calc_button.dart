import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int? fillColor;
  final int textColor;
  final double textSize;
  final Function? callback;

  const CalcButton({
    super.key,
    required this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: ElevatedButton(
          onPressed: () {
            callback!(text);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            textStyle: TextStyle(
              color: Color(textColor),
            ),
            backgroundColor: fillColor != null ? Color(fillColor!) : null,
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}