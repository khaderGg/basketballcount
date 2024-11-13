import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenniscount/Screens/HomePage.dart';

import 'Cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return CounterCubit();
      },
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
