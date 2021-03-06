// Tutorial enumeration type
enum TutorialType {
    basic,
    animatedWidget,
    simple,
    dotIndicator,
    advance,
}

class Tutorial {
  String title;
  String description;
  TutorialType type;

  Tutorial({
    this.title,
    this.description,
    this.type
  });
}

class Tutorials {
  List<Tutorial> list;

  Tutorials(
    this.list
  );
}