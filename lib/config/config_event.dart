import 'package:devfest_demo/utils/devfest.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'index.dart';

@immutable
abstract class ConfigEvent extends Equatable {

  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class DarkModeEvent extends ConfigEvent {
  final bool darkOn;

  DarkModeEvent(this.darkOn);

  @override
  List<Object> get props => [darkOn];

  @override
  String toString() => 'DarkModeEvent';
  @override
  Future<ConfigState> applyAsync(
      {ConfigState currentState, ConfigBloc bloc}) async {
    try {
      bloc.darkModeOn = darkOn;
      Devfest.prefs.setBool(Devfest.darkModePref, darkOn);
      return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
  }
}

class LoadConfigEvent extends ConfigEvent {
  @override
  String toString() => 'LoadConfigEvent';

  @override
  List<Object> get props => [];

  @override
  Future<ConfigState> applyAsync(
      {ConfigState currentState, ConfigBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
  }
}
