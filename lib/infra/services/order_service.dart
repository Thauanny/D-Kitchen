import 'package:d_kitchen/domain/services/iorder_service.dart';
import 'package:d_kitchen/infra/datasources/errors/iorder_source_error.dart';
import 'package:d_kitchen/infra/datasources/iorder_source.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/order.dart' as d_kitchen;

class OrderServiceImpl implements IOrderService {
  IOrderSource foodSource;

  OrderServiceImpl(this.foodSource);

  @override
  Future<Either<List<d_kitchen.Order>, IOrderSourceError>> fetchOrders() {
    return foodSource.fetchOrders();
  }
}
