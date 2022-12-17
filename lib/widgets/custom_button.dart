// ignore_for_file: deprecated_member_use

import 'package:twitter/utility/consts.dart';

Widget customButton(
    {VoidCallback? onpress, Color? color, Color? textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color, padding: const EdgeInsets.all(12)),
      onPressed: onpress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
