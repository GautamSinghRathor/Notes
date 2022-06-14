class Note {
  String? title, subtitle;
  Note({this.title, this.subtitle});

  @override
  String toString() {
    return "title : $title subtitle : $subtitle";
  }
}
