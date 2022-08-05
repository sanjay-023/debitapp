import 'dart:convert';

import 'package:debitapp/app/data/model/debit_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<Datum> dataList = [];
  final apiUrl = 'https://communiqo.com/test_api/flutterTest.php?pageNo=0';
  Future<List<Datum>> getData() async {
    final res = await http.get(Uri.parse(apiUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['data'];

      dataList = body.map((dynamic item) => Datum.fromJson(item)).toList();

      print(dataList);
      return dataList;
    } else {
      throw ("cannot get data");
    }
  }
}
