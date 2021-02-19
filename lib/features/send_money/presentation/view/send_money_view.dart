import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/send_money_view_model.dart';

class SendMoneyView extends StatelessWidget {
  const SendMoneyView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SendMoneyViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => SendMoneyViewModel(),
    );
  }
}
