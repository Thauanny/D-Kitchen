import 'package:d_kitchen/design_system/order_card.dart';
import 'package:d_kitchen/domain/features/kitchen/controllers/kitchen_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final KitchenController controller = KitchenController();

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double buttonWidth = width * 0.7;
    double buttonHeight = height * 0.1;
    double spacer = height * 0.025;

    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: height * 0.1),
        child: SizedBox(
          height: height*0.9,
          width: width,
          child: Column(
            children: widget.controller.orders
                .map((order) => Column(
                      children: [
                        SizedBox(height: spacer),
                        OrderCard(
                          order: order,
                          width: buttonWidth,
                          height: buttonHeight,
                        ),
                        SizedBox(height: spacer),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
