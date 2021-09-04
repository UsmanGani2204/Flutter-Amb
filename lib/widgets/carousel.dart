import 'package:flutter/material.dart';
import 'package:tgf_style_guide_v2/models/eventCard.dart';
import 'package:tgf_style_guide_v2/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tgf_style_guide_v2/widgets/cards.dart';

// ignore: must_be_immutable
class ImageCarousel extends StatefulWidget {
  ImageCarousel({
    Key? key,
    required this.itemList,
    this.autoPlay: true,
    this.autoPlayDuration: 3,
    this.onTap,
  }) : super(key: key);
  int autoPlayDuration;
  bool autoPlay;
  List<String> itemList;
  GestureTapCallback? onTap;

  @override
  _ImageCarouselState createState() => _ImageCarouselState(this.itemList);
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _current = 0;
  List<Widget> itemListr = [];

  _ImageCarouselState(List<String> itemList) {
    for (var i = 0; i < itemList.length; i++) {
      itemListr.add(ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        child: InkWell(
          onTap: () {},
          child: Container(
            clipBehavior: Clip.antiAlias,
            margin:
                EdgeInsets.only(top: 10, left: 10, right: 10), //change 10 to 0
            decoration: BoxDecoration(
              color: CustomeColors.primaryColorPale,
              borderRadius:
                  BorderRadius.all(Radius.circular(10)), //change 10 to 0
            ),
            child: Image(
              image: NetworkImage(itemList[i]),
              fit: BoxFit.cover,
              width: 1000,
            ),
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: itemListr,
          options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 5),
              autoPlay: widget.autoPlay,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: itemListr.map((e) {
            int index = itemListr.indexOf(e);
            return AnimatedContainer(
              duration: Duration(milliseconds: 250),
              width: _current == index ? 20 : 6,
              height: 6,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: _current == index
                    ? CustomeColors.primaryColor
                    : CustomeColors.unselectedGrey,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class CardCarousel extends StatefulWidget {
  CardCarousel({
    Key? key,
    required this.eventCards,
    this.autoPlay: true,
    this.autoPlayDuration: 5,
    this.onTap,
  }) : super(key: key);
  int autoPlayDuration;
  bool autoPlay;
  List<EventCard> eventCards;

  GestureTapCallback? onTap;

  @override
  _CardCarouselState createState() => _CardCarouselState(this.eventCards);
}

class _CardCarouselState extends State<CardCarousel> {
  int _current = 0;
  List<Widget> itemListr = [];

  _CardCarouselState(List<EventCard> eventCards) {
    for (var i = 0; i < eventCards.length; i++) {
      EventCard eventCard = eventCards[i];
      itemListr.add(
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          child: Container(
            padding: EdgeInsets.only(bottom: 5, right: 5),
            child: VerticalEventCard(
              title: eventCard.eventTitle,
              imgUrl: eventCard.imgUrl,
              startDate: eventCard.startDate,
              days: eventCard.days,
              startTime: eventCard.startTime,
              timePeriod: eventCard.hrs,
              capacity: eventCard.capacity,
              bookedSeats: eventCard.bookedSeats,
              mode: eventCard.mode,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: itemListr,
          options: CarouselOptions(
              height: 195,
              autoPlayInterval: Duration(seconds: 5),
              autoPlay: widget.autoPlay,
              enableInfiniteScroll: true,
              enlargeCenterPage: false,
              viewportFraction: 0.365,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: itemListr.map((e) {
            int index = itemListr.indexOf(e);
            return AnimatedContainer(
              duration: Duration(milliseconds: 250),
              width: _current == index ? 20 : 6,
              height: 6,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: _current == index
                    ? CustomeColors.primaryColor
                    : CustomeColors.unselectedGrey,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
