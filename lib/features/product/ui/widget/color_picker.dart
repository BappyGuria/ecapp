import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.colors, required this.onChange});

  final List<String> colors;
  final Function(String) onChange;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  String? selectedColor;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for(String color in widget.colors)
          GestureDetector(
            onTap: (){
              selectedColor = color;
              setState(() {});
              widget.onChange(selectedColor!);
            },
            child: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 2),
                borderRadius: BorderRadius.circular(5),

                color: selectedColor == color ? AppColors.themeColor : null
              ),

              child: Text(color,style: TextStyle(
                color: selectedColor == color ? Colors.white : null
              ),),
            ),
          )
      ],
    );
  }
}
