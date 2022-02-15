import 'package:order_app/animations/lotties.dart';

class OnboardingStuffs {
  String img;
  String title;
  String description;
  OnboardingStuffs(
      {required this.img, required this.description, required this.title});
}

List<OnboardingStuffs> stuffs = [
  OnboardingStuffs(
      img: recom,
      title: 'Nhận đề xuất bữa ăn',
      description:
      'Chúng tôi sẽ giới thiệu cho bạn một bữa ăn dựa trên sở thích của bạn và vị trí của bạn'),
  OnboardingStuffs(
      img: ontime,
      title: 'Các bữa ăn được đóng gói tốt',
      description:
      'Chúng tôi sẽ cung cấp cho bạn các bữa ăn được đóng gói tốt dễ ăn và khỏe mạnh'),
  OnboardingStuffs(
      img: ontime,
      title: 'Giao hàng đúng hẹn',
      description: 'Chúng tôi sẽ giao bữa ăn đúng hẹn vào cửa nhà bạn'),
];
