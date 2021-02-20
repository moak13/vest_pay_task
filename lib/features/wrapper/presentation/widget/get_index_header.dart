import 'package:flutter/material.dart';

import 'wrapper_header.dart';

class GetIndexHeader extends StatelessWidget {
  final int index;
  const GetIndexHeader({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return WrapperHeader(
          index: index,
          title: 'Your balance',
          balance: 926.21,
        );
        break;
      case 1:
        return WrapperHeader(
          index: index,
          title: 'Wallets',
        );
        break;
      case 2:
        return WrapperHeader(
          index: index,
          title: 'Reports',
        );
        break;
      case 3:
        return WrapperHeader(
          index: index,
          title: 'Settings',
        );
        break;
      default:
        return WrapperHeader(
          index: index,
          title: 'Your balance',
          balance: 926.21,
        );
        break;
    }
  }
}
