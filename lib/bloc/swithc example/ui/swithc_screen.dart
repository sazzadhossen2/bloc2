import 'package:bloc2/bloc/swithc%20example/switch_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../switch_bloc.dart';
import '../switch_state.dart';

class SwithcScreen extends StatelessWidget {
  const SwithcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swithc Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Notification"),
              BlocBuilder<SwitchBloc, SwitchState>(
                  buildWhen: (previous, current) =>
                      previous.isSwithc != current.isSwithc,
                  builder: (context, state) {
                    print("level1");
                    return Switch(
                        value: state.isSwithc,
                        onChanged: (newValue) {
                          context
                              .read<SwitchBloc>()
                              .add(EnableDisableNotification());
                        });
                  })
            ],
          ),
          SizedBox(
            height: 30,
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (previous, current) =>
                  previous.slider != current.slider,
              builder: (context, state) {
                print("level2");
                return Container(
                  height: 200,
                  color: Colors.red.withOpacity(state.slider),
                );
              }),
          SizedBox(
            height: 50,
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
              buildWhen: (previous, current) =>
                  previous.slider != current.slider,
              builder: (context, state) {
                print("level3");
                return Slider(
                    value: state.slider,
                    onChanged: (value) {
                      context.read<SwitchBloc>().add(Slidercon(slider: value));
                    });
              }),
        ],
      ),
    );
  }
}
