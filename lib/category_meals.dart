import 'package:flutter/material.dart';
import './meal_item.dart';
import './dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  final String catID;
  final String catTitle;
  CategoryMeals(this.catID, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catID);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(catTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
