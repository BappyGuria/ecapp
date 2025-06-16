import 'package:ecapp/features/commone/ui/controller/main_botom_nav_controller.dart';
import 'package:ecapp/features/home/ui/screens/home_screens.dart';
import 'package:ecapp/features/product/ui/screens/product_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreens extends StatefulWidget {
  const MainBottomNavScreens({super.key});

  static const String name = 'main-bottom-nav';

  @override
  State<MainBottomNavScreens> createState() => _MainBottomNavScreensState();
}

class _MainBottomNavScreensState extends State<MainBottomNavScreens> {
  final List<Widget> _screens = [
    HomeScreens(),
    ProductCategoryScreen(),
    ProductCategoryScreen(),
    ProductCategoryScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (navController) {
        return Scaffold(
          body: _screens[navController.selectIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: navController.selectIndex,
            onDestinationSelected: navController.changeIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.category), label: 'Category'),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.favorite_outline_rounded), label: 'Favorite'),
            ],
          ),
        );
      },
    );
  }
}
