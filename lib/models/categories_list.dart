import 'package:flutter/material.dart';
import 'package:order_app/constants/images.dart';

class CategoriesList {
  final String title;
  final String imageUrl;
  final Color color;
  final bool isAll;

  CategoriesList({
    required this.title,
    required this.color,
    this.isAll = false,
    required this.imageUrl,
  });
}

List<CategoriesList> categories = [
  CategoriesList(
    title: 'Tất cả',
    color: Colors.white,
    isAll: true,
    imageUrl: pepper,
  ),
  CategoriesList(
    title: 'Đồ ăn vặt',
    color: Colors.blue,
    isAll: false,
    imageUrl: beans,
  ),
  CategoriesList(
    title: 'Trái cây',
    color: Colors.red,
    isAll: false,
    imageUrl: orange,
  ),
  CategoriesList(
    title: 'Rau',
    color: Colors.green,
    isAll: false,
    imageUrl: beans,
  ),
  CategoriesList(
    title: 'Bơ sữa',
    color: Colors.yellow,
    isAll: false,
    imageUrl: pepper,
  ),
  CategoriesList(
    title: 'Đồ uống',
    color: Colors.orange,
    isAll: false,
    imageUrl: beans,
  ),
  CategoriesList(
    title: 'Bánh mỳ',
    color: Colors.pink,
    isAll: false,
    imageUrl: beans,
  ),
  CategoriesList(
    title: 'Thịt',
    color: Colors.purple,
    isAll: false,
    imageUrl: beans,
  ),
];
