import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/grid_category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: 'Some title', meals: []),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Pick Your Category')),
        body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            // 1st way
            ...availableCategories.map(
              (category) => GridCategoryItem(
                category: category,
                onSelectCategory: () {
                  _selectCategory(context);
                },
              ),
            ),
            //2nd way
            // for(final category in availableCategories )
            // GridCategoryItem(category: category)
          ],
        ),
      ),
    );
  }
}
