import 'package:flutter/material.dart';

class CustomCircleButtons extends StatelessWidget {
  final VoidCallback func;
  final Icon? icon;
  final Color? color;
  final double? height;
  final double? width;

  // ignore: prefer_const_constructors_in_immutables
  CustomCircleButtons({
    super.key,
    required this.func,
    this.icon,
    this.color,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: height ?? 49,
        width: width ?? 49,

        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color ?? Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Center(child: icon ?? Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}
