import 'package:bloc_settings/settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState>{
  SettingsCubit() : super(
    SettingsState(appNotifications: false, emailNotifications: false)
  );

  void toggleAppNotification(bool newValue){
    emit(state.copyWith(appNotifications: newValue));
  }

  void toggleEmailNotification(bool newValue){
    emit(state.copyWith(emailNotifications: newValue));
  }
}