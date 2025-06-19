import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class IncDrcButton extends StatefulWidget {
  const IncDrcButton({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  State<IncDrcButton> createState() => _IncDrcButtonState();
}

class _IncDrcButtonState extends State<IncDrcButton> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildIconButton(onTap: () {
          if(value > 1){
            value--;
            widget.onChange(value);
            setState(() {

            });
          }
        }, icon: Icons.remove),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(value.toString()),
        ),
        _buildIconButton(
            onTap: () {
              if(value < 10){
                value++;
                widget.onChange(value);

              }
              setState(() {});
            },
            icon: Icons.add),
      ],
    );
  }

  Widget _buildIconButton(
      {required VoidCallback onTap, required IconData icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: AppColors.themeColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
