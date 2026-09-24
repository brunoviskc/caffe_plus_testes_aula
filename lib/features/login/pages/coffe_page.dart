import 'package:coffe_plus/features/login/pages/bottom_cart_bar.dart';
import 'package:coffe_plus/features/login/pages/milk_selector.dart';
import 'package:coffe_plus/features/login/pages/productImage.dart';
import 'package:coffe_plus/features/login/pages/productInfo.dart';
import 'package:coffe_plus/features/login/pages/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'size_selector.dart';
import 'sweetness_selector.dart';
import 'quantity_selector.dart';

class CoffePage extends StatefulWidget {
  const CoffePage({super.key});

  @override
  State<CoffePage> createState() => _CoffePageState();
}

class _CoffePageState extends State<CoffePage> {
  String tamanhoSelecionado = '12 oz';
  String leiteSelecionado = 'Whole Milk';
  String docuraSelecionada = 'None';
  int quantidade = 1;
  double precoBase = 4.50;

  double calcularTotal() {
    return precoBase * quantidade;
  }

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
                    MilkSelector(
                      leiteSelecionado: leiteSelecionado,
                      onSelected: (leite) {
                        setState(() {
                          leiteSelecionado = leite;
                        });
                      },
                    ),
                    SweetnessSelector(
                      docuraSelecionada: docuraSelecionada,
                      onSelected: (docura) {
                        setState(() {
                          docuraSelecionada = docura;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            BottomCartBar(
              quantidade: quantidade,
              total: calcularTotal(),

              onAdd: () {
                setState(() {
                  quantidade++;
                });
              },

              onRemove: () {
                if (quantidade > 1) {
                  setState(() {
                    quantidade--;
                  });
                }
              },

              onAddToCart: () {
                print('Adicionar ao carrinho');
              },
            ),
          ],
        ),
      ),
    );
  }
}
