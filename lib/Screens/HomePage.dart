import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenniscount/Cubit/counter_cubit.dart';
import 'package:tenniscount/Cubit/counter_state.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, Stateteam>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.orangeAccent,
          appBar: AppBar(
            title: const Text("Basketball",
                style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32)),
            centerTitle: true,
            leading: Icon(Icons.sports_basketball_rounded),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [Icon(Icons.sports_basketball_rounded)],
                ),
              )
            ],
            backgroundColor: Colors.white30,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "TEAM 1",
                        style: TextStyle(fontSize: 26),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).pointteam1}",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 1, team: 'A');
                          },
                          child: Text(" one point ")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 2, team: 'A');
                          },
                          child: Text(" two point ")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 3, team: 'A');
                          },
                          child: Text("three point")),
                    ],
                  ),
                ),
                Container(
                    height: 500,
                    child: VerticalDivider(
                      thickness: 2,
                    )),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team 2",
                        style: TextStyle(fontSize: 26),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).pointteam2}",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 1, team: 'B');
                          },
                          child: Text(" one point ")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 2, team: 'B');
                          },
                          child: Text(" two point ")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.all(6),
                              textStyle: TextStyle(
                                  fontFamily: 'Bebas Neue', fontSize: 22)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .Teamincrement(number: 3, team: 'B');
                          },
                          child: Text("three point")),
                    ],
                  ),
                ),
              ]),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).pointteam1 = 0;
                  BlocProvider.of<CounterCubit>(context).pointteam2 = 0;
                },
                child: Text("Reset"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.all(6),
                    textStyle:
                        TextStyle(fontFamily: 'Bebas Neue', fontSize: 22)),
              )
            ],
          ),
        );
      },
      listener: (context, state) {
        if (state is StateTeamA) {
        } else {}
      },
    );
  }
}
