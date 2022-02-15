import 'package:order_app/constants/images.dart';

class RecentlyViewed {
  String image;
  String name;
  String price;
  String? discount;
  String rating;
  String description;
  String category;

  RecentlyViewed(
      {required this.image,
        required this.name,
        required this.price,
        this.discount,
        required this.rating,
        required this.description,
        required this.category});
}

List<RecentlyViewed> recentlyViewedList = [
  RecentlyViewed(
    image: taco,
    name: "Taco Taco",
    price: "45.000 đồng",
    discount: "10%",
    description: "Thịt gà, Cà chua, Hành tây, Phô mai, Rau diếp, Dưa chua, Nước chấm salad, sốt",
    rating: "4.5",
    category: "Thịt gà",
  ),
  RecentlyViewed(
    image: burrito,
    name: 'Bánh Burrito',
    price: '50.000 đồng',
    rating: '4.5',
    description: 'Thịt gà, Cà chua, Hành tây, Phô mai, Rau diếp, Dưa chua, Nước chấm salad, sốt',
    category: 'Thịt gà',
  ),
];
