import 'package:twitter/utility/consts.dart';

Widget customTextField({
  String? title,
  String? hint,
  TextEditingController? controller,
  bool? isPass,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(TwitterColor.black).fontFamily(font4).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        obscureText: isPass!,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle:
              TextStyle(fontFamily: font3, color: TwitterColor.woodsmoke_50),
          isDense: true,
          fillColor: TwitterColor.white,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TwitterColor.woodsmoke_50),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TwitterColor.woodsmoke_50),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: TwitterColor.woodsmoke_50),
          ),
        ),
      ),
    ],
  );
}
