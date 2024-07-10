
import 'package:equatable/equatable.dart';

abstract class CounterAppsEvent extends Equatable{
  CounterAppsEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class IncrementCounter extends CounterAppsEvent{}
class DicrementCounter extends CounterAppsEvent{}