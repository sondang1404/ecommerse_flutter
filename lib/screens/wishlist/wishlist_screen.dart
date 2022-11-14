import 'package:ecommerse_app/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  static const String routeName = "/wishlist";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "WishList"),
      bottomNavigationBar: const CustomNavBar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.2),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: ProductCard(
              product: Product.products[index],
              widthFactor: 1.1,
              leftPosition: 100,
              isWishlist: true,
            ));
          }),
    );
  }
}
