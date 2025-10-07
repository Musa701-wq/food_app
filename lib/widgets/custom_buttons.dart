import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback func;
  final String text;

  // ignore: prefer_const_constructors_in_immutables
  CustomButtons({super.key, required this.text, required this.func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: 60,
        width: 350,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Theme.of(context).primaryColor,
        ),
        child: Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
