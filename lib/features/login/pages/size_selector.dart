import 'package:flutter/material.dart';

class SizeSelector extends StatelessWidget {
  final String tamanhoSelecionado;
  final Function(String) onSelected;

  const SizeSelector({
    super.key,
    required this.tamanhoSelecionado,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('SIZE', style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 12),

          Row(
            children: [
              SizeOption(
                label: '8 oz',
                selected: tamanhoSelecionado == '8 oz',
                onTap: () => onSelected('8 oz'),
              ),

              const SizedBox(height: 12),
              Padding(padding: EdgeInsets.all(10)),

              SizeOption(
                label: '12 oz',
                selected: tamanhoSelecionado == '12 oz',
                onTap: () => onSelected('12 oz'),
              ),

              const SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(10)),

              SizeOption(
                label: '16 oz',
                selected: tamanhoSelecionado == '16 oz',
                onTap: () => onSelected('16 oz'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SizeOption extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const SizeOption({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFFFFC58F) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.brown.shade200),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.coffee_outlined),

              const SizedBox(height: 6),

              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
