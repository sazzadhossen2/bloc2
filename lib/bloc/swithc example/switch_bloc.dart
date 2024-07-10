import 'package:bloc/bloc.dart';
import 'package:bloc2/bloc/swithc%20example/switch_event.dart';
import 'package:bloc2/bloc/swithc%20example/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableDisableNotification>(_enableDisableNotification);
    on<Slidercon>(_slider);
  }

  void _enableDisableNotification(
      EnableDisableNotification event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isSwithc: !state.isSwithc));
  }

  void _slider(Slidercon event, Emitter<SwitchState> emit) {
    emit(state.copyWith(slider: event.slider));
  }
}
