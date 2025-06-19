import 'package:ecapp/features/commone/ui/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../commone/ui/controller/main_botom_nav_controller.dart';

class WishListScreens extends StatefulWidget {
  const WishListScreens({super.key,});

  static const String name = '/wish-list';

  @override
  State<WishListScreens> createState() => _WishListScreensState();
}

class _WishListScreensState extends State<WishListScreens> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_,__){
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Get.find<MainBottomNavController>().backToHome();
          }, icon: Icon(Icons.arrow_back_ios_sharp)),
          title: Text('Wish List'),
        ),
        body: GridView.builder(
            itemCount: 20,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 15),
            itemBuilder: (context, index) {
              return FittedBox(child: ProductCard());
            }),
      ),
    );
  }
}
