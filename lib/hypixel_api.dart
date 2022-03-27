import 'dart:convert';
import 'dart:html';

import 'bazaar.dart';

class HypixelApi {
  String key;

  HypixelApi(this.key);

  Future<Bazaar> getBazaar() async {
    return Bazaar.fromJson(jsonDecode(await HttpRequest.getString(
        "https://api.hypixel.net/skyblock/bazaar?key=$key")));
  }
}
