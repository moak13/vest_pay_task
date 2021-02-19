import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/wrapper_view_model.dart';
import '../widget/get_index_view.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: GetIndexView(
            index: model.currentIndex,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.send),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard)),
              BottomNavigationBarItem(icon: Icon(Icons.pie_chart)),
              BottomNavigationBarItem(icon: Icon(Icons.settings)),
            ],
          ),
        );
      },
      viewModelBuilder: () => WrapperViewModel(),
    );
  }
}
