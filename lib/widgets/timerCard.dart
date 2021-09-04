import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgf_style_guide_v2/utils/colors.dart';
import 'package:tgf_style_guide_v2/widgets/timer.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();

}

class _TimerState extends State<Timer> {

  @override

  Widget build(BuildContext context) {
    return Material(
        elevation: 0,
        child: Container(
          width: 164,
        height: 96,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
        border: Border.all(
        color: CustomeColors.secondaryColor,
        width: 0.5,
            ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.white,
      ),
          padding: EdgeInsets.fromLTRB(26, 16, 26, 12),
          child: Column(
          children: [
            Text('KARMARPAN',
            textAlign: TextAlign.center,
          style: TextStyle(
            //fontFamily: GoogleFonts.poppins().fontFamily,
            fontSize: 12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
            color: Color(0xff4A417F),
          ),
          ),
            StopWatchTimerPage(),
          ],
        ),
        )
      );




  }

//  buildTime() {
//    return Text(
//      '${duration.inSeconds}',
//
//    );
//  }
}
