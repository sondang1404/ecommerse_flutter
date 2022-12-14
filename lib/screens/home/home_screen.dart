import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerse_app/models/category_modal.dart';
import 'package:ecommerse_app/models/product_modal.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = "/";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Zero to Unicorn"),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
            const SectionTitle(title: "RECOMMENDED"),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isRecommended == true)
                    .toList()),
            const SectionTitle(title: "MOST POPULAR"),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isPopular == true)
                    .toList()),
          ],
        ),
      ),
    );
  }
}
