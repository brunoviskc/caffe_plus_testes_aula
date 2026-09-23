import 'package:coffe_plus/features/login/pages/milk_option.dart';
import 'package:flutter/material.dart';

class MilkSelector extends StatelessWidget {
  final String leiteSelecionado;
  final Function(String) onSelected;

  const MilkSelector({
    super.key,
    required this.leiteSelecionado,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'MILK CHOICE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          MilkOption(
            title: 'Whole Milk',
            subtitle: 'Defaut & Creamy',
            selected: leiteSelecionado == 'Whole Milk',
            onTap: () => onSelected('Whole Milk'),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: MilkOption(
                  title: 'Oat Milk',
                  subtitle: '+ \$0.75',
                  selected: leiteSelecionado == 'Oat Milk',
                  onTap: () => onSelected('Oat Milk'),
                ),
              ),

              const SizedBox(height: 20),
              Padding(padding: EdgeInsets.all(10)),

              Expanded(
                child: MilkOption(
                  title: 'Almond Milk',
                  subtitle: '+ \$0.75',
                  selected: leiteSelecionado == 'Almond Milk',
                  onTap: () => onSelected('Almond Milk'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
