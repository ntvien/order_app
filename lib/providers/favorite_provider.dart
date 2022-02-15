import 'package:flutter/material.dart';
import 'package:order_app/models/cart_items.dart';

class FavoriteProvider extends ChangeNotifier {
  final List _favorite = [];

  List get favorite => _favorite;

  void addFavorite(CardItems card) {
    _favorite.add(card);
    notifyListeners();
  }

  void removeFavorite(int id) {
    _favorite.removeAt(id);
    notifyListeners();
  }

  bool isFavorite(CardItems card) {
    return _favorite.contains(card);
  }

  get refresh => notifyListeners();

  void clearFavorite() {
    _favorite.clear();
    notifyListeners();
  }

  void removeFavoriteFromSnackBar(CardItems card) {
    _favorite.remove(card);
    notifyListeners();
  }

  int get count => _favorite.length;

  bool get isEmpty => _favorite.isEmpty;

  bool get isNotEmpty => _favorite.isNotEmpty;
}
