import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      child: Image.asset(
        'assets/images/flat_white.png',
        width: double.infinity,
        height: 350,
        fit: BoxFit.cover,
      ),
    );
  }
}
