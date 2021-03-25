import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storydeck/bloc/theme_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  static String get path => '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: [
          ThemeTile(),
        ],
      ),
    );
  }
}

class ThemeTile extends StatelessWidget {
  const ThemeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Theme'),
      subtitle: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Text(state.mode.value);
        },
      ),
      onTap: () => showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Theme'),
          titleTextStyle: Theme.of(context).textTheme.subtitle1,
          contentPadding: EdgeInsets.only(
            top: 20,
            bottom: 10,
            left: 10,
            right: 10,
          ),
          content: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ThemeMode.values
                    .map(
                      (e) => RadioListTile<ThemeMode>(
                        groupValue: state.mode,
                        value: e,
                        title: Text(e.value),
                        onChanged: (value) {
                          context.read<ThemeBloc>().add(
                                ThemeEvent.setTheme(value ?? ThemeMode.system),
                              );
                          _handleDismiss(context);
                        },
                      ),
                    )
                    .toList(),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () => _handleDismiss(context),
              child: Text('Dismiss'),
            ),
          ],
        ),
      ),
    );
  }

  void _handleDismiss(BuildContext context) => Navigator.of(context).pop();
}
