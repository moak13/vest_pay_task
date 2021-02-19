import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/settings_view_model.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
