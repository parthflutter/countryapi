import 'package:countryapi/ulitis/apihelper.dart';
import 'package:flutter/material.dart';

import '../model/homemodel.dart';

class Homecontroller extends ChangeNotifier{
  Future<Homemodel>CountryJsonParsing() async {
    var helper = Apihelper.helper;
    var m1 = await helper.countryapi();
    return m1;
  }
}