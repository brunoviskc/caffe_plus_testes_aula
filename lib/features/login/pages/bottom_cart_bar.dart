import 'package:coffe_plus/features/login/pages/quantity_selector.dart';
import 'package:flutter/material.dart';

class BottomCartBar extends StatelessWidget {
  final int quantidade;
  final double total;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onAddToCart;

  const BottomCartBar({
    super.key,
    required this.quantidade,
    required this.total,
    required this.onAdd,
    required this.onRemove,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        children: [
          QuantitySelector(
            quantidade: quantidade,
            onAdd: onAdd,
            onRemove: onRemove,
          ),

          const SizedBox(width: 16),

          Expanded(
            child: ElevatedButton(
              onPressed: onAddToCart,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF432C23),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('ADD TO CART   |   \$${total.toStringAsFixed(2)}'),
            ),
          ),
        ],
      ),
    );
  }
}
