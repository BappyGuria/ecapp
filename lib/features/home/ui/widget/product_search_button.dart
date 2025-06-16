import 'package:flutter/material.dart';

class ProductSearchButton extends StatelessWidget {
  const ProductSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onSubmitted: (String? value){
        /// Todo search Product
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: 'Search',
        border: OutlineInputBorder(
            borderSide: BorderSide.none
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none
        ),
      ),

    );
  }
}