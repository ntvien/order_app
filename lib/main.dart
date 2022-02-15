import 'package:flutter/material.dart';
import 'package:order_app/pages/introduction_page.dart';
import 'package:order_app/providers/cart_provider.dart';
import 'package:order_app/providers/favorite_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(),
        ),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Order App',
          theme: ThemeData(
            canvasColor: Colors.transparent,
            primarySwatch: Colors.blue,
          ),
          home: const OnboardingScreen(),
        );
      }),
    );
  }
}
