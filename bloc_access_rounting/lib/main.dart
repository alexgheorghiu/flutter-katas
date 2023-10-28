import 'package:bloc_access_rounting/presentation/router/app_router.dart';
import 'package:bloc_access_rounting/presentation/screens/home_screen.dart';
import 'package:bloc_access_rounting/presentation/screens/second_screen.dart';
import 'package:bloc_access_rounting/presentation/screens/third_screen%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {  
  // final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: BlocProvider<CounterCubit>(
      //   create: (context) => CounterCubit(),
      //   child: HomeScreen(title: 'Flutter Demo Home Page', color: Colors.blueAccent,),
      // ),
      // routes: {
      //   '/': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: HomeScreen(
      //           title: 'Flutter Demo Home Page',
      //           color: Colors.blueAccent,
      //         ),
      //       ),
      //   '/second': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: SecondScreen(
      //           title: 'Second Screen',
      //           color: Colors.redAccent,
      //         ),
      //       ),
      //   '/third': (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: ThirdScreen(
      //           title: 'Third Screen',
      //           color: Colors.greenAccent,
      //         ),
      //       ),
      // },
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }

  @override
  void dispose(){
    // _counterCubit.close();
    _appRouter.dispose();
    super.dispose();
  }
}
