import 'package:flutter/material.dart';
import 'package:recipe_book_app/models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;
  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(recipe.name)
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image
            Image.asset(recipe.imagePath, height: 220, width: double.infinity, fit: BoxFit.cover),
            //Ingredients tite
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Center( 
                child: Text(
                  "Ingredients",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            //Ingredients List
            Padding(
              padding: const EdgeInsetsGeometry.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: recipe.ingredients.map((ingredient) {
                  return Text(
                    "- $ingredient",
                    style: const TextStyle(fontSize: 18),
                  );
                }).toList(),
              ),
            ),
            //Instructions Title
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  "Instructions",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
            //Instructions List
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Text(
                recipe.instructions,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}