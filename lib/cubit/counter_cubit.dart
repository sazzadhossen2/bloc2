import 'package:bloc/bloc.dart';
import 'package:bloc2/cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int counter = 0;

  CounterCubit() : super(CounterInitiate());

  void CounterIncreased() {
    counter++;
    emit(CounterUpdate(counter: counter));
  }

  void Counterdecreased() {
    counter--;
    emit(CounterUpdate(counter: counter));
  }
}
