// import 'dart:io';
// import 'package:educampuz/Utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageInput extends StatefulWidget {
//   const ImageInput({super.key, required this.onSelectImg});

//   final void Function(dynamic img) onSelectImg;
//   @override
//   State<ImageInput> createState() {
//     return _ImageInputState();
//   }
// }

// class _ImageInputState extends State<ImageInput> {
//   // File? _selectedImage;
//   final List<File> _selectedImage = [];

//   void _takePicture() async {
//     final imagePicker = ImagePicker();
//     final pickedImage =
//         await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 200);

//     if (pickedImage == null) {
//       return;
//     }

//     setState(() {
//       _selectedImage.add(File(pickedImage.path));
//       widget.onSelectImg(_selectedImage);
//       // print(_selectedImage);
//     });
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context).clearSnackBars();
//   }

//   void _takePictureG() async {
//     final imagePicker = ImagePicker();
//     final pickedImage =
//         await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 200);

//     if (pickedImage == null) {
//       return;
//     }

//     setState(() {
//       _selectedImage.add(
//         File(pickedImage.path),
//       );
//       widget.onSelectImg(_selectedImage);
//     });
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context).clearSnackBars();
//   }

//   _showOptions() {
//     // showModalBottomSheet(
//     //   context: context,
//     //   builder: (BuildContext context) {
//     //     return Container(
//     //       width: double.infinity,
//     //       child: Padding(
//     //         padding: const EdgeInsets.all(16.0),
//     //         child: Column(
//     //           mainAxisAlignment: MainAxisAlignment.start,
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           mainAxisSize: MainAxisSize.min,
//     //           children: <Widget>[
//     //             TextButton(
//     //               onPressed: _takePicture,
//     //               child: const Text("Use Camera"),
//     //             ),
//     //             TextButton(
//     //               onPressed: _takePictureG,
//     //               child: const Text("Load Image from Library"),
//     //             ),
//     //             TextButton(
//     //               onPressed: () {
//     //                 ScaffoldMessenger.of(context).clearSnackBars();
//     //               },
//     //               child: const Text("Cancel"),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   },
//     // );
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         backgroundColor: const Color.fromARGB(214, 236, 236, 236),

//         duration: const Duration(hours: 3),
//         content: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 "Select Attachment Source",
//                 style: TextStyle(color: myColors["primary"]),
//               ),
//             ),
//             TextButton(
//               onPressed: _takePicture,
//               child: const Text("Use Camera"),
//             ),
//             TextButton(
//               onPressed: _takePictureG,
//               child: const Text("Load Image from Library"),
//             ),
//             TextButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).clearSnackBars();
//               },
//               child: const Text("Cancel"),
//             ),
//           ],
//         ),
//         // action: SnackBarAction(
//         //   label: 'close',
//         //   onPressed: () {},
//         // ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: non_constant_identifier_names
//     Widget Content = Column(
//       // mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         GestureDetector(
//           onTap: _showOptions,
//           child: Text(
//             "+ Add an Image",
//             style: TextStyle(
//                 color: myColors["primary"],
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600),
//           ),
//         ),
//         const SizedBox(
//           height: 14,
//         ),

//         // TextButton(
//         //   onPressed: _showOptions,
//         //   child: const Text("+ Add an image"),
//         // ),
//         _selectedImage.isNotEmpty
//             ? SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: _selectedImage.map((value) {
//                     return SizedBox(
//                       height: 100,
//                       child: Row(
//                         children: [
//                           Stack(
//                             children: [
//                               Image.file(value, fit: BoxFit.cover),
//                               IconButton(
//                                 icon: const Icon(
//                                   Icons.close,
//                                   color: Color.fromARGB(255, 255, 255, 255),
//                                 ),
//                                 onPressed: () {
//                                   // print(_selectedImage.indexOf(value));
//                                   setState(() {
//                                     _selectedImage.removeAt(
//                                       _selectedImage.indexOf(value),
//                                     );
//                                   });
//                                 },
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           )
//                         ],
//                       ),
//                     );
//                   }).toList(),
//                 ),
//               )

//             //  Image.file(_selectedImage[0], fit: BoxFit.cover)
//             : const Row(
//                 children: [
//                   Icon(
//                     Icons.image_not_supported,
//                     color: Color.fromARGB(171, 145, 145, 145),
//                   ),
//                   Text(" No Image",
//                       style:
//                           TextStyle(color: Color.fromARGB(171, 145, 145, 145))),
//                 ],
//               )
//       ],
//     );
//     // Image.file(_selectedImage!, fit: BoxFit.cover)

//     // if (_selectedImage.length > 0) {
//     //   Content = Image.file(_selectedImage[0], fit: BoxFit.cover);
//     // }
//     return Container(
//         // height: 140,
//         width: double.infinity,
//         alignment: Alignment.bottomLeft,
//         child: Content);
//   }
// }
