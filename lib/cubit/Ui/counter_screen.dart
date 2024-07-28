import 'package:bloc2/cubit/counter_cubit.dart';
import 'package:bloc2/cubit/counter_cubit.dart';
import 'package:bloc2/cubit/counter_cubit_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, CounterCubitState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (state is CounterUpdate)?Text(state.counter.toString()):Text("0"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {

                      context.read<CounterCubit>().Counterdecreased();
                    }, child: Icon(Icons.remove),),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterCubit>().CounterIncreased();
                    }, child: Icon(Icons.add),)
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
