import 'package:ecommerce/data/ecommerce.dart';
import 'package:flutter/material.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: SizedBox(
        child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: categorys.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2.49 / 2.7,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
          ),
          itemBuilder: (context, index) => CategoryItemCard(
              itemName: categorys[index], imageUrl: categoryImageUrl[index]),
        ),
      ),
    );
  }
}

class CategoryItemCard extends StatelessWidget {
  final String itemName;
  final String imageUrl;
  const CategoryItemCard(
      {super.key, required this.itemName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl),
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 25,
            child: Text(
              itemName,
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}