import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings_cubit.dart';
import 'settings_state.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingsPageState();
  }
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SwitchListTile(
                  title: Text('Application notification'),
                  value: state.appNotifications,
                  onChanged: (value) {
                    BlocProvider.of<SettingsCubit>(context)
                        .toggleAppNotification(value);
                  },
                ),
                SwitchListTile(
                  title: Text('Email notification'),
                  value: state.emailNotifications,
                  onChanged: (value) {
                    BlocProvider.of<SettingsCubit>(context)
                        .toggleEmailNotification(value);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
