import 'package:http/http.dart';
import 'dart:convert';
import 'dart:developer';
import '../models/networkRespone.dart';

class NetworkCaller {
  Future<NetworkRespones> getRequest(String url) async {
    try {
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        return NetworkRespones(
            true, response.statusCode, jsonDecode(response.body));
      } else {
        return NetworkRespones(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkRespones(false, -1, null);
  }

  Future<NetworkRespones> postRequest(
      String url, Map<String, dynamic> body) async {
    try {
      Response response = await post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      log(response.statusCode.toString());
      log(response.body);
      if (response.statusCode == 200) {
        return NetworkRespones(
            true, response.statusCode, jsonDecode(response.body));
      } else {
        return NetworkRespones(false, response.statusCode, null);
      }
    } catch (e) {
      log(e.toString());
    }
    return NetworkRespones(false, -1, null);
  }
}
