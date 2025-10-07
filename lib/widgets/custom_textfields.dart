import 'package:flutter/material.dart';

class CustomTextfields extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final VoidCallback? onTap;

  const CustomTextfields({
    super.key,
    required this.controller,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      obscureText: text == "Password" || text == "Confirm Password",
      decoration: InputDecoration(
        prefixIcon: text == "Search dishes, restaurants"
            ? const Icon(Icons.search)
            : null,

        filled: true,

        // ignore: deprecated_member_use
        fillColor: Colors.grey.withOpacity(0.3),

        suffixIcon: text == "Password" || text == "Confirm Password"
            ? IconButton(icon: Icon(Icons.visibility), onPressed: () {})
            : text == "Search dishes, restaurants"
            ? IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  controller.clear();
                },
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 15,
        ),
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
      ),
      style: const TextStyle(color: Colors.black),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$text is required";
        }
        if (text == "Email" &&
            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return "Enter a valid email";
        }
        if (text == "Password" && value.length < 6) {
          return "Password must be at least 6 characters";
        }
        return null;
      },
    );
  }
}
