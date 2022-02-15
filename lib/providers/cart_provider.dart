import 'package:flutter/material.dart';
import 'package:order_app/constants/images.dart';
import 'package:order_app/models/cart_items.dart';
import 'package:order_app/theme/colors.dart';

class CartProvider extends ChangeNotifier {
  List cartItems = [];
  get cartItemsName => cartItems;
  get cartItemsCount => cartItems.length;

  int _cartCount = 0;
  get cartLength => cartItems.length;
  int get cartCount => _cartCount;
  void increment() {
    _cartCount++;
    notifyListeners();
  }

  void decrement() {
    _cartCount--;
    notifyListeners();
  }

  void addToCart(int count) {
    _cartCount += count;
    notifyListeners();
  }

  double get discount {
    double discount = 0;
    if (cartItems.isNotEmpty) {
      discount = cartItems.fold(0, (previousValue, element) {
        return previousValue + element.discount;
      });
    }
    return discount;
  }

  void removeItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  void removeItemWithId(CardItems item) {
    cardItems.remove(item);
    notifyListeners();
  }

  addToCart1(CardItems cardItem) {
    return Future.delayed(const Duration(seconds: 1), () {
      cartItems.add(cardItem);
      notifyListeners();
    });
  }

  void getCartStatus(String status) {
    if (cartItems.isEmpty) {
      status = 'Giỏ hàng trống';
    }
  }

  sortListByName() {
    cartItems.sort((a, b) {
      return a.title.compareTo(b.title);
    });
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total - discount;
  }

  void clearCart() {
    cartItems.clear();
    notifyListeners();
  }

  int get count => cartItems.length;

  bool get isEmpty => cartItems.isEmpty;

  bool get isNotEmpty => cartItems.isNotEmpty;

  bool isInCart(CardItems card) {
    return cartItems.contains(card);
  }
}

List<CardItems> cardItems = [
  CardItems(
    title: 'Salsa Verde - Trung \nbình',
    id: 1,
    count: 0,
    image: image3,
    color: AppColors.fbBlue,
    discount: 10,
    ingredients: [pepper, beans, orange, pepper, orange],
    about:
    'Salsa Verde là một món ăn Mexico được làm bằng ớt xanh, hành lá và cà chua. Nó thường được phục vụ với gạo, đậu hoặc ngô. Nó thường được ăn với thịt, cá hoặc rau. Nó thường được phục vụ với gạo, đậu hoặc ngô. Nó thường được ăn với thịt, cá hoặc rau.',
    cents: '.000 \nđồng',
    description: 'Salsa Verde ngon nhất \ntrong thị trấn',
    price: 67,
  ),
  CardItems(
    title: 'Burrito - Trung bình',
    discount: 15,
    id: 2,
    ingredients: [pepper, beans, orange, pepper, orange],
    description: 'Burrito ngon nhất \ntrong thị trấn',
    count: 0,
    about:
    'Burritos là một món hầm dựa trên ngô, thường trộn với đậu, đậu hoặc đậu, và thường đứng đầu với phô mai, ớt hoặc salsa. Chúng thường được phục vụ với cơm, ngô hoặc đậu. Chúng thường được ăn với thịt, cá hoặc rau. Chúng thường được phục vụ với gạo, đậu hoặc ngô. Chúng thường được ăn với thịt, cá hoặc rau.',
    image: image1,
    cents: '.000 \nđồng',
    color: AppColors.darkBlue,
    price: 35,
  ),
  CardItems(
    title: 'Mashed Potato - Trung \nbình',
    discount: 30,
    count: 0,
    id: 3,
    ingredients: [pepper, beans, orange, pepper, orange],
    image: image2,
    description: 'Mashed Potatothe ngon nhất \ntrong thị trấn',
    about:
    'Mashed potatoes là một món khoai tây nghiền, thường được trộn với đậu, đậu hoặc đậu, và thường phủ đầy phô mai, ớt hoặc salsa. Chúng thường được phục vụ với cơm, ngô hoặc đậu. Chúng thường được ăn với thịt, cá hoặc rau. Chúng thường được phục vụ với gạo, đậu hoặc ngô. Chúng thường được ăn với thịt, cá hoặc rau.',
    color: AppColors.lightBlue,
    cents: '.000 \nđồng',
    price: 56,
  ),
  CardItems(
    title: 'Rice Pudding - Trung \nbình',
    discount: 30,
    count: 0,
    id: 3,
    ingredients: [pepper, beans, orange, pepper, orange],
    image: image2,
    description: 'Rice Pudding ngon nhất \ntrong thị trấn',
    about:
    'Rice Pudding là một món khoai tây nghiền, thường được trộn với đậu, đậu hoặc đậu, và thường phủ đầy phô mai, ớt hoặc salsa. Chúng thường được phục vụ với cơm, ngô hoặc đậu. Chúng thường được ăn với thịt, cá hoặc rau. Chúng thường được phục vụ với gạo, đậu hoặc ngô. Chúng thường được ăn với thịt, cá hoặc rau.',
    color: AppColors.lightBlue,
    cents: '.000 \nđồng',
    price: 56,
  ),
];
