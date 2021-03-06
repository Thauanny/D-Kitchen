import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../domain/entities/order.dart';
import '../domain/features/kitchen/presenters/order_page.dart';

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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderPage(order: order)));
        },
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
                  order.id.toString(),
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
                      order.foods.length.toString(),
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
