class ImageModel {
  double height;
  String url;
  bool checkTop;
  String title;
  int price;
  bool checkStatus;
  String location;
  String time;

  ImageModel({
    required this.height,
    required this.url,
    required this.checkTop,
    required this.title,
    required this.price,
    required this.checkStatus,
    required this.location,
    required this.time,
  });
}

List<ImageModel> items = [
  ImageModel(
      height: 250,
      url:
          "https://frankfurt.apollo.olxcdn.com/v1/files/r65sp2e98f0z2-UZ/image;s=1000x700",
      checkTop: true,
      title: "Пульт универсальный",
      price: 50000,
      checkStatus: false,
      location: "Tashkent",
      time: "today 12:30"),
  ImageModel(
      height: 250,
      url:
          "https://frankfurt.apollo.olxcdn.com/v1/files/0avbg04037qp-UZ/image;s=1000x700",
      checkTop: false,
      title: "Chevrolet cobalt",
      price: 165000000,
      checkStatus: true,
      location: "Tashkent, Yunusabad",
      time: "Yesterday"),
  ImageModel(
      height: 250,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLfBq_o-LtO1poon63o1KCmv0tq_r8_2ls8Q&s",
      title: "Пульт универсальный",
      checkTop: false,
      price: 60000,
      checkStatus: true,
      location: "Tashkent",
      time: "today 12:30"),
  ImageModel(
      height: 250,
      url:
          "https://frankfurt.apollo.olxcdn.com/v1/files/xrg6b6oke3b32-UZ/image;s=1000x700",
      title: "Malibu Premier",
      checkTop: true,
      price: 348000000,
      checkStatus: false,
      location: "Tashkent, Chilanzar",
      time: "Today 10:20"),
  ImageModel(
      height: 250,
      url:
          "https://frankfurt.apollo.olxcdn.com/v1/files/udg4cqf2fpj32-UZ/image;s=1000x700",
      title: "Dacha sotiladi",
      checkTop: true,
      price: 530000000,
      checkStatus: false,
      location: "Tashkent",
      time: "today 12:30"),
  ImageModel(
      height: 250,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTROCdlX6FdJOEmTVCrtIIvkFYklAK-91Cbw&s",
      title: "Mushuk sotiladi",
      price: 2000000,
      checkStatus: true,
      checkTop: false,
      location: "Taskent, Sergeli",
      time: "5 May 12:00"),
];
