import 'package:flutter/material.dart';
import 'package:order_app/providers/cart_provider.dart';

class AlertBox extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;
  final CartProvider carItems;
  final int index;
  const AlertBox({
    Key? key,
    required this.carItems,
    required this.onPressed,
    required this.index,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Bạn có chắc không?'),
      content: Text(content),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Không')),
        FlatButton(onPressed: onPressed, child: const Text('Có'))
      ],
    );
  }
}
