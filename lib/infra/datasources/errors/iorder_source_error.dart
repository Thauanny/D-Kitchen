enum ErrorType { http }

abstract class IOrderSourceError {
  ErrorType getError();
}
