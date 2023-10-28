import 'package:bloc_access_rounting/logic/cubit/counter_cubit.dart';
import 'package:bloc_access_rounting/presentation/screens/home_screen.dart';
import 'package:bloc_access_rounting/presentation/screens/second_screen.dart';
import 'package:bloc_access_rounting/presentation/screens/third_screen%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterCubit,
                  child: HomeScreen(
                    title: 'HomeScreen',
                    color: Colors.blueAccent,
                  ),
                ));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterCubit,
                  child: SecondScreen(
                    title: 'SecondScreen',
                    color: Colors.redAccent,
                  ),
                ));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterCubit,
                  child: ThirdScreen(
                    title: 'HomeScreen',
                    color: Colors.greenAccent,
                  ),
                ));
        break;
      default:
        throw Exception('No such route');
    }
  }
}
