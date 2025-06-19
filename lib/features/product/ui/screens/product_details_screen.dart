import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecapp/app/assets_path.dart';
import 'package:ecapp/features/product/ui/widget/size_picker.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/constants.dart';
import '../widget/color_picker.dart';
import '../widget/inc_drc_button.dart';
import '../widget/product_image_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.productId});

  static const String name = 'product_details';

  final String productId;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final ValueNotifier<int> _currentCarousel = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: TextTheme.of(context).titleMedium,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ProductImageSlider(currentCarousel: _currentCarousel),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildProductNameAndIncDecSection(),
                        _buildReviewsSection(),
                        Text(
                          'Color',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ColorPicker(
                          colors: ['Red', 'Black', 'White', 'blue'],
                          onChange: (String color) {
                            print(color);
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Size',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizePicker(
                          sizes: ['S', 'M', 'L', 'XL'],
                          onChange: (String size) {
                            print(size);
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Reference site about Lorem Ipsum, giving information on its origins, as well a random Lipsum generator Reference site about Lorem Ipsum, giving information on its origins, as well asa random Lips um generator ",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildProductPriceAndAddToCartSection()
        ],
      ),
    );
  }

  Widget _buildProductNameAndIncDecSection() {
    return Row(
      children: [
        Expanded(
            child: Text(
          'Nike 1204HST - new shoe of 2025',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              letterSpacing: 0.6,
              color: Colors.black54),
        )),
        IncDrcButton(
          onChange: (int value) {},
        )
      ],
    );
  }

  Widget _buildReviewsSection() {
    return Row(
      children: [
        Wrap(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Text(
              '4.5',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  fontSize: 12),
            ),
          ],
        ),
        TextButton(onPressed: () {

        }, child: Text('Reviews')),
        Card(
          color: AppColors.themeColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              Icons.favorite_outline_rounded,
              size: 18,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildProductPriceAndAddToCartSection() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.3),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), topLeft: Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: TextTheme.of(context).bodyLarge,
              ),
              Text(
                '${Constants.takaSign}1,00',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColors.themeColor,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Add To Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
