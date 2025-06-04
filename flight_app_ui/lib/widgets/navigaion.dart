import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(final Widget page, BuildContext context) {
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (_) => page),
  );
}
