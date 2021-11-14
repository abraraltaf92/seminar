const String _idKey = "@id";
const String _descriptionKey = "@description";

class Event {
  final String id;
  final String description;

  const Event({
    @required this.id,
    @required this.description,
  });

  factory Event.fromMap(Map<String, dynamic> data) {
    if (data.isEmptyOrNull) return null;
    return Event(
      id: data[_idKey] as String,
      description: data[_descriptionKey] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _idKey: id,
      _descriptionKey: description,
    };
  }

  factory Event.fromJson(String data) {
    if (data.isEmptyOrNull) return null;
    return Event.fromMap(json.decode(data) as Map<String, dynamic>);
  } 

  String toJson() {
    final map = toMap();
    return json.encode(map);
  }
}
