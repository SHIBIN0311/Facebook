import 'package:facebook/custom/menu_items.dart';
import 'package:flutter/material.dart';


class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.items});

  final Items items;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(    
            mainAxisAlignment: MainAxisAlignment.center,      
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                items.itemImage,
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
              Text(items.itemName),
            ],
          ),
        ),
      ),
    );
  }
}

