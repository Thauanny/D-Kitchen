import 'package:dartz/dartz.dart' show Either;

import '../../domain/entities/order.dart';
import 'errors/iorder_source_error.dart';

abstract class IOrderSource {
  Future<Either<List<Order>, IOrderSourceError>> fetchOrders();
}
