import 'package:AryaWear/Dashboard_Screen/clothes_list_page.dart';
import 'package:flutter/material.dart';

class catagory extends StatefulWidget {
  const catagory({Key? key}) : super(key: key);

  @override
  State<catagory> createState() => _catagoryState();
}

class _catagoryState extends State<catagory> {
  List<Map<String, dynamic>> clothesData = [
    {
      'img':
          'https://img.freepik.com/free-vector/white-t-shirt-mockup-t-shirt-with-short-sleeves_107791-2029.jpg?w=1060&t=st=1690110033~exp=1690110633~hmac=2d052cb5be6ddfde3e49e780c2d9ca125798f9dab438065020d447fabab19af7',
      'name': 'T-Shirts',
      'price': '\$19.99',
    },
    {
      'img':
          'https://www.shutterstock.com/shutterstock/photos/744673549/display_1500/stock-photo-close-up-of-man-s-legs-in-jeans-and-boots-on-wooden-floor-free-space-for-text-744673549.jpg',
      'name': 'Jeans',
      'price': '\$39.99',
    },
    {
      'img':
          'https://images.unsplash.com/photo-1620012253295-c15cc3e65df4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNoaXJ0fGVufDB8fDB8fHww&w=1000&q=80',
      'name': 'Shirts',
      'price': '\$49.99',
    },
    // Add more items here if needed
  ];
List<String> categories = ['Category 1', 'Category 2', 'Category 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothes Category'),
      ),
      body: ListView.builder(
        itemCount: clothesData.length,
        itemBuilder: (context, index) {
          return _buildClothesCard(clothesData[index], index);
        },
      ),
    );
  }

  Widget _buildClothesCard(Map<String, dynamic> itemData, index) {
    return GestureDetector(
      
      onTap:() => {
        // print('Added to cart: ${itemData['name']}')
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClothesListPage(category: categories[index]),
                ),
              )
      },
     
      child: Padding(
        
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              itemData['img'],
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              itemData['name'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            
          ],
        ),
      ),
    );
  }
}
