import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  bool isSwithc;
 double slider;
  SwitchState({this.isSwithc = false,this.slider=1.0});

  SwitchState copyWith({bool? isSwithc,double?slider}) {
    return SwitchState(isSwithc: isSwithc ?? this.isSwithc,
    slider: slider??this.slider
    );
  }

  @override
  List<Object?> get props =>[isSwithc,slider];
}

final class SwitchInitial extends SwitchState {}
