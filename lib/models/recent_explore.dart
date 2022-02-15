import 'package:order_app/constants/images.dart';

class RecentExplore {
  final String? image;
  final String? name;
  final String? price;
  final String? cents;

  RecentExplore({this.image, this.name, this.price, this.cents});
}

List<RecentExplore> recentExplore = [
  RecentExplore(
    cents: '.000 đồng',
    image: dessert,
    name: 'Kem quế',
    price: '20',
  ),
  RecentExplore(
    cents: '.000 đồng',
    image: diss,
    name: 'Kem dâu',
    price: '30',
  ),
  RecentExplore(
    cents: '.500 đồng',
    image: shawarma,
    name: 'Bánh Sandwich',
    price: '40',
  ),
  RecentExplore(
    cents: '.000 đồng',
    image: hamburger,
    name: 'Bánh Hamburger',
    price: '50',
  ),
  RecentExplore(
    cents: '.000 đồng',
    image: diss,
    name: 'Kem dâu',
    price: '30',
  ),
  RecentExplore(
    cents: '.000 đồng',
    image: diss,
    name: 'Kem dâu',
    price: '30',
  ),
  RecentExplore(
    cents: '.000 đồng',
    image: diss,
    name: 'Kem dâu',
    price: '30',
  ),
];
