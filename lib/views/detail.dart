import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';

class DetailPage extends StatelessWidget {
  final Menu product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [Image.network(product.image),
        Text(product.price)],
      ),
    );
  }
}
