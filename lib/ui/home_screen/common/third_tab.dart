import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_page/constants/color_constants.dart';
import 'package:test_page/ui/home_screen/home_screen_mobile.dart';

class ThirdTab extends StatelessWidget {
  ThirdTab({Key? key}) : super(key: key);

  final ColorConstants colorConstants = ColorConstants.getInstance();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 500
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            'Drei einfache Schritte zur\nVermittlung neuer Mitarbeiter',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: colorConstants.textColor,
                ),
          ),
          const SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                maxLines: 2,
                text: TextSpan(
                  text: '1. ',
                  style: GoogleFonts.lato(
                    color: ColorConstants.getInstance().contentTextColor,
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontWeight: FontWeight.normal,
                    // letterSpacing: 1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Erstellen dein Unternehmensprofil',
                      style: GoogleFonts.lato(

                        color: ColorConstants.getInstance().contentTextColor,
                        textStyle: Theme.of(context).textTheme.titleLarge,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SvgPicture.asset(
                  'assets/vectors/arbeitnehmer1.svg',
                  height: 200,
                  width: 200,
                ),
              )
            ],
          ),
          const SizedBox(height: 200),
          ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorConstants.getInstance().gradientColor1,
                    ColorConstants.getInstance().gradientColor2,
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: SvgPicture.asset(
                      'assets/vectors/temporärbüro2.svg',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      text: '2. ',
                      style: GoogleFonts.lato(
                        color: ColorConstants.getInstance().contentTextColor,
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 1,
                      ),
                      children: [
                        TextSpan(
                          text: 'Erhalte Vermittlungs- angebot von Arbeitgeber',
                          style: GoogleFonts.lato(

                            color: ColorConstants.getInstance().contentTextColor,
                            textStyle: Theme.of(context).textTheme.titleLarge,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                maxLines: 2,
                text: TextSpan(
                  text: '3. ',
                  style: GoogleFonts.lato(
                    color: ColorConstants.getInstance().contentTextColor,
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontWeight: FontWeight.normal,
                    // letterSpacing: 1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Vermittlung nach Provision oder Stundenlohn',
                      style: GoogleFonts.lato(

                        color: ColorConstants.getInstance().contentTextColor,
                        textStyle: Theme.of(context).textTheme.titleLarge,
                        fontWeight: FontWeight.normal,
                        // letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SvgPicture.asset(
                  'assets/vectors/temporärbüro3.svg',
                  height: 300,
                  width: 300,
                ),
              )
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
