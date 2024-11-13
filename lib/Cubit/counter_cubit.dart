import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenniscount/Cubit/counter_state.dart';

class CounterCubit extends Cubit<Stateteam> {
  CounterCubit() : super(StateTeamA());
  int pointteam1 = 0;
  int pointteam2 = 0;

  void Teamincrement({required int number, required String team}) {
    if (team == 'A') {
      pointteam1 += number;
      emit(StateTeamA());
    } else {
      pointteam2 += number;
      emit(StateTeamB());
    }
  }
}
