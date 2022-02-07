import 'package:flutter/material.dart';

class OrderTitle extends StatelessWidget {
  final double width;
  final double height;
  final int orderNumber;

  const OrderTitle({
    Key? key,
    required this.width,
    required this.height,
    required this.orderNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double dividerIndent = width * 0.06;

    return SizedBox(
      width: width,
      height: height,
      child: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(indent: dividerIndent, endIndent: dividerIndent),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  orderNumber.toString(),
                  style: const TextStyle(color: Colors.black),
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
