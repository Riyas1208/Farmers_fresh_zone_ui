import 'package:ecommerce/widget/bottom.dart';
import 'package:ecommerce/util/colors.dart';
import 'package:ecommerce/widget/appBar.dart';
import 'package:ecommerce/widget/banner.dart';
import 'package:ecommerce/widget/blog_tile.dart';
import 'package:ecommerce/widget/category.dart';
import 'package:ecommerce/widget/chips.dart';
import 'package:ecommerce/widget/customer_review.dart';
import 'package:ecommerce/widget/footer1.dart';
import 'package:ecommerce/widget/footer.dart';
import 'package:ecommerce/widget/main_title_widget.dart';
import 'package:ecommerce/widget/product_grid.dart';
import 'package:ecommerce/widget/service.dart';
import 'package:ecommerce/widget/slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: HomeScreen(),));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List _widgets = const [
    ChipContainerWidget(),
    SliderWidget(),
    ServiceFeaturesWidget(),
    MainTitleWidget(title: "Shop By Category"),
    CategoryGridWidget(),
    BannerWidget(),
    MainTitleWidget(title: "Best Selling Products"),
    ProductGridWidget(),
    BannerWidget(),
    BlogTileWidget(),
    CustomerReviewWidget(),
    FooterWidget(),
    FoooterBannerWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppBarWidget(),
            SliverList.builder(
                itemCount: _widgets.length,
                itemBuilder: (context,index) => _widgets[index]
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}