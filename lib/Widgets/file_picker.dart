// import 'package:educampuz/Utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';

// // ignore: use_key_in_widget_constructors
// class MyAttachmentPicker extends StatefulWidget {
//   const MyAttachmentPicker(
//       {super.key, required this.onSelectDoc, required this.multy});

//   final void Function(dynamic doc) onSelectDoc;
//   final bool multy;
//   @override
//   // ignore: library_private_types_in_public_api
//   _MyAttachmentPickerState createState() => _MyAttachmentPickerState();
// }

// class _MyAttachmentPickerState extends State<MyAttachmentPicker> {
//   String? filePath;
//   List filePaths = [];

//   Future<void> pickDocument() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf', 'doc', 'docx', "jpg", "xlsx", "txt", "png"],
//     );

//     if (result != null) {
//       setState(() {
//         if (widget.multy) {
//           // filePath = result.files.single.path;
//           filePaths.add(result.files.single.path);
//           widget.onSelectDoc(filePaths);
//         } else {
//           filePath = result.files.single.path;
//           widget.onSelectDoc(filePath);
//         }
//       });
//     }
//   }

//   _statusMulty() {
//     return filePaths.isNotEmpty
//         ? const SizedBox(
//             height: 0,
//           )
//         : const Row(
//             children: [
//               Icon(
//                 Icons.attachment,
//                 color: Color.fromARGB(171, 145, 145, 145),
//               ),
//               Text(
//                 " No Attachment",
//                 style: TextStyle(color: Color.fromARGB(171, 145, 145, 145)),
//               ),
//             ],
//           );
//   }

//   _statusSingle() {
//     return filePath != null
//         ? const SizedBox(
//             height: 0,
//           )
//         : const Row(
//             children: [
//               Icon(
//                 Icons.attachment,
//                 color: Color.fromARGB(171, 145, 145, 145),
//               ),
//               Text(
//                 " No Attachment",
//                 style: TextStyle(color: Color.fromARGB(171, 145, 145, 145)),
//               ),
//             ],
//           );
//   }

//   _displayMulty() {
//     return Padding(
//       padding: const EdgeInsets.all(0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: filePaths.map((value) {
//           return SizedBox(
//             // height: 150,
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(child: Text('Selected File: $value')),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.close,
//                         color: Color.fromARGB(255, 31, 31, 31),
//                       ),
//                       onPressed: () {
//                         // print(_selectedImage.indexOf(value));
//                         setState(() {
//                           filePaths.removeAt(
//                             filePaths.indexOf(value),
//                           );
//                         });
//                       },
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 )
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   _displaySingle() {
//     if (filePath != null) {
//       return Padding(
//         padding: const EdgeInsets.all(0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Row(
//             children: [
//               Expanded(child: Text('Selected File: $filePath')),
//               IconButton(
//                 icon: const Icon(
//                   Icons.close,
//                   color: Color.fromARGB(255, 31, 31, 31),
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     filePath = null;
//                     widget.onSelectDoc(filePath);
//                   });
//                 },
//               ),
//               const SizedBox(
//                 height: 50,
//               )
//             ],
//           ),
//         ]),
//       );
//     } else {
//       return const Text("");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         GestureDetector(
//           // onTap: pickDocument,
//           onTap: filePaths.length < 5 ? pickDocument : null,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "+ Add Attachment",
//                 style: TextStyle(
//                     color: filePaths.length < 5
//                         ? myColors["primary"]
//                         : const Color.fromARGB(255, 124, 124, 124),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600),
//               ),
//               widget.multy == true
//                   ? Text("(${filePaths.length}/5)")
//                   : const SizedBox(
//                       height: 0,
//                     )
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 14,
//         ),
//         widget.multy ? _statusMulty() : _statusSingle(),
//         widget.multy ? _displayMulty() : _displaySingle(),
//       ],
//     );
//   }
// }
