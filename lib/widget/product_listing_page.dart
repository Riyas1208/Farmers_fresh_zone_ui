import 'package:flutter/material.dart';
import 'package:ecommerce/widget/product_card.dart';

class ProductListingPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "title": "FRUITS",
      "imageUrl": "https://images.unsplash.com/photo-1590779033823-2aa50ccf7292?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",

    },
    {
      "title": "VEGETABLES",
      "imageUrl": "https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg"
    },
    {
      "title": "FRESH CUTS",
      "imageUrl": "https://5.imimg.com/data5/FD/HN/GLADMIN-58226724/garden-fresh-cut-fruit-pack-500x500.png",

    },
    {
      "title": "EXOTIC",
      "imageUrl": "https://www.healthifyme.com/blog/wp-content/uploads/2019/12/exotic-fruits-cover-1.jpg",

    },
    // Add more products as needed
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce App"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            title: products[index]["title"],
            imageUrl: products[index]["imageUrl"],
          );
        },
      ),
    );
  }
}