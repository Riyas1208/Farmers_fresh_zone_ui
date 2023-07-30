import 'package:ecommerce/util/constants.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divider,
        Card(
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 2),
          child: Container(
            width: double.maxFinite,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/01/63/13/30/360_F_163133061_TlMOMqgxAvBuwzLAjxOQ8v1FQ3OexfRG.jpg"),
              ),
            ),
          ),
        ),
        divider
      ],
    );
  }
}