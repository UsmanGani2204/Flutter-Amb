import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tgf_style_guide_v2/models/bookCard.dart';
import 'package:tgf_style_guide_v2/models/eventCard.dart';
import 'package:tgf_style_guide_v2/utils/variableSet.dart';
import 'package:tgf_style_guide_v2/widgets/cards.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EventCard> events = ListSet.eventCardInfo;
  List<BookCardIn> books = ListSet.bookCardInfo;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size dimention = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        brightness: Brightness.dark,
        elevation: 2,
        title: Text(
          StringSet.appName,
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vertical Events cards".toUpperCase(),
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize: 16,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 195,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    EventCard event = events[index];
                    return Container(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: VerticalEventCard(
                        imgUrl: event.imgUrl,
                        title: event.eventTitle,
                        startDate: event.startDate,
                        days: event.days,
                        startTime: event.startTime,
                        timePeriod: event.hrs,
                        bookedSeats: event.bookedSeats,
                        mode: event.mode,
                        capacity: event.capacity,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 17,
                      ),
                  itemCount: events.length),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Book cards".toUpperCase(),
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 217,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    BookCardIn book = books[index];
                    return Container(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: BookCard(
                        title: book.bookName,
                        mins: book.min,
                        imgUrl: book.imgUrl,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 17,
                      ),
                  itemCount: books.length),
            ),
            SizedBox(
              height: 40,
            ),
            //---------------------------------------↓---Next Element-from here---↓-----------------------------------------------
            // give mode parameter to card:- like "online" or "inperson"
          ],
        ),
      ),
    );
  }
}
