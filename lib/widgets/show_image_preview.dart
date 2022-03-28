import 'dart:io';

import 'package:flutter/material.dart';

class ShowImagePreview extends StatelessWidget {
  ShowImagePreview({
    @required this.file,
    Key key,
  }) : super(key: key);

  File file;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Image.file(
        file,
        fit: BoxFit.fill,
      ),
    );
  }
}
