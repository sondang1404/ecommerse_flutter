import 'package:ecommerse_app/models/models.dart';
import 'package:ecommerse_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: ProductCard(product: products[index]),
          );
        }),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
      ),
    );
  }
}
