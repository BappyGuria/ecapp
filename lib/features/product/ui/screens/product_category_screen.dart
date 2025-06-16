import 'package:ecapp/features/commone/ui/controller/main_botom_nav_controller.dart';
import 'package:ecapp/features/commone/ui/widget/product_catgory_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  static const String name = 'product-category';

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,__){
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton( onPressed: () {
            Get.find<MainBottomNavController>().backToHome();
          }, icon: Icon(Icons.arrow_back_ios),),
          title: Text('Category',style: TextTheme.of(context).titleMedium,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return FittedBox(
                child: ProductCategoryItem(),
              );
            },
          ),
        ),
      ),
    );
  }
}
