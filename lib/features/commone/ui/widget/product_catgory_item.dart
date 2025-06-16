import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ProductCategoryItem extends StatelessWidget {
  const ProductCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.themeColor.withOpacity(0.15)),
          child: Icon(
            Icons.computer,
            color: AppColors.themeColor,
            size: 32,
          ),
        ),
        Text(
          'Computer',
          style: TextTheme.of(context)
              .bodyLarge
              ?.copyWith(color: AppColors.themeColor),
        )
      ],
    );
  }
}