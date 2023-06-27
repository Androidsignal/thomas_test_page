import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_page/constants/color_constants.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  GradientButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.maxFinite,
        height: 40.0,
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [ColorConstants.getInstance().greenColor, ColorConstants.getInstance().blueColor],
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.lato(
              color: ColorConstants.getInstance().whiteColor,
              textStyle: Theme.of(context).textTheme.titleMedium,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
