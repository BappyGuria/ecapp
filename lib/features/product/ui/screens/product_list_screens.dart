import 'package:ecapp/features/commone/ui/widget/product_card.dart';
import 'package:ecapp/features/commone/ui/widget/product_catgory_item.dart';
import 'package:flutter/material.dart';

class ProductListScreens extends StatefulWidget {
  const ProductListScreens({super.key, required this.category});

  final String category;

  static const String name = '/product-list';

  @override
  State<ProductListScreens> createState() => _ProductListScreensState();
}

class _ProductListScreensState extends State<ProductListScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 15),
          itemBuilder: (context, index) {
            return FittedBox(child: ProductCard());
          }),
    );
  }
}
