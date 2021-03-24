import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storydeck/common/constant.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

extension ThemeModeExtension on ThemeMode {
  String get value => <String>['System', 'Light', 'Dark'][index];
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(this.preferences) : super(_Initial(ThemeMode.system));
  final SharedPreferences preferences;

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.when(
      setTheme: (mode) async* {
        await preferences.setString(Constant.theme, mode.value);
        yield _Initial(mode);
      },
      syncTheme: () async* {
        final String theme = preferences.getString(Constant.theme) ?? '';
        if (theme.isNotEmpty && theme != ThemeMode.system.value) {
          yield _Initial(getThemeMode(theme));
        }
      },
    );
  }

  ThemeMode getThemeMode(String theme) {
    switch (theme) {
      case 'Dark':
        return ThemeMode.dark;
      case 'Light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
