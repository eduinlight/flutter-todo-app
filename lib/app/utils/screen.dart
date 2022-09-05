import 'package:flutter/material.dart';

double safeHeight(BuildContext context) {
  return MediaQuery.of(context).size.height -
      AppBar().preferredSize.height -
      MediaQuery.of(context).padding.top -
      MediaQuery.of(context).padding.bottom;
}
