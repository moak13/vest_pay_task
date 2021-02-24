import '../../../common/utils/app_icons.dart';

class SettingsModel {
  final String title;
  final String iconPath;

  SettingsModel({this.title, this.iconPath});
}

List<SettingsModel> data = [
  SettingsModel(
    title: 'Profile Information',
    iconPath: AppIcons.app_information,
  ),
  SettingsModel(
    title: 'Password',
    iconPath: AppIcons.app_password,
  ),
  SettingsModel(
    title: 'Email',
    iconPath: AppIcons.app_email,
  ),
  SettingsModel(
    title: 'Phone Number',
    iconPath: AppIcons.app_phone,
  ),
  SettingsModel(
    title: 'Notifications',
    iconPath: AppIcons.app_notifications,
  ),
  SettingsModel(
    title: 'Currency',
    iconPath: AppIcons.app_currency,
  ),
  SettingsModel(
    title: 'Language',
    iconPath: AppIcons.app_language,
  ),
  SettingsModel(
    title: 'Account',
    iconPath: AppIcons.app_account,
  ),
  SettingsModel(
    title: 'Private Policy',
    iconPath: AppIcons.app_privacy,
  ),
  SettingsModel(
    title: 'Terms of Use',
    iconPath: AppIcons.app_terms_of_use,
  ),
];
