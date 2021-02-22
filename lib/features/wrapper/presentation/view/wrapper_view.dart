import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view_model/wrapper_view_model.dart';
import '../widget/get_index_header.dart';
import '../widget/get_index_view.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
      builder: (_, model, __) {
        return Scaffold(
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GetIndexHeader(
                  index: model.currentIndex,
                ),
                Expanded(
                  flex: 2,
                  child: GetIndexView(
                    index: model.currentIndex,
                  ),
                ),
              ],
            ),
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
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet_giftcard,
                ),
                label: 'Wallets',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.pie_chart,
                ),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => WrapperViewModel(),
    );
  }
}
