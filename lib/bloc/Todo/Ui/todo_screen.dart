import 'package:bloc2/bloc/Todo/todo_bloc.dart';
import 'package:bloc2/bloc/Todo/todo_event.dart';
import 'package:bloc2/bloc/Todo/todo_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            return Center(child: Text("No todo yet"));
          } else if (state.todos.isNotEmpty) {
            return ListView.builder(
                itemCount: state.todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.todos[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        BlocProvider.of<TodoBloc>(context)
                            .add(RemoveTodoEvent(state.todos[index]));
                      },
                    ),
                  );
                });
          }
        else{
          return Center(child: Text("Unknown"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          for(int i=0;i<10;i++){
            BlocProvider.of<TodoBloc>(context).add(AddTodoEvent('Task $i'));
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
