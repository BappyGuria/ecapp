import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onChange});

  final List<String> sizes;
  final Function(String) onChange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {

  String? selectedSize;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for(String size in widget.sizes)
          GestureDetector(
            onTap: (){
              selectedSize = size;
              setState(() {

              });
              widget.onChange(selectedSize!);
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54,width: 2),
                color: selectedSize == size ? AppColors.themeColor : null
              ),
              child: Text(size,style: TextStyle(
                color: selectedSize == size ? Colors.white: null
              ),),
            ),
          )
      ],
    );
  }
}
