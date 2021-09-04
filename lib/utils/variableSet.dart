import 'package:tgf_style_guide_v2/models/bookCard.dart';
import 'package:tgf_style_guide_v2/models/eventCard.dart';
import 'package:tgf_style_guide_v2/models/horizontalCards.dart';

class StringSet {
  static String appName = 'Packeage Demo';
  static String dummyPage = 'Dummy Page';
}

class UrlSet {
  static List<String> eventUrl = [
    "https://wallpapercave.com/wp/wp8797477.jpg",
    "https://cdn.mos.cms.futurecdn.net/owjXYxW94bpABbKc2YDgtD.jpg",
    "https://cdn.dribbble.com/users/1431538/screenshots/3045907/drib-1.png?compress=1&resize=800x600",
    "https://cdn.dribbble.com/users/904433/screenshots/6259018/functionnal_dribbble.png?compress=1&resize=800x600",
    "https://cdn.dribbble.com/users/904433/screenshots/14261388/media/bdbb96a765304e031b934c74aef8586e.png?compress=1&resize=1600x1200",
    "https://cdn.dribbble.com/users/260954/screenshots/4041525/azure_icon1.jpg?compress=1&resize=800x600",
    "https://cdn.dribbble.com/users/67912/screenshots/11404013/media/497d876cb292e448338f51e680c44fab.png?compress=1&resize=1600x1200",
  ];
}

class ListSet {
  static List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'June',
    'July',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  static final List<EventCard> eventCardInfo = [
    EventCard(
        eventTitle: "Qubit by IBM",
        imgUrl: "https://wallpapercave.com/wp/wp8797477.jpg",
        startDate: "2021-09-01",
        days: 2,
        startTime: "11:00:00",
        hrs: 4,
        capacity: 1000,
        bookedSeats: 234,
        mode: "Online"),
    EventCard(
        eventTitle: "Ethical Hacking",
        imgUrl: "https://cdn.mos.cms.futurecdn.net/owjXYxW94bpABbKc2YDgtD.jpg",
        startDate: "2021-09-03",
        days: 4,
        startTime: "11:00:00",
        hrs: 6,
        capacity: 1000,
        bookedSeats: 546,
        mode: "In-person"),
    EventCard(
        eventTitle: "SQL Basics",
        imgUrl:
            "https://cdn.dribbble.com/users/1431538/screenshots/3045907/drib-1.png?compress=1&resize=800x600",
        startDate: "2021-09-07",
        days: 3,
        startTime: "11:00:00",
        hrs: 3,
        capacity: 1000,
        bookedSeats: 485,
        mode: "In-person"),
    EventCard(
        eventTitle: "Java Script Adv",
        imgUrl:
            "https://cdn.dribbble.com/users/904433/screenshots/6259018/functionnal_dribbble.png?compress=1&resize=800x600",
        startDate: "2021-09-10",
        days: 6,
        startTime: "11:00:00",
        hrs: 5,
        capacity: 1000,
        bookedSeats: 465,
        mode: "Online"),
    EventCard(
        eventTitle: "Flutter Dev",
        imgUrl:
            "https://cdn.dribbble.com/users/904433/screenshots/14261388/media/bdbb96a765304e031b934c74aef8586e.png?compress=1&resize=1600x1200",
        startDate: "2021-09-16",
        days: 2,
        startTime: "11:00:00",
        hrs: 7,
        capacity: 1000,
        bookedSeats: 213,
        mode: "In-person"),
    EventCard(
        eventTitle: "Microsoft Azure",
        imgUrl:
            "https://cdn.dribbble.com/users/260954/screenshots/4041525/azure_icon1.jpg?compress=1&resize=800x600",
        startDate: "2021-09-18",
        days: 3,
        startTime: "11:00:00",
        hrs: 3,
        capacity: 1000,
        bookedSeats: 878,
        mode: "In-person"),
    EventCard(
        eventTitle: "Kubernetes Adv",
        imgUrl:
            "https://cdn.dribbble.com/users/67912/screenshots/11404013/media/497d876cb292e448338f51e680c44fab.png?compress=1&resize=1600x1200",
        startDate: "2021-09-21",
        days: 5,
        startTime: "11:00:00",
        hrs: 1,
        capacity: 1000,
        bookedSeats: 659,
        mode: "Online"),
  ];
  static final List<BookCardIn> bookCardInfo = [
    BookCardIn(
      bookName: "Quantum Computer",
      imgUrl:
          "https://pragprog.com/titles/nmquantum/quantum-computing/nmquantum.jpg",
      min: 238,
    ),
    BookCardIn(
      bookName: "NLP for Hacker",
      imgUrl:
          "https://images.manning.com/360/480/resize/book/a/2ae1c03-bef7-4ea7-ba50-84d857b7ccea/Ivanov_NLP_hires.jpg",
      min: 200,
    ),
    BookCardIn(
      bookName: "Flutter Apps",
      imgUrl:
          "https://cdn.syncfusion.com/content/images/downloads/ebook/flutter-succinctly.png",
      min: 576,
    ),
    BookCardIn(
      bookName: "Azure IoT Revealed",
      imgUrl:
          "https://media.springernature.com/w306/springer-static/cover-hires/book/978-1-4842-5470-7",
      min: 20,
    ),
    BookCardIn(
      bookName: "Kubernetes </pro>",
      imgUrl: "https://m.media-amazon.com/images/I/51KUl03BJ6L.jpg",
      min: 563,
    ),
  ];

  static final List<HorizontalCards> hCardInfo = [
    ];
}
