import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/wallets_view_model.dart';

class WalletsView extends StatelessWidget {
  const WalletsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletsViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => WalletsViewModel(),
    );
  }
}
