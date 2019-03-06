import 'package:flutter/material.dart';
import 'package:shared_preferences_widgets/src/shared_preferences_builder.dart';

class SwitchPreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SharedPreferencesBuilder<String>(
      prefKey: 'access_token',
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return snapshot.hasData ? Text(snapshot.data) : Container();
      },
    );
  }
}
