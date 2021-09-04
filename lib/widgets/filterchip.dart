import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'bottomNav.dart';


class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'K18cpp_-gP8',
  params: YoutubePlayerParams(
    playlist: ['0AEO4Qs64wY', 'oW07gWEDSNc'], // Defining custom playlist
    // startAt: Duration(seconds: 30),
    showControls: true,
    showFullscreenButton: true,
  ),
);

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.bars,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: () {}),
        title: Text(
          "Samaya Sampana",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
                size: 16.0,
              ),
              onPressed: () {
                //
              }),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.bell,
                color: Colors.black,
                size: 16.0,
              ),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'HOW SAMAY SAMPANA WORKS',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pharetra metus cursus tortor et n pharetra metus cursus tortor et  ',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            YoutubePlayerIFrame(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'SAMAY SAMPANA SETTINGS',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Select suitable timings for Samay Smapana reminder',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14.0,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: Wrap(
                        spacing: 5.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: '04:04'),
                          filterChipWidget(chipName: '05:05'),
                          filterChipWidget(chipName: '06:06'),
                          filterChipWidget(chipName: '07:07'),
                          filterChipWidget(chipName: '08:08'),
                          filterChipWidget(chipName: '09:09'),
                          filterChipWidget(chipName: '09:09'),
                          filterChipWidget(chipName: '10:10'),
                        ],
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '12:12'),
                        filterChipWidget(chipName: '01:01'),
                        filterChipWidget(chipName: '02:02'),
                        filterChipWidget(chipName: '03:03'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '08:08'),
                        filterChipWidget(chipName: '09:09'),
                        filterChipWidget(chipName: '10:10'),
                        filterChipWidget(chipName: '11:11'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '04:04'),
                        filterChipWidget(chipName: '05:05'),
                        filterChipWidget(chipName: '06:06'),
                        filterChipWidget(chipName: '07:07'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Color(0xFF4A417F),
                    minimumSize: Size(164, 40),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    side: BorderSide(color: Color(0xFF4A417F), width: 1.5),
                    textStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    print('Cancel Pressed!');
                  },
                  child: Text('Cancel'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF4A417F),
                    minimumSize: Size(164, 40),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    textStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  onPressed: () {
                    print('Save Pressed!');
                  },
                  child: Text('Save'),
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),);
  }
}