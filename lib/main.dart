import 'package:bloc2/bloc/image%20select/utils/image_picker_utils.dart';
import 'package:bloc2/bloc/swithc%20example/switch_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/Todo/Ui/todo_screen.dart';
import 'bloc/Todo/todo_bloc.dart';
import 'bloc/counter_apps/counter_apps_bloc.dart';
import 'bloc/counter_apps/ui/counter_screen.dart';
import 'bloc/image select/image_picker_bloc.dart';
import 'bloc/image select/ui/image_picker_screen.dart';
import 'bloc/swithc example/ui/swithc_screen.dart';
import 'bloc2/post_bloc.dart';
import 'bloc2/post_screen.dart';
import 'cubit/Ui/counter_screen.dart';
import 'cubit/counter_cubit.dart';

void main() {
  runApp(Myapps());
}

class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterAppsBloc()),
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (_) => TodoBloc()),
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_)=>PostBloc()),
      ],
      child: MaterialApp(
        // home: CounterScreen(),
        // home: SwithcScreen(),
        // home: ImagePickerScreen(),
        // home: CounterScreen2(),
        home: PostScreen(),
      ),

    );
  }
}
