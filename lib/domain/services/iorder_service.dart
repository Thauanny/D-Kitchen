import 'package:d_kitchen/infra/datasources/errors/iorder_source_error.dart';
import 'package:dartz/dartz.dart';

import '../entities/order.dart' as d_kitchen;

abstract class IOrderService {
  Future<Either<List<d_kitchen.Order>, IOrderSourceError>> fetchOrders();
}
