import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final String imagem;
  final String titulo;
  final Widget paginaDestino;

  const CardMenu({
    super.key,
    required this.imagem,
    required this.titulo,
    required this.paginaDestino,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagem,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => paginaDestino),
                );
              },
              child: Text(titulo),
            ),
          ),
        ],
      ),
    );
  }
}
