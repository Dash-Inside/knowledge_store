import 'package:equatable/equatable.dart';

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => [];
}

abstract class UseCase<T, P> {
  const UseCase();

  Future<T> call(P p);
}
