import 'package:equatable/equatable.dart';

class CounterAppsState extends Equatable {
  int count;

  CounterAppsState({this.count = 0});

  CounterAppsState copyWith({int? count}) {
    return CounterAppsState(
      count: count ?? this.count,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
