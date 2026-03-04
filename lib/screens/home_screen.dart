import 'package:flutter/material.dart';
import 'package:recipe_book_app/data/recipes_data.dart';
import 'package:recipe_book_app/screens/details_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nabia's Cookbook"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero, //makes the list touch the bottom
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            child: ListTile(
              leading: Image.asset(recipe.imagePath, width: 56, fit: BoxFit.cover),
              title:   Text(recipe.name),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );  
  }
}