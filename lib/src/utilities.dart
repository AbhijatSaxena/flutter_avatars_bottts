import 'dart:math';

T pickRandomItem<T>(List<T> collection) {
  return collection[Random().nextInt(collection.length)];
}

T pickOneItem<T>(List<dynamic> collection, dynamic id) {
  var result = collection.where((element) => element.id == id);
  if (result.length > 0) {
    return result.elementAt(0);
  } else {
    return null;
  }
}

String enumToJson<T>(T value) =>
    value != null ? value.toString().split('.')[1] : null;

T enumFromJson<T>(List<T> values, String json) => json != null
    ? values.firstWhere(
        (it) => enumToJson(it).toLowerCase() == json.toLowerCase(),
        orElse: () => null)
    : null;
