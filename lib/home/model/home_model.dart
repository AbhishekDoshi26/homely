enum HouseTag {
  recent,
  popular,
  bestseller,
}

class HouseModel {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String cost;
  final String location;
  final List<String> amenities;
  final HouseTag tag;
  final bool isSaved;

  HouseModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.cost,
    required this.location,
    required this.amenities,
    required this.tag,
    this.isSaved = false,
  });

  HouseModel copyWith({
    String? id,
    String? title,
    String? imageUrl,
    String? description,
    String? cost,
    String? location,
    List<String>? amenities,
    HouseTag? tag,
    bool? isSaved,
  }) {
    return HouseModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      cost: cost ?? this.cost,
      location: location ?? this.location,
      amenities: amenities ?? this.amenities,
      tag: tag ?? this.tag,
      isSaved: isSaved ?? this.isSaved,
    );
  }
}
