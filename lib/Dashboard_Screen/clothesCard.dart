import 'package:AryaWear/Dashboard_Screen/clothes_list_page.dart';
import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget {
  final Clothes clothes;

  ClothesCard({required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              clothes.imageUrl,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Text('Error: Unable to load image');
              },
            ),
            SizedBox(height: 10),
            Text(
              clothes.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              clothes.price,
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement the logic to add the item to the cart.
                // You can use a cart provider or store the cart items in a separate list.
                print('Added to cart: ${clothes.name}');
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
