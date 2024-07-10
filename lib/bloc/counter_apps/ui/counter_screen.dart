import 'package:bloc2/bloc/counter_apps/counter_apps_bloc.dart';
import 'package:bloc2/bloc/counter_apps/counter_apps_event.dart';
import 'package:bloc2/bloc/counter_apps/counter_apps_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterAppsBloc, CounterAppsState>(
              builder: (context, state) {
            return Center(
                child: Text(
              state.count.toString(),
              style: TextStyle(fontSize: 30),
            ));
          }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterAppsBloc>().add(IncrementCounter());
                  },
                  child: Text("Increment")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterAppsBloc>().add(DicrementCounter());
                  },
                  child: Text('Decrment'))
            ],
          )
        ],
      ),
    );
  }
}
