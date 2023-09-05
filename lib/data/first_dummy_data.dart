// import 'dart:convert';
// import 'dart:developer';
//
// // import 'package:http/http.dart' as http;
//
// import '../model/to_do_model.dart';
//
// class HomeScreenController {
//   get http => true;
//
//   Future<UserModel> fetchUser() async {
//     final url = Uri.parse('https://reqres.in/api/users/2');
//     http.Response response = await http.get(url);
//     UserModel userResponse = UserModel.fromJson(jsonDecode(response.body));
//     log(
//       'RESPONSE: EMAIL IS ${userResponse.data!.email}\nFIRST NAME ${userResponse.data!.firstName}\nLAST NAME ${userResponse.data!.lastName}',
//     );
//     return userResponse;
//   }
// }
