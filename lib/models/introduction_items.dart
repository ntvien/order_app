import 'package:flutter/material.dart';
import 'package:order_app/constants/images.dart';

class IntroductionItem {
  final String title;
  final String description;
  final bool isLast;
  final String imageUrl;
  final Color color;

  IntroductionItem(
      {required this.color,
        required this.title,
        required this.isLast,
        required this.description,
        required this.imageUrl});
}

List<IntroductionItem> introductionItem = [
  IntroductionItem(
      title: 'Đang giới thiệu',
      color: Colors.blue,
      isLast: false,
      description:
      'Nhận các giới thiệu thực phẩm tốt nhất theo sở thích của bạn',
      imageUrl: image2),
  IntroductionItem(
      color: Colors.cyanAccent,
      title: 'Lo lắng ít hơn',
      isLast: false,
      description:
      'Chúng tôi sẽ không gửi cho bạn thông báo nếu bạn không có tâm trạng',
      imageUrl: image1),
  IntroductionItem(
      color: Colors.pink,
      title: 'Bắt đầu',
      isLast: true,
      description:
      'Bắt đầu bằng cách thêm sở thích của bạn và tận hưởng thức ăn tốt nhất',
      imageUrl: image3),
];
