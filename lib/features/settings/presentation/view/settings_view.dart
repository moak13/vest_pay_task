import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/settings_view_model.dart';
import '../widget/settings_grid_tile.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: GridView.builder(
            itemCount: model.settingsModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return SettingsGridTile(
                icon: model.settingsModel[index].iconPath,
                title: model.settingsModel[index].title,
              );
            },
          ),
        );
      },
      viewModelBuilder: () => SettingsViewModel(),
    );
  }
}
