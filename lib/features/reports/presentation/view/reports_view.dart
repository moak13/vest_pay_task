import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/reports_view_model.dart';

class ReportsView extends StatelessWidget {
  const ReportsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReportsViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => ReportsViewModel(),
    );
  }
}
