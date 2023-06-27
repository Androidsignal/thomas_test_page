import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_page/constants/color_constants.dart';
import 'package:test_page/ui/home_screen/mobile_designs/home_screen_mobile.dart';


class FirstTab extends StatelessWidget {
  FirstTab({Key? key}) : super(key: key);

  final ColorConstants colorConstants = ColorConstants.getInstance();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            'Drei einfache Schritte\nzu deinem neuen Job',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: colorConstants.textColor,
                ),
          ),
          const SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -10,
                    bottom: -30,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF7FAFC)),
                    ),
                  ),
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
                          text: 'Erstellen dein Lebenslauf',
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
                      'assets/vectors/arbeitnehmer2.svg',
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
                          text: 'Erstellen dein Lebenslauf',
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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -40,
                    top: 1,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFF7FAFC)),
                    ),
                  ),
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
                          text: 'Mit nur einem Klick bewerben',
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
              Flexible(
                child: SvgPicture.asset(
                  'assets/vectors/arbeitnehmer3.svg',
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

class PathPainter extends CustomPainter {
  Path path;

  PathPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.redAccent.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
