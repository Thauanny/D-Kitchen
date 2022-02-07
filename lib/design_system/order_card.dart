import 'package:d_kitchen/core/entities/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderCard extends StatelessWidget {
  final double width;
  final double height;
  final Order order;

  const OrderCard({
    Key? key,
    required this.width,
    required this.height,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double iconsHeight = height * 0.4;
    final double dividerIndent = width * 0.06;

    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(20),
        )),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(indent: dividerIndent, endIndent: dividerIndent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: iconsHeight,
                  height: iconsHeight,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/${order.type.name()}.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  order.number.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: iconsHeight,
                  height: iconsHeight,
                  child: Center(
                    child: Text(
                      order.items.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(indent: dividerIndent, endIndent: dividerIndent),
          ],
        ),
      ),
    );
  }
}
