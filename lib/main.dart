import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storydeck/bloc/theme_bloc.dart';
import 'package:storydeck/common/theme.dart';
import 'package:storydeck/home/home_page.dart';
import 'package:storydeck/locator.dart';
import 'package:storydeck/setting/setting_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureLocator();
  runApp(Storydeck());
}

class Storydeck extends StatelessWidget {
  static String get title => 'Storydeck';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ThemeBloc(locator.get())..add(ThemeEvent.syncTheme()),
        )
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return _buildMaterialApp(state.mode);
        },
      ),
    );
  }

  Widget _buildMaterialApp(ThemeMode mode) {
    return MaterialApp(
      title: title,
      theme: baseTheme,
      darkTheme: darkTheme,
      themeMode: mode,
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        SettingPage.path: (_) => SettingPage(),
      },
    );
  }
}
