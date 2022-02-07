import 'package:d_kitchen/core/entities/order.dart' as d_kitchen;
import 'package:d_kitchen/infra/datasources/errors/iorder_source_error.dart';
import 'package:dartz/dartz.dart';

abstract class IOrderService {
  Future<Either<List<d_kitchen.Order>, IOrderSourceError>> fetchOrders();
}
