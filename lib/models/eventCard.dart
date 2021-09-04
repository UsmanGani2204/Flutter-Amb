class EventCard {
  String eventTitle, imgUrl, startDate, startTime, mode;
  int days, hrs, capacity, bookedSeats;

  EventCard({
    required this.eventTitle,
    required this.imgUrl,
    this.startDate: "1999-08-13 20:18:04",
    this.days: 2,
    this.startTime: "20:00:00",
    this.hrs: 2,
    this.mode: "Online",
    this.capacity: 1000,
    this.bookedSeats: 673,
  });
}
