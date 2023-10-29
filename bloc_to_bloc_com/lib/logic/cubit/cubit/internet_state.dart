part of 'internet_cubit.dart';

enum ConnectionType { Wifi, Mobile }

sealed class InternetState extends Equatable {
  const InternetState();

  @override
  List<Object> get props => [];
}

final class InternetLoading extends InternetState {}

final class InternetConnected extends InternetState {
  final ConnectionType connectionType;

  InternetConnected({required this.connectionType});
}

final class InternetDisconnected extends InternetState {}
