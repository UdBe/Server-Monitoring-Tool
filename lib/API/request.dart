import 'dart:convert';

import 'package:hackeclipse/API/ramData.dart';
import 'package:http/http.dart' as http;

Future<List<ramData>> fetchramDatas() async {
  final response = await http
      .get(Uri.parse("https://hackeclipse.azurewebsites.net/api/ram/"));

  var responseJson = json.decode(response.body);
  print(responseJson);
  return responseJson;
  //List<ramData> ramDataList = createramDataList(responseJson);
  //return ramDataList;
}

// List<ramData> createramDataList(data) {
//   List<ramData> list = [];
//   for (int i = 0; i < data.length; i++) {
//     int usedMem = data[i]["used_memory"];
//     int totalMem = data[i]["total_memory"];

//     ramData firstData = ramData(usedMem, totalMem);
//     list.add(firstData);
//   }
//   return list;
//}
