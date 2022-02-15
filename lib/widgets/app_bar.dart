import 'package:flutter/material.dart';
import 'package:order_app/theme/colors.dart';
import 'package:order_app/theme/textstyle.dart';
import 'package:order_app/widgets/icon_container_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const IconContainer(
                color: AppColors.darkBlue, icon: Icons.location_on),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Giao hàng tới",
                  style: ksmallTextStyle(context),
                ),
                Text("KTX khu A, TP.HCM", style: klargeTextStyle(context)),
              ],
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: const IconContainer(
            color: AppColors.greyText,
            svgPath: 'assets/images/icons/ham.svg',
            isStack: true,
            isSvg: true,
          ),
        ),
      ],
    );
  }
}
