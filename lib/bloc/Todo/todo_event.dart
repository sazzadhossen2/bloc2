import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  TodoEvent();
}

class AddTodoEvent extends TodoEvent {
  final String task;
  AddTodoEvent(this.task);
  @override
  List<Object?> get props => [task];
}

class RemoveTodoEvent extends TodoEvent {
  final Object index;
  RemoveTodoEvent(this.index);
  @override
  List<Object?> get props => [index];
}
