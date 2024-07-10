import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Person person =Person(name: 'sazzad', age: 22);
          Person person1 =Person(name: 'sazzad', age: 22);
          print(person.hashCode.toString());
          print(person1.hashCode.toString());
          print(person==person1);
        },
      ),
    );
  }
}

class Person extends Equatable{
  String name;
  int age;
  Person({required this.name,required this.age});
  @override
  // TODO: implement props
  List<Object?> get props => [name,age];

}