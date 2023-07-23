import 'package:AryaWear/Dashboard_Screen/clothesCard.dart';
import 'package:flutter/material.dart';

class Clothes {
  final String name;
  final String category;
  final String price;
  final String imageUrl;

  Clothes({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
  });
}
class ClothesListPage extends StatelessWidget {
  final String category;

  // Dummy data for clothes based on category
  List<Clothes> clothesList = [
    Clothes(
      name: 'T-Shirt 1',
      category: 'Category 1',
      price: '\$19.99',
      imageUrl: 'https://example.com/tshirt1.jpg',
    ),
    Clothes(
      name: 'T-Shirt 2',
      category: 'Category 1',
      price: '\$22.99',
      imageUrl: 'https://example.com/tshirt2.jpg',
    ),
    Clothes(
      name: 'Jeans 1',
      category: 'Category 2',
      price: '\$39.99',
      imageUrl: 'https://example.com/jeans1.jpg',
    ),
    Clothes(
      name: 'Jeans 2',
      category: 'Category 2',
      price: '\$45.99',
      imageUrl: 'https://example.com/jeans2.jpg',
    ),
        Clothes(
      name: 'Shirt 1',
      category: 'Category 3',
      price: '\$39.99',
      imageUrl: 'https://example.com/jeans1.jpg',
    ),
    Clothes(
      name: 'Shirt 2',
      category: 'Category 3',
      price: '\$45.99',
      imageUrl: 'https://example.com/jeans2.jpg',
    ),
    // Add more clothes data here as needed
  ];

  ClothesListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Clothes> filteredClothes =
        clothesList.where((clothes) => clothes.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: filteredClothes.length,
        itemBuilder: (context, index) {
          return ClothesCard(clothes: filteredClothes[index]);
        },
      ),
    );
  }
}