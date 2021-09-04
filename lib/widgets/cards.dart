import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgf_style_guide_v2/utils/colors.dart';
import 'package:tgf_style_guide_v2/utils/variableSet.dart';

//Vertical Event Card
// ignore: must_be_immutable
class VerticalEventCard extends StatefulWidget {
  VerticalEventCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    this.startDate: "1999-08-13 20:18:04",
    this.days: 2,
    this.timePeriod: 2,
    this.startTime: "20:00:00",
    this.capacity: 500,
    this.bookedSeats: 129,
    this.mode: "Online",
    this.onTap,
  }) : super(key: key);
  String title, imgUrl, mode;
  String startDate, startTime;
  int days, timePeriod, capacity, bookedSeats;
  GestureTapCallback? onTap;

  @override
  _VerticalEventCardState createState() => _VerticalEventCardState(
      this.startDate, this.days, this.startTime, this.timePeriod);
}

class _VerticalEventCardState extends State<VerticalEventCard> {
  String startDateFx = "", endDayFx = "";
  String startTimeFx = "", endTimeFx = "";
  _VerticalEventCardState(
      String startDate, int days, String startTime, int timePeriod) {
    startDateFx = startDate.split(" ")[0];
    endDayFx = (int.parse(startDateFx.split("-")[2]) + days).toString();
    startTimeFx = amAndpm(startTime);
    endTimeFx =
        amAndpm((int.parse(startTime.split(":")[0]) + timePeriod).toString());
  }

  String amAndpm(String time) {
    if (int.parse(time.split(":")[0]) <= 12) {
      return time.split(":")[0] + "am";
    }
    return (int.parse(time.split(":")[0]) - 12).toString() + "pm";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      elevation: 1.65,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: 130,
          // height: 190,
          clipBehavior: Clip.antiAlias,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Column(
            children: [
              // image + mode container ↓
              Stack(
                children: [
                  // image Container ↓
                  Container(
                    height: 101,
                    width: 130,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: CustomeColors.primaryColorPale,
                      image: DecorationImage(
                        image: NetworkImage(widget.imgUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        topLeft: Radius.circular(4),
                      ),
                    ),
                  ),
                  // mode container ↓
                  Container(
                    height: 16,
                    width: 47,
                    decoration: BoxDecoration(
                        color: CustomeColors.secondaryColorPale,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(4))),
                    child: Center(
                      child: Text(
                        widget.mode,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 8,
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // info container ↓
              Container(
                // height: 89,
                width: 130,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff201C38),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        startDateFx.split("-")[2] +
                            "-" +
                            endDayFx +
                            " " +
                            ListSet.months[
                                int.parse(widget.startDate.split("-")[1]) - 1] +
                            ", " +
                            startDateFx.split("-")[0],
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A417F),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        startTimeFx + " to " + endTimeFx,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A417F),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.bookedSeats}/${widget.capacity} seats booked",
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff838090),
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Book Card
// ignore: must_be_immutable
class BookCard extends StatefulWidget {
  BookCard({
    Key? key,
    required this.title,
    required this.mins,
    required this.imgUrl,
    this.onTap,
  }) : super(key: key);
  String title, imgUrl;
  int mins;
  GestureTapCallback? onTap;

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      // elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(4)),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 162.59,
                width: 130,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: CustomeColors.primaryColorPale,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    topLeft: Radius.circular(4),
                  ),
                ),
                child: Image(
                  image: NetworkImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.41,
                    ),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff201C38),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.mins < 2
                          ? "${widget.mins} min read"
                          : "${widget.mins} mins read",
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xff838090),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//SamaySampana Card
class SamaySampana extends StatefulWidget {
  SamaySampana({this.onTap,});
GestureTapCallback? onTap;

  @override
  _SamaySampanaState createState() => _SamaySampanaState();
}

class _SamaySampanaState extends State<SamaySampana> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 0,
      child: Container(
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
            Text('SAMAY SAMPANNA',
              textAlign: TextAlign.center,
              style: TextStyle(
                //fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff4A417F),
              ),
            ),
            SizedBox(
              height:4,
            ),
            Container(
              width: 125,
              child: Text('Don’t want to miss your Meditation timings!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4A417F),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: widget.onTap,
              child: Row(
                children: [
                  Text("SET REMINDER NOW", style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: CustomeColors.primaryColor,
                  ),),
                  SizedBox(width: 7.33,),
                  Icon(Icons.arrow_forward_outlined, color: CustomeColors.primaryColor, size: 20,)
                ],
              ),
            ),
          ],
        ),
        ),
    );


}
}

