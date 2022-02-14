import 'package:get/get.dart';

import '../../../entities/order.dart';

class KitchenController {
  RxList<Order> orders = [
    Order(
      id: 24356232,
      foods: [],
      table: 'mesa 1',
      type: OrderType.fast,
    ),
    Order(
      id: 564545,
      table: 'mesa 1',
      foods: [],
      type: OrderType.slow,
    ),
    Order(
      id: 45653,
      table: 'mesa 1',
      foods: [],
      type: OrderType.slow,
    ),
    Order(
      id: 445353,
      table: 'mesa 1',
      foods: [],
      type: OrderType.fast,
    ),
  ].obs;
}
