import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgf_style_guide_v2/utils/colors.dart';
import 'package:tgf_style_guide_v2/utils/variableSet.dart';

// ignore: must_be_immutable
class UpcomingEventsCard extends StatefulWidget {
  UpcomingEventsCard({
    Key? key,
    required this.bookTitle,
    required this.itemType,
    this.mins: 20,
  }) : super(key: key);
  String bookTitle, itemType;
  int mins;

  @override
  _UpcomingEventsCardState createState() => _UpcomingEventsCardState();
}

class _UpcomingEventsCardState extends State<UpcomingEventsCard> {
  @override
  Widget build(BuildContext context) {
    Size dimention = MediaQuery.of(context).size;

    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      elevation: 4,
      child: Container(
        width: dimention.width,
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          // color: Colors.teal,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        height: 175,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomeColors.primaryColorPale,
              ),
              width: dimention.width / 2.25,
              height: 175,
              child: Image(
                image: NetworkImage("https://www.gethappythoughts.org/shop/image/cache/catalog/Capture-Sant%20Namdev-front-550x550h.JPG"),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: dimention.width - ((dimention.width / 2.25) + 100),
                    child: Text(
                      widget.bookTitle,
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff201C38),
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.itemType,
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4A417F),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    widget.mins <= 1
                        ? "${widget.mins} min read"
                        : "${widget.mins} mins read",
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff838090),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
