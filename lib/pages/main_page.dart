import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_app/pages/cart_page.dart';
import 'package:order_app/pages/category_page.dart';
import 'package:order_app/pages/favourites.dart';
import 'package:order_app/pages/home_page.dart';
import 'package:order_app/pages/profile_page.dart';
import 'package:order_app/pages/search_page.dart';
import 'package:order_app/providers/cart_provider.dart';
import 'package:order_app/responsive_screen.dart';
import 'package:order_app/theme/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var cartList = Provider.of<CartProvider>(context);
    List<Widget> _buildScreens = [
      const HomePage(),
      const SearchPage(),
      const Categories(),
      const Favourites(),
      const Profile(),
    ];
    List<PersistentBottomNavBarItem> navbarItems = [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: AppColors.darkBlue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        activeColorPrimary: AppColors.darkBlue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.list),
        activeColorPrimary: AppColors.darkBlue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite),
          activeColorPrimary: AppColors.darkBlue,
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings_solid),
        activeColorPrimary: AppColors.darkBlue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
    return PersistentTabView(
      context,
      // controller: _controller,
      screens: _buildScreens,
      items: navbarItems,

      confineInSafeArea: true,

      backgroundColor: Colors.white,

      handleAndroidBackButtonPress: true,

      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,

      decoration: const NavBarDecoration(
          colorBehindNavBar: AppColors.darkBlue,
          boxShadow: [
            BoxShadow(
              color: AppColors.darkBlue,
              blurRadius: 20,
              offset: Offset(0, 10),
            ),
          ]),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style8,
      floatingActionButton: Responsive.isTablet(context)
          ? Stack(
        overflow: Overflow.visible,
        children: [
          FloatingActionButton.extended(
            label: Row(
              children: const [
                Icon(Icons.shopping_cart),
                SizedBox(width: 5),
                Text(
                  'Giỏ hàng',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            isExtended: Responsive.isTablet(context),
            onPressed: () {
              pushNewScreen(
                context,
                screen: const Cart(),
                withNavBar: false,
              );
            },
            backgroundColor: AppColors.darkBlue,
          ),
          Positioned(
            top: Responsive.isTablet(context) ? -8 : 0,
            right: 0,
            child: Container(
              width: Responsive.isTablet(context) ? 25 : 20,
              height: Responsive.isTablet(context) ? 25 : 20,
              decoration: BoxDecoration(
                color: CupertinoColors.activeGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  cartList.cartItems.length.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
          : Stack(
        children: [
          FloatingActionButton(
            onPressed: () {
              pushNewScreen(
                context,
                screen: const Cart(),
                withNavBar: false,
              );
            },
            backgroundColor: AppColors.darkBlue,
            child: const Icon(Icons.shopping_cart),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: CupertinoColors.activeGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  cartList.cartItems.length.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
