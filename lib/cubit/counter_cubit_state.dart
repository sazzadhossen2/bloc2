import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {
  CounterCubitState();
}

class CounterInitiate extends CounterCubitState {
  @override
  List<Object?> get props => [];
}

class CounterUpdate extends CounterCubitState {
  @override
  int counter;

  CounterUpdate({required this.counter});

  List<Object?> get props => [counter];
}
