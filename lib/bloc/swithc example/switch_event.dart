abstract class SwitchEvent {
  SwitchEvent();
  @override
  List<Object> get props=>[];
}

class EnableDisableNotification extends SwitchEvent{}
class Slidercon extends SwitchEvent{
  double slider;
  Slidercon({required this.slider});
  @override
  List<Object> get props=>[slider];
}