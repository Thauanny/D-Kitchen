import 'package:d_kitchen/core/entities/order.dart' as d_kitchen;
import 'package:dartz/dartz.dart';

import 'errors/iorder_source_error.dart';

abstract class IOrderSource {
  Future<Either<List<d_kitchen.Order>, IOrderSourceError>> fetchOrders();
}
