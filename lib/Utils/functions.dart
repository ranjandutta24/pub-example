import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

getBaseUrl() {
  // return "https://web.educampuz.com/educampuzdevapi/api";
  // return "http://localhost:3000/api";
  // return "https://itchy-blue-wrap.cyclic.app/api/";
  return "https://gymms-production.up.railway.app/api/";
}

DateTime parseDateString(String dateString) {
  DateFormat format = DateFormat('M/d/yyyy, h:mm:ss a');
  return format.parse(dateString);
}

// roundImage(img, double roundValue) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(roundValue),
//     child: Image.network(
//       getLogoString(img),
//       height: 50,
//     ),
//   );
// }

// rounduserImage(img, double roundValue, double size) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(roundValue),
//     child: Image.network(
//       getuserString(img),
//       height: size,
//     ),
//   );
// }

// amPmTime(time) {
//   return DateFormat('h:mm a')
//       .format(DateTime.parse(time).add(const Duration(hours: 5, minutes: 30)));
// }

void showCustomSnackbar(
    BuildContext ctx, String title, String msg, String type) {
  ContentType type0 = ContentType.warning;
  if (type == "warning") {
    type0 = ContentType.warning;
    // soundW();
  } else if (type == "failure") {
    type0 = ContentType.failure;
    // soundE();
  } else if (type == "success") {
    type0 = ContentType.success;
    // soundS();
  } else {
    type0 = ContentType.help;
  }
  final snackBar = SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
        title: title,
        message: msg,

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: type0),
  );

  ScaffoldMessenger.of(ctx)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

// soundW() async {
//   var audioPlayer = AudioPlayer();
//   await audioPlayer.play(AssetSource('sounds/Apple_Critical_Alert.mp3'));
// }

// soundS() async {
//   var audioPlayer = AudioPlayer();
//   await audioPlayer
//       .play(AssetSource('sounds/Apple_Pay_Success_Sound_Effect.mp3'));
// }

// soundE() async {
//   var audioPlayer = AudioPlayer();
//   await audioPlayer
//       .play(AssetSource('sounds/Apple_Pay_Failed_sound_effect.mp3'));
// }









// //   final response = await http.post(Uri.parse('$baseUrl/user/checkInstituteNew'),
// //       body: jsonEncode(payload), headers: headers);

// //   if (response.statusCode == 200) {
// //     final String responseString = response.body;

// //     return jsonDecode(responseString);
// //   } else {
// //     // print(jsonDecode(response.body)['error']);
// //     return Future.error(jsonDecode(response.body)['error']);
// //   }
// // }





// // async {
// //                                     // loginUser();
// //                                     try {
// //                                       jsonMap = await authUser({
// //                                         'userid': usernameController.text,
// //                                       });

// //                                       print(jsonMap);

// //                                       List<dynamic> ocodes = jsonMap
// //                                           .map((organization) =>
// //                                               organization["ocode"])
// //                                           .toList();

// //                                       // print(ocodes);
// //                                       var res2 = await searchOrganization(
// //                                         json.encode({"ocodes": ocodes}),
// //                                       );
// //                                       if (res2.statusCode == 200) {
// //                                         orgList = json.decode(res2.body);
// //                                         // print(org);
// //                                         // ignore: use_build_context_synchronously
// //                                         Navigator.of(context).push(
// //                                           MaterialPageRoute(
// //                                             builder: (ctx) => Login2nd(
// //                                                 userId: usernameController.text,
// //                                                 allOrg: orgList),
// //                                           ),
// //                                         );
// //                                       }
// //                                     } catch (e) {
// //                                       ShowMessage.show(context,
// //                                           e.toString() ?? "somthin wrong");
// //                                     }