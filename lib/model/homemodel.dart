// To parse this JSON data, do
//
//     final homemodel = homemodelFromJson(jsonString);

import 'dart:convert';

Homemodel homemodelFromJson(String str) => Homemodel.fromJson(json.decode(str));

String homemodelToJson(Homemodel data) => json.encode(data.toJson());

class Homemodel {
  Name name;
  List<String> tld;
  String cca2;
  String ccn3;
  String cca3;
  String cioc;
  String fifa;
  bool independent;
  String status;
  bool unMember;
  Currencies currencies;
  Idd idd;
  List<String> capital;
  List<String> altSpellings;
  String region;
  String subregion;
  List<String> continents;
  Languages languages;
  Map<String, Translation> translations;
  List<int> latlng;
  bool landlocked;
  List<String> borders;
  int area;
  String flag;
  Demonyms demonyms;
  List<String> flags;
  int population;
  Maps maps;
  Gini gini;
  Car car;
  List<String> timezones;
  String postal;

  Homemodel({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.fifa,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.continents,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.flag,
    required this.demonyms,
    required this.flags,
    required this.population,
    required this.maps,
    required this.gini,
    required this.car,
    required this.timezones,
    required this.postal,
  });

  factory Homemodel.fromJson(Map<String, dynamic> json) => Homemodel(
    name: Name.fromJson(json["name"]),
    tld: List<String>.from(json["tld"].map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    fifa: json["fifa"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: Currencies.fromJson(json["currencies"]),
    idd: Idd.fromJson(json["idd"]),
    capital: List<String>.from(json["capital"].map((x) => x)),
    altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    continents: List<String>.from(json["continents"].map((x) => x)),
    languages: Languages.fromJson(json["languages"]),
    translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
    latlng: List<int>.from(json["latlng"].map((x) => x)),
    landlocked: json["landlocked"],
    borders: List<String>.from(json["borders"].map((x) => x)),
    area: json["area"],
    flag: json["flag"],
    demonyms: Demonyms.fromJson(json["demonyms"]),
    flags: List<String>.from(json["flags"].map((x) => x)),
    population: json["population"],
    maps: Maps.fromJson(json["maps"]),
    gini: Gini.fromJson(json["gini"]),
    car: Car.fromJson(json["car"]),
    timezones: List<String>.from(json["timezones"].map((x) => x)),
    postal: json["postal"],
  );

  Map<String, dynamic> toJson() => {
    "name": name.toJson(),
    "tld": List<dynamic>.from(tld.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "fifa": fifa,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies": currencies.toJson(),
    "idd": idd.toJson(),
    "capital": List<dynamic>.from(capital.map((x) => x)),
    "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "continents": List<dynamic>.from(continents.map((x) => x)),
    "languages": languages.toJson(),
    "translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "latlng": List<dynamic>.from(latlng.map((x) => x)),
    "landlocked": landlocked,
    "borders": List<dynamic>.from(borders.map((x) => x)),
    "area": area,
    "flag": flag,
    "demonyms": demonyms.toJson(),
    "flags": List<dynamic>.from(flags.map((x) => x)),
    "population": population,
    "maps": maps.toJson(),
    "gini": gini.toJson(),
    "car": car.toJson(),
    "timezones": List<dynamic>.from(timezones.map((x) => x)),
    "postal": postal,
  };
}

class Car {
  List<String> signs;
  String side;

  Car({
    required this.signs,
    required this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: List<String>.from(json["signs"].map((x) => x)),
    side: json["side"],
  );

  Map<String, dynamic> toJson() => {
    "signs": List<dynamic>.from(signs.map((x) => x)),
    "side": side,
  };
}

class Currencies {
  Inr inr;

  Currencies({
    required this.inr,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    inr: Inr.fromJson(json["INR"]),
  );

  Map<String, dynamic> toJson() => {
    "INR": inr.toJson(),
  };
}

class Inr {
  String name;
  String symbol;

  Inr({
    required this.name,
    required this.symbol,
  });

  factory Inr.fromJson(Map<String, dynamic> json) => Inr(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Demonyms {
  Eng eng;
  Eng fra;

  Demonyms({
    required this.eng,
    required this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: Eng.fromJson(json["eng"]),
    fra: Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng.toJson(),
    "fra": fra.toJson(),
  };
}

class Eng {
  String f;
  String m;

  Eng({
    required this.f,
    required this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}

class Gini {
  double the2011;

  Gini({
    required this.the2011,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
    the2011: json["2011"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "2011": the2011,
  };
}

class Idd {
  String root;
  List<String> suffixes;

  Idd({
    required this.root,
    required this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: List<String>.from(json["suffixes"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
  };
}

class Languages {
  String eng;
  String hin;
  String tam;

  Languages({
    required this.eng,
    required this.hin,
    required this.tam,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    eng: json["eng"],
    hin: json["hin"],
    tam: json["tam"],
  );

  Map<String, dynamic> toJson() => {
    "eng": eng,
    "hin": hin,
    "tam": tam,
  };
}

class Maps {
  String googleMaps;
  String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  String common;
  String official;
  NativeName nativeName;

  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName.toJson(),
  };
}

class NativeName {
  Translation eng;
  Translation hin;
  Translation tam;

  NativeName({
    required this.eng,
    required this.hin,
    required this.tam,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    eng: Translation.fromJson(json["eng"]),
    hin: Translation.fromJson(json["hin"]),
    tam: Translation.fromJson(json["tam"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng.toJson(),
    "hin": hin.toJson(),
    "tam": tam.toJson(),
  };
}

class Translation {
  String official;
  String common;

  Translation({
    required this.official,
    required this.common,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}
