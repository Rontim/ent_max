class MovieModal {
  String? imageAsset;
  String? movieName;
  String? movieRating;
  String? year;
  String? director;
  String? description;
  final List<String>? categoryTag;
  final List<Map>? cast;
  final List<Map>? comments;
  MovieModal({
    this.imageAsset,
    this.movieName,
    this.movieRating,
    this.year,
    this.comments,
    this.cast,
    this.director,
    this.description,
    this.categoryTag,
  });
}
