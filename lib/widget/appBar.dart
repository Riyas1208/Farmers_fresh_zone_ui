import 'package:ecommerce/util/colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      backgroundColor: kGreenColor,
      foregroundColor: kWhiteColor,
      titleTextStyle:
      const TextStyle(fontWeight: FontWeight.w900, fontSize: 18,color: kWhiteColor),
      title: const Text("FARMERS FRESH ZONE"),
      actions: const [
        Row(
          children: [
            Icon(
                Icons.location_on_outlined,
                color: kWhiteColor,
                opticalSize: 20,
                size: 14,
                weight: 100,
                grade: -25,
                fill: 0),
            Text(
              "Kochi",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.expand_more,
                color: kWhiteColor,
                opticalSize: 20,
                size: 14,
                weight: 100,
                grade: -25,
                fill: 0),
          ],
        )
      ],
      bottom: AppBar(
        backgroundColor: kGreenColor,
        elevation: 0,
        title: SizedBox(
          width: double.infinity,
          height: 30,
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              filled: true,
              fillColor: kWhiteColor,
              isDense: true,
              prefixIcon: const Icon(
                Icons.search,
                color: kGreyColor,
                opticalSize: 20,
                size: 16,
                weight: 100,
                grade: -25,
                fill: 0,
              ),
              hintText: "Search for Vegetables, Fruits ..",
              hintStyle: const TextStyle(color: kGreyColor, fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: kWhiteColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: kWhiteColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}