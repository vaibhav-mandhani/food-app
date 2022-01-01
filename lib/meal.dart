enum Complexity {
  Simple,
  Challenging,
  Hard,
}
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const Meal(
      {this.id,
      this.categories,
      this.title,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability});
}
