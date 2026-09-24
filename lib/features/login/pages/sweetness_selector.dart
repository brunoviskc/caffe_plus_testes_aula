import 'package:flutter/material.dart';

class SweetnessSelector extends StatelessWidget {
  final String docuraSelecionada;
  final Function(String) onSelected;

  const SweetnessSelector({
    super.key,
    required this.docuraSelecionada,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SWEETNESS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              SweetnessOption(
                label: 'None',
                selected: docuraSelecionada == 'None',
                onTap: () => onSelected('None'),
              ),

              SizedBox(width: 10),

              SweetnessOption(
                label: 'Light',
                selected: docuraSelecionada == 'Light',
                onTap: () => onSelected('Light'),
              ),

              SizedBox(width: 10),

              SweetnessOption(
                label: 'Regular',
                selected: docuraSelecionada == 'Regular',
                onTap: () => onSelected('Regular'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SweetnessOption extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const SweetnessOption({
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
          height: 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFF432C23) : Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: selected ? Colors.white : const Color(0xFF432C23),
            ),
          ),
        ),
      ),
    );
  }
}
