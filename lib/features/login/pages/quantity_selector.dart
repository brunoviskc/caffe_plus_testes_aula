import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantidade;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const QuantitySelector({
    super.key,
    required this.quantidade,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: onRemove, icon: const Icon(Icons.remove)),

          Text(
            quantidade.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),

          IconButton(onPressed: onAdd, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
