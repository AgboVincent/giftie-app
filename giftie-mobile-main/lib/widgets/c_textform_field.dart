// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:giftie_mobile/resources/app_color.dart';
// import 'package:helper_widgets/empty_space.dart';
// import 'package:helper_widgets/utils/utils.dart';
//
// class CTextFormField extends StatelessWidget {
//   CTextFormField(
//       {this.hintText,
//       this.labelText,
//       this.style,
//       this.initialValue,
//       this.showCounter,
//       this.controller,
//       this.onSaved,
//       this.validator,
//       this.obscureText,
//       this.autoValidate = false,
//       this.autoValidateMode,
//       this.autofillHints,
//       this.isLastTextField = false,
//       this.onChanged,
//       this.maxLength,
//       this.textAlign = TextAlign.left,
//       this.inputFormatters,
//       this.keyboardType,
//       this.multiLine = false,
//       this.enabled = true,
//       this.minLines = 5,
//       this.trailingIcon,
//       this.onEditingComplete,
//       this.focusNode,
//       this.onTap});
//
//   final List<TextInputFormatter>? inputFormatters;
//   final int? minLines;
//   final int? maxLength;
//   final bool? showCounter;
//   final bool multiLine;
//   final bool isLastTextField;
//   final bool? obscureText;
//   final bool autoValidate;
//   final AutovalidateMode? autoValidateMode;
//   final bool? enabled;
//   final String? initialValue;
//   final String? hintText;
//   final String? labelText;
//   final TextStyle? style;
//   final TextEditingController? controller;
//   final Function(String?)? onSaved;
//   final String? Function(String?)? validator;
//   final Function(String)? onChanged;
//   final TextInputType? keyboardType;
//   final Function()? onTap;
//   final TextAlign textAlign;
//   final Widget? trailingIcon;
//   final Iterable<String>? autofillHints;
//   final Function? onEditingComplete;
//   final FocusNode? focusNode;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Visibility(
//             visible: StringUtils.isNotEmpty(labelText),
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: Text('$labelText',
//                   style:
//                       style ?? TextStyle(fontSize: 18, letterSpacing: -0.75)),
//             )),
//         TextFormField(
//           focusNode: focusNode,
//           enabled: enabled,
//           style: TextStyle(
//               fontSize: 16,
//               color: AppColor.textColor2,
//               fontWeight: FontWeight.w500),
//           inputFormatters: inputFormatters,
//           maxLength: maxLength,
//           obscureText: obscureText ?? false,
//           onTap: onTap,
//           initialValue: initialValue,
//           controller: controller,
//           autovalidateMode: autoValidateMode ?? AutovalidateMode.disabled,
//           autofillHints: autofillHints,
//           validator: validator,
//           onSaved: onSaved,
//           onChanged: onChanged,
//           keyboardType: keyboardType,
//           textAlign: textAlign,
//           minLines: multiLine ? minLines : 1,
//           maxLines: multiLine ? minLines! * 2 : 1,
//           textInputAction:
//               isLastTextField ? TextInputAction.done : TextInputAction.next,
//           onFieldSubmitted: (_) =>
//               isLastTextField ? null : FocusScope.of(context).nextFocus(),
//           decoration: InputDecoration(
//             counter: Offstage(),
//             contentPadding:
//                 EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
//             labelText: hintText,
//             labelStyle: TextStyle(
//                 fontSize: 15,
//                 color: AppColor.textColor2,
//                 fontWeight: FontWeight.w600),
//             // hintText: hintText,
//             // hintStyle: TextStyle(fontSize: 14),
//             filled: true,
//             fillColor: AppColor.white,
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(
//                   color: AppColor.textFieldBorder,
//                 )),
//             suffixIcon: trailingIcon ?? SizedBox(),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(color: AppColor.textFieldBorder)),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class CDropdownField extends StatelessWidget {
//   CDropdownField(
//       {this.hintText,
//       this.labelText,
//       required this.items,
//       required this.onChanged,
//       required this.value,
//       required this.errorText});
//
//   String? hintText;
//   String? labelText;
//   List<String> items;
//   String? value;
//   String errorText;
//   Function(String?)? onChanged;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           decoration: BoxDecoration(
//               color: AppColor.white,
//               borderRadius: BorderRadius.circular(10),
//               // border: Border.all(color: AppColor.textFieldBorder)
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 16.0),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             EmptySpace(),
//             Visibility(
//                 visible: StringUtils.isNotEmpty(labelText),
//                 child: Text('$labelText',
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                         color: AppColor.pla))),
//             DropdownButton<String>(
//               icon: Icon(
//                 Icons.keyboard_arrow_down_sharp,
//                 color: AppColor.black,
//                 size: 24,
//               ),
//               underline: Offstage(),
//               isExpanded: true,
//               value: value,
//               hint: hintText != null ? Text(hintText!) : null,
//               items: items
//                   .map((e) => DropdownMenuItem<String>(
//                         child: Text(
//                           e,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 16,
//                               color: AppColor.textColor2),
//                         ),
//                         value: e,
//                       ))
//                   .toList(),
//               onChanged: onChanged,
//             ),
//           ]),
//         ),
//         Visibility(
//             visible: StringUtils.isNotEmpty(errorText),
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: Text('$errorText',
//                   style: TextStyle(
//                       fontSize: 12,
//                       letterSpacing: -0.25,
//                       color: AppColor.accent)),
//             )),
//       ],
//     );
//   }
// }
//
// class DropdownItemDTO<T> {
//   T value;
//   String title;
//   String? id;
//
//   DropdownItemDTO(this.value, this.title);
// }
