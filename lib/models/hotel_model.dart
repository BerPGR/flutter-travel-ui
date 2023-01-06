class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel(this.imageUrl, this.name, this.address, this.price);
}

final List<Hotel> hotels = [
  Hotel('assets/images/hotel0.jpg', 'Hotel 0', '404 Great St', 175),
  Hotel('assets/images/hotel1.jpg', 'Hotel 1', '404 Great St', 300),
  Hotel('assets/images/hotel2.jpg', 'Hotel 2', '404 Great St', 240),
];
