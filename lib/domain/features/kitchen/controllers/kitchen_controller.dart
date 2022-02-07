import 'package:d_kitchen/core/entities/order.dart';
import 'package:get/get.dart';

class KitchenController {
  RxList<Order> orders = [
    Order(
      number: 24356232,
      type: OrderType.fast,
      items: [],
    ),
    Order(
      number: 564545,
      type: OrderType.slow,
      items: [],
    ),
    Order(
      number: 45653,
      type: OrderType.fast,
      items: [],
    ),
    Order(
      number: 445353,
      type: OrderType.fast,
      items: [],
    ),
  ].obs;
}
