import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget divisorListMain() => const Divider(
      height: 1,
      color: Colors.black54,
    );

Widget buildSvgIcon(String path) =>
    SvgPicture.asset(path, width: 48, height: 48);
