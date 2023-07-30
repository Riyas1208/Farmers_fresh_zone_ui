import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List sliderImage = [
      "https://res.cloudinary.com/farmersfreshzone/image/upload/v1689829708/banner/cwsi2grxcaz1xchgtn2g.jpg",
      "https://t3.ftcdn.net/jpg/02/72/61/04/240_F_272610481_sG8NpOrkR9RcqwtkgOk1LxZDcT3GCzru.jpg",
      "https://t4.ftcdn.net/jpg/02/61/88/57/240_F_261885799_wChAE2Eseb3sGtTNcz1nvi0V51p6mcMZ.jpg",
    ];
    return CarouselSlider(
      items:  List.generate(sliderImage.length, (index) => SliderItemCard(imageUrl: sliderImage[index])),
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          //aspectRatio: 16 / 9,
          aspectRatio: 64/10,
          height: 200,
          viewportFraction: 1
      ),
    );
  }
}

class SliderItemCard extends StatelessWidget {
  final String imageUrl;
  const SliderItemCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}

