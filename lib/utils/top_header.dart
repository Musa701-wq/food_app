import 'package:firstdemo/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/cart/add_to_cart_controller.dart'; // ✅ import controller

class TopHeader extends StatefulWidget {
  final VoidCallback? onMenuPressed;
  final VoidCallback? onCartPressed;
  final bool? cart;
  final String? uptext;
  final String? lowtext;
  final Icon? icon;
  final Icon? icon2;
  final Color? icon1color;
  final String? centertext;
  final String? textbutton;
  final VoidCallback? textbuttonfunc;

  const TopHeader({
    super.key,
    this.onMenuPressed,
    this.cart,
    this.onCartPressed,
    this.uptext,
    this.lowtext,
    this.centertext,
    this.icon,
    this.icon2,
    this.icon1color,
    this.textbutton,
    this.textbuttonfunc,
  });

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  final AddToCartController cartController = Get.find<AddToCartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          // ignore: deprecated_member_use
          backgroundColor: Colors.grey.withOpacity(0.2),
          radius: 25,
          child: IconButton(
            iconSize: 19,
            onPressed: widget.onMenuPressed,
            color: widget.icon1color ?? Colors.black,
            icon:
                widget.icon ??
                Image.asset("assets/images/Menu.png", width: 22, height: 22),
          ),
        ),
        const SizedBox(width: 20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.centertext != null
              ? [
                  Text(
                    widget.centertext ?? "",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]
              : [
                  Text(
                    widget.uptext ?? "",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.lowtext ?? "",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
        ),

        const Spacer(),
        widget.cart == true
            ? SizedBox.shrink()
            : widget.textbutton != null
            ? TextButton(
                onPressed: widget.textbuttonfunc,
                child: Text(
                  widget.textbutton!,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            : Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: widget.icon2 != null
                        // ignore: deprecated_member_use
                        ? Colors.grey.withOpacity(0.2)
                        : Colors.black,
                    radius: 25,
                    child: IconButton(
                      onPressed:
                          widget.onCartPressed ??
                          () {
                            Get.toNamed(AppRoutes.addtocart);
                          },
                      color: widget.icon2 != null ? Colors.black : Colors.white,
                      icon:
                          widget.icon2 ??
                          Image.asset(
                            "assets/images/shopping-bag.png",
                            width: 22,
                            height: 22,
                          ),
                    ),
                  ),

                  Positioned(
                    right: -2,
                    top: -2,
                    child: Obx(() {
                      int count = cartController.data.length;
                      return count > 0
                          ? Container(
                              height: 18,
                              width: 18,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                count.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : const SizedBox();
                    }),
                  ),
                ],
              ),
      ],
    );
  }
}
