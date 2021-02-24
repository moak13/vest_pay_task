import 'package:stacked/stacked.dart';

import '../../model/settings_model.dart';

class SettingsViewModel extends BaseViewModel {
  String _title = 'Settings View';
  String get title => _title;

  List<SettingsModel> _settingsModel = data;
  List<SettingsModel> get settingsModel => _settingsModel;
}
