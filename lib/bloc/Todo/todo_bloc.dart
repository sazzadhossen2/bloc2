import 'package:bloc/bloc.dart';
import 'package:bloc2/bloc/Todo/todo_event.dart';
import 'package:bloc2/bloc/Todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String>todos=[];
  TodoBloc() : super(TodoState()) {
    on<AddTodoEvent>(_addTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }
  void _addTodo(AddTodoEvent event,Emitter<TodoState>emit){
    todos.add(event.task);
    emit(state.copyWith(todos: List.from(todos)));
  }
  void _removeTodo(RemoveTodoEvent event,Emitter<TodoState>emit){
    todos.remove(event.index);
    emit(state.copyWith(todos: List.from(todos)));
  }
}
