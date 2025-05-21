import 'package:flutter/material.dart';
import 'package:meal_app/models/category.dart';

class GridCategoryItem extends StatelessWidget {
  const GridCategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
