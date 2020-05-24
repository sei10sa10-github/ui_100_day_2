import 'dart:convert';

import 'package:flutter/services.dart';
import '../models/destination.dart';

class DestinationService {
  Future<List<Destination>> loadDestinations() async {
    String jsonString =
        await rootBundle.loadString('assets/json/mock_destinations.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    final results = jsonList.map((e) {
      final destination = Destination.fromJson(e);
      print(destination);
      return destination;
    }).toList();
    return results;
  }
}
