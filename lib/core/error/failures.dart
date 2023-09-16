import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? error;

  const Failure([this.error]);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GeneralFailure extends Failure {
  const GeneralFailure([String? error]) : super(error);
}

class ServerFailure extends Failure {
  const ServerFailure([String? error]) : super(error);
}

class CacheFailure extends Failure {
  const CacheFailure([String? error]) : super(error);
}

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return "Server Failure";
    case CacheFailure:
      return "Cache Failure";

    default:
      return "Unknown";
  }
}
