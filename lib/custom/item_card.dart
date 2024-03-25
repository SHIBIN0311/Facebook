import 'package:facebook/custom/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.network(
              product.image,
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(product.name),
              subtitle: Text(product.price),
            )
          ],
        ),
      ),
    );
  }
}
