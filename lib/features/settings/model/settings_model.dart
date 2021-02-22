import '../../../common/extensions/string_extensions.dart';

class SettingsModel {
  final String title;
  final String iconPath;

  SettingsModel({this.title, this.iconPath});
}

List<SettingsModel> data = [
  SettingsModel(title: 'Profile Information', iconPath: 'i'.svg),
  SettingsModel(title: 'Password', iconPath: 'lock'.svg),
  SettingsModel(title: 'Email', iconPath: 'email'.svg),
  SettingsModel(title: 'Phone Number', iconPath: 'call'.svg),
  SettingsModel(title: 'Notifications', iconPath: 'notifications'.svg),
  SettingsModel(title: 'Currency', iconPath: 'dollar'.svg),
  SettingsModel(title: 'Language', iconPath: 'world'.svg),
  SettingsModel(title: 'Account', iconPath: 'user'.svg),
  SettingsModel(title: 'Private Policy', iconPath: 'privacy'.svg),
  SettingsModel(title: 'Terms of Use', iconPath: 'question'.svg),
];
