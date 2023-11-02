import 'package:bloc_settings/settings_cubit.dart';
import 'package:bloc_settings/settings_page.dart';
import 'package:bloc_settings/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider<SettingsCubit>(
            create: (_) => SettingsCubit(),
            child: BlocListener<SettingsCubit, SettingsState>(
                listener: (context, state) {
                  final notificationSnackBar = SnackBar(
                    duration: Duration(milliseconds: 700),
                      content: Text('App ' + state.appNotifications.toString().toUpperCase()
                          + ' email ' + state.emailNotifications.toString().toUpperCase())
                  );
                  ScaffoldMessenger.of(context).showSnackBar(notificationSnackBar);
                },
              child: Center(
                child: SettingsPage(),
              ),
            ),
          )
        )
    );
  }
}
