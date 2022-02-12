import 'package:d_kitchen/domain/entities/food.dart';
import 'package:flutter/material.dart';

import '../../../../core/entities/order.dart';
import '../../../../design_system/orders_food_card.dart';
import '../../../../design_system/primary_button.dart';

class OrderPage extends StatelessWidget {
  final Order order;
  const OrderPage({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: numberOrderCard(context, order)),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) => Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    FoodCard(
                      orderNumber: order.number,
                      food: Food(
                          name: 'test',
                          imageUrls: List.from([
                            "https://www.skinnytaste.com/wp-content/uploads/2012/09/skinny-chicken-parmigiana-550x733.jpg",
                            "https://assets.bonappetit.com/photos/5ea9a053093f970009773e21/master/w_1600,c_limit/Chicken-Parm-Pan-Inline.jpg"
                          ]),
                          price: 50.00,
                          id: 1,
                          quantity: 1),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: PrimaryButton(onPressed: () {}, text: 'Pedido Pronto'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget numberOrderCard(BuildContext context, Order order) {
  return Padding(
    padding: const EdgeInsets.only(top: 60.0, left: 60, right: 60),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(
            height: 40,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                order.number.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 10,
          ),
        ],
      ),
    ),
  );
}
