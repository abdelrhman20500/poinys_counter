import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';

class HomeScreen extends StatefulWidget {

   static const String routeName = "HomeScreen";
    const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              centerTitle: true,
              title: const Text("Point Counter", style: TextStyle(
                fontSize: 30,
              ),),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text("Team A", style: TextStyle(
                          fontSize: 34,
                        ),),
                         Text("${BlocProvider.of<CounterCubit>(context).teamAPoint}", style: const TextStyle(
                            fontSize: 160
                        ),),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "A", buttonNumber: 1);
                            },
                            child: const Text("Add point 1", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "A", buttonNumber: 2);
                            },
                            child: const Text("Add point 2", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "A", buttonNumber: 3);
                            },
                            child: const Text("Add point 3", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                      ],
                    ),
                    const SizedBox(
                      height: 380,
                      child:  VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Column(
                      children: [
                        const Text("Team B", style: TextStyle(
                          fontSize: 34,
                        ),),
                         Text("${BlocProvider.of<CounterCubit>(context).teamBPoint}", style: const TextStyle(
                            fontSize: 160
                        ),),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "B", buttonNumber: 1);
                            },
                            child: const Text("Add point 1", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "B", buttonNumber: 2);
                            },
                            child: const Text("Add point 2", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                        const SizedBox(height: 16),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(50, 60),),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement
                                (team: "B", buttonNumber: 3);
                            },
                            child: const Text("Add point 3", style: TextStyle(
                                fontSize: 20, color: Colors.black
                            ),)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(50, 60)
                    ),
                    onPressed: (){
                      BlocProvider.of<CounterCubit>(context).counterEqual();
                    },
                    child: const Text(
                      "Reset", style: TextStyle(
                        fontSize: 26,color: Colors.black
                    ),
                    ))
              ],
            ),
          );
        },
        listener: (context, state){}
    );
  }
}
