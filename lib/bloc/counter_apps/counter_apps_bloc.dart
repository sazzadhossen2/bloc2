import 'package:bloc/bloc.dart';
import 'counter_apps_event.dart';
import 'counter_apps_state.dart';

class CounterAppsBloc extends Bloc<CounterAppsEvent, CounterAppsState> {
  CounterAppsBloc() : super(CounterAppsState()) {
    on<IncrementCounter>(_increment);
    on<DicrementCounter>(_decrement);
  }

  void _increment(IncrementCounter event, Emitter<CounterAppsState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  void _decrement(DicrementCounter event, Emitter<CounterAppsState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
