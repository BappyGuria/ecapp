import 'package:ecapp/features/product/ui/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductDetailsScreen.name,arguments: '1234');
      },
      child: Container(
        width: 140,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: AppColors.themeColor.withOpacity(0.1),
                  offset: Offset(0.0, 0.07),
                  blurRadius: 5
              )
            ]
        ),
        child: Column(
          children: [
            Container(
              width: 140,
              decoration: BoxDecoration(
                  color: AppColors.themeColor.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                AssetPath.nikeShopImage,
                height: 100,
              ),
            ),
            Text(
              'New Year Special Shoe 30',
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.black54,fontWeight: FontWeight.w600
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '100',
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: AppColors.themeColor),
                ),
                Wrap(
                  children: [
                    Icon(Icons.star,color: Colors.amber,size: 20,),
                    Text('4.5',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 12),),
                  ],
                ),
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
            )
          ],
        ),
      ),
    );
  }
}