import 'dart:convert';

import 'package:countryapi/model/homemodel.dart';
import 'package:http/http.dart';
class Apihelper{
  static final helper=Apihelper._();
  Apihelper._();

  Future<Homemodel> countryapi() async {
    Uri uri = Uri.parse("https://rest-country-api.p.rapidapi.com/india");
    var response= await get(uri,headers: {"X-RapidAPI-Key":"dfbf47b288mshfaffb05357f706ep1a4b83jsn90ed62e79227",
      "X-RapidAPI-Host":"rest-country-api.p.rapidapi.com"});
    var json=jsonDecode(response.body);
    return json.map((e)=>Homemodel.fromJson(e)).toList();
}
}