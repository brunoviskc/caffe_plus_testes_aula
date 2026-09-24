import 'dart:ui';

import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Flat White',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              Text(
                '\$4.50',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              _tag('Rich'),
              const SizedBox(width: 8),
              _tag('Velvey'),
              const SizedBox(width: 8),
              _tag('Balanced'),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "A seamless blend of micro-steamed milk "
            "poured over a double shot of our signature "
            "'Espresso Noir' roast. This Australian classic "
            "delivers a creamy, luxurious mouthfeel while "
            "allowing the bold, chocolatey notes of the "
            "coffee to take center stage.",
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Color(0xFF5C514D),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tag(String texto) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF0ECEA),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 11, color: Color(0xFF625B57)),
      ),
    );
  }
}
