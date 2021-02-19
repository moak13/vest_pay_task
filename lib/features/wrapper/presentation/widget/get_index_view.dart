import 'package:flutter/material.dart';

import '../../../home/presentation/view/home_view.dart';
import '../../../reports/presentation/view/reports_view.dart';
import '../../../settings/presentation/view/settings_view.dart';
import '../../../wallets/presentation/view/wallets_view.dart';

class GetIndexView extends StatelessWidget {
  final int index;
  const GetIndexView({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return HomeView();
        break;
      case 1:
        return WalletsView();
        break;
      case 2:
        return ReportsView();
        break;
      case 3:
        return SettingsView();
        break;
      default:
        return HomeView();
        break;
    }
  }
}
