import 'package:flutter/material.dart';
import 'package:latkuis/models/data.dart';

class DetailPage extends StatelessWidget {
  final Menu product;

  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(product.image,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,)),
            const SizedBox(height: 16,),

          Text(
            product.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),

          Text(
            product.category,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 12,),

          Text(
            "Rp.${product.price}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 16),

          Text(
            "Deskripsi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8),

          Text(
            product.description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.4
            ),
          ),
          ],
        ),
      ),
    );
  }
}
