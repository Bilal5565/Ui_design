import 'package:flutter/material.dart';
import 'package:new_app/src/utils/config.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.width,
    required this.text,
    required this.disable,
    required this.onPressed,
    required this.height,
  });
  final double width;
  final double height;
  final String text;
  final bool disable;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          shadowColor: Colors.white,
          backgroundColor: Config.primaryColor,
          foregroundColor: Colors.white,
        ),
        onPressed: disable ? null : onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
