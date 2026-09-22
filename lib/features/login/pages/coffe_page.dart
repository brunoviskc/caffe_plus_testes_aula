import 'package:coffe_plus/features/login/pages/productImage.dart';
import 'package:coffe_plus/features/login/pages/productInfo.dart';
import 'package:coffe_plus/features/login/pages/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_selector.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({super.key});

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  String tamanhoSelecionado = '12 oz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(),
                    ProductImage(),
                    ProductInfo(),
                    SizeSelector(
                      tamanhoSelecionado: tamanhoSelecionado,
                      onSelected: (tamanho) {
                        setState(() {
                          tamanhoSelecionado = tamanho;
                        });
                      },
                    ),
                    // MilkSelector(),
                    // SweetnessSelector(),
                  ],
                ),
              ),
            ),

            // BottomCartBar(),
          ],
        ),
      ),
    );
  }
}
