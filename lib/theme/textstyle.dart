import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_app/responsive_screen.dart';
import 'package:order_app/theme/colors.dart';

TextStyle ksmallTextStyle(BuildContext context) => GoogleFonts.aBeeZee(
  fontSize: Responsive.isTablet(context) ? 15 : 11,
  color: const Color(0xFF8D8E98),
);

TextStyle klargeTextStyle(BuildContext context) => GoogleFonts.aBeeZee(
  fontSize: Responsive.isTablet(context) ? 25.0 : 17.0,
  fontWeight: FontWeight.bold,
  color: AppColors.colorPrimary,
);

TextStyle ktitleTextStyle(BuildContext context) => GoogleFonts.aBeeZee(
  fontSize: Responsive.isTablet(context) ? 11 : 8.0,
  fontWeight: FontWeight.bold,
);
