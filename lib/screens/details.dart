import 'package:flutter/material.dart';
import 'package:sneakers_hub/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: Color.fromARGB(255, 134, 200, 188),
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Sneakers Name : ${product.fields.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Amount : ${product.fields.amount}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description : ${product.fields.description}', style: TextStyle(fontSize: 20)),
            // Add more attributes as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // Navigate back to product list
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}