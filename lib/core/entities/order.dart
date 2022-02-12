import 'dart:convert';
import 'package:d_kitchen/domain/entities/food.dart';

enum OrderType { fast, slow }

extension Name on OrderType {
  String name() {
    switch (this) {
      case OrderType.fast:
        return 'rabbit';
      case OrderType.slow:
        return 'snail';
      default:
        throw UnimplementedError();
    }
  }
}

class Order {
  final int number;
  final OrderType type;
  final List<Food> items;

  Order({
    required this.number,
    required this.type,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'type': type,
      'items': items,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      number: map['number']!,
      type: map['type']!,
      items: map['items']!,
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) => Order.fromMap(json.decode(source));
}
