import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/utils/app_icons.dart';
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
            child: SvgPicture.asset(AppIcons.app_send),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.app_home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.app_wallets),
                label: 'Wallets',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.app_reports),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.app_settings),
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
