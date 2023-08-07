import 'dart:convert';
import 'package:drug/modules/main/data/models/drug.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MainPageBloc extends ChangeNotifier {
  factory MainPageBloc() => _instance;
  MainPageBloc._init();
  static final MainPageBloc _instance = MainPageBloc._init();

  List<Drug> drugs = [];

  Future<void> getDrugs() async {
    String jsonText = await rootBundle.loadString('assets/data/drugs.json');
    Map<String, dynamic> result = json.decode(jsonText);

    for (var e in (result['drugs'] as List<dynamic>)) {
        drugs.add(
          Drug(
            drugName: e['name'],
            drugDescription: e['description'],
          ),
        );
      }
    notifyListeners();
  }

  Future<void> searchDrugs(String searchKey) async {
    var allDrugs = [...drugs];
    drugs.clear();
    if (searchKey.isNotEmpty) {
      for (var e in allDrugs) {
        if((e.drugName?.contains(searchKey) ?? false) || (e.drugDescription?.contains(searchKey) ?? false)) {
          drugs.add(e);
        }
      }
      notifyListeners();
    } else {
      getDrugs();
    }
  }
}
