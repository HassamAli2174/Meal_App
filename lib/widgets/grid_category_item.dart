import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';
class GridCategoryItem extends StatelessWidget {
  const GridCategoryItem({
    super.key, 
    required this.category, 
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      // splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.3),
              category.color.withOpacity(.9),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).primaryColorDark,
          ),
        ),
      ),
    );
  }
}
