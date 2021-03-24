part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.setTheme(ThemeMode mode) = _SetTheme;
  const factory ThemeEvent.syncTheme() = _SyncTheme;
}
