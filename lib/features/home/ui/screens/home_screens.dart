import 'package:ecapp/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/app_bar_icon_button.dart';
import '../widget/home_carousel_slider.dart';
import '../widget/product_search_button.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  static const String name = 'home';

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              ProductSearchButton(),
              SizedBox(
                height: 16,
              ),
              HomeCarouselSlider(),
              const SizedBox(
                height: 16,
              ),
              _buildSectionHeader(title: 'Categories', onTapSeeAll: () {}),
              _buildSectionHeader(title: 'Popular', onTapSeeAll: () {}),
              _buildSectionHeader(title: 'Special', onTapSeeAll: () {}),
              _buildSectionHeader(title: 'New', onTapSeeAll: () {}),
            ],
          ),
        ),
      ),
    );
  }



  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetPath.navAppLogoSvg,
      ),
      foregroundColor: Colors.white,
      actions: [
        AppBarIconButton(onTap: () {}, iconData: Icons.person_2_outlined),
        AppBarIconButton(onTap: () {}, iconData: Icons.call_outlined),
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.notification_add_outlined,
        ),
      ],
    );
  }

  Widget _buildSectionHeader(
      {required String title, required VoidCallback onTapSeeAll}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(
            'See All',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        )
      ],
    );
  }

}
