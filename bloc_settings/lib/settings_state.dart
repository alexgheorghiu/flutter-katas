import 'package:equatable/equatable.dart';

class SettingsState extends Equatable{
  bool appNotifications;
  bool emailNotifications;

  @override
  List<Object?> get props => [appNotifications, emailNotifications];

  SettingsState({
    required this.appNotifications,
    required this.emailNotifications
  });

  SettingsState copyWith({bool? appNotifications, bool? emailNotifications}){
    return SettingsState(
        appNotifications : appNotifications??this.appNotifications,
        emailNotifications: emailNotifications??this.emailNotifications
    );
  }
}