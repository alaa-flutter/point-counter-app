import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score/Cubit/counter_cubit.dart';
import 'counter_score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return BlocProvider(
    create: (context) => CounterCubit(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointCounter(),
    ),
  );
  }

}
