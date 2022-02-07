import 'package:d_kitchen/infra/datasources/errors/iorder_source_error.dart';

class OrderNullError implements IOrderSourceError {
  @override
  ErrorType getError() {
    return ErrorType.http;
  }
}
