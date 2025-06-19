import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecapp/app/assets_path.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/constants.dart';
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
            child: Column(
              children: [
                ProductImageSlider(currentCarousel: _currentCarousel),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text('Nike 1204HST - new shoe of 2025',style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            letterSpacing: 0.6,
                            color: Colors.black54
                          ),)),
                          IncDrcButton(onChange: (int value) {  },)
                        ],
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: [
                              Icon(Icons.star,color: Colors.amber,size: 20,),
                              Text('4.5',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          TextButton(onPressed: (){}, child: Text('Reviews')),
                          Card(
                            color: AppColors.themeColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.favorite_outline_rounded,size: 18,color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                      Text('Color',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),

                    ],
                  ),
                ),
              ],
            ),
          ),
          _buildProductPriceAndAddToCartSection()
        ],
      ),
    );
  }

  Widget _buildProductPriceAndAddToCartSection() {
    return Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColors.themeColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8)
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
              )
            ],
          ),
        );
  }
}


