import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_app/theme/colors.dart';
import 'package:order_app/theme/textstyle.dart';
import 'package:order_app/widgets/icon_container_widget.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(CupertinoIcons.search),
                const SizedBox(width: 8.0),
                Text(
                  "Tìm kiếm món ăn",
                  style: ksmallTextStyle(context),
                ),
              ],
            ),
            const IconContainer(
              color: AppColors.darkBlue,
              icon: Icons.shuffle,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: AppColors.greyText,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
