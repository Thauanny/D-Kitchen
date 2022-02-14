import 'dart:convert';

import 'package:d_kitchen/external/errors/order_empty_error.dart';
import 'package:d_kitchen/infra/datasources/errors/iorder_source_error.dart';
import 'package:d_kitchen/infra/datasources/iorder_source.dart';
import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:http/http.dart';

import '../../domain/entities/order.dart';

class OrderSourceImpl implements IOrderSource {
  final String _url = 'http://10.0.2.2:8080';
  Client client = Client();

  @override
  Future<Either<List<Order>, IOrderSourceError>> fetchOrders() async {
    var response = await client.get(
      Uri.parse('$_url/orders'),
    );

    if (response.statusCode == 200) {
      try {
        List<dynamic> jsonBody = jsonDecode(response.body);
        List<Order> orders = [];

        for (var element in jsonBody) {
          orders.add(Order.fromMap(element));
        }

        return Left(orders);
      } catch (e) {
        return Right(OrderEmptyError());
      }
    } else {
      throw response;
    }
  }
}
