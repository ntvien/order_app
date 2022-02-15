import 'package:flutter/widgets.dart';

class Responsive {
  // function responsible for providing value according to screen_size
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isTablet(BuildContext context) {
    return screenWidth(context) > 600;
  }
}
