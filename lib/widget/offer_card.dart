import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String offerTitle;
  final String imageUrl;

  OfferCard({required this.offerTitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              offerTitle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
