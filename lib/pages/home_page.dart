import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_app/responsive_screen.dart';
import 'package:order_app/theme/colors.dart';
import 'package:order_app/theme/textstyle.dart';
import 'package:order_app/widgets/app_bar.dart';
import 'package:order_app/widgets/for_you.dart';
import 'package:order_app/widgets/recent_explore.dart';
import 'package:order_app/widgets/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.sfBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarWidget(),
                const SizedBox(height: 16),
                const SearchBar(),
                const SizedBox(height: 20),
                const RecommendMenu(),
                const SizedBox(height: 16),
                SizedBox(
                    height: Responsive.isTablet(context) ? 340 : 270,
                    child: const ForYou()),
                const RecentExploreText(),
                const SizedBox(height: 16),
                const RecentExplore(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecentExploreText extends StatelessWidget {
  const RecentExploreText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Khám phá gần đây",
            style: GoogleFonts.aBeeZee(
                color: AppColors.darkBlue,
                fontSize: Responsive.isTablet(context) ? 21 : 16,
                fontWeight: FontWeight.w600)),
        Text("Xem thêm", style: ksmallTextStyle(context)),
      ],
    );
  }
}

class RecommendMenu extends StatelessWidget {
  const RecommendMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Thực đơn đề xuất",
        style: GoogleFonts.aBeeZee(
            color: AppColors.darkBlue,
            fontSize: Responsive.isTablet(context) ? 21 : 16,
            fontWeight: FontWeight.w600));
  }
}
