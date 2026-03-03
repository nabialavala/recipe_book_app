import '../models/recipe.dart';

final List<Recipe> recipes = [
  //Spaghetti recipe
  Recipe(
    name: 'Spaghetti Bolognese',
    imagePath: 'assets/images/pasta.jpg',
    ingredients: ['Spaghetti', 'Ground beef', 'Tomato sauce', 'Onion', 'Garlic'],
    instructions: 'Cook pasta. Brown beef with onion & garlic. Add sauce. Combine & serve.',
  ),
  //Chicken Stir Fry
  Recipe(
    name: 'Chicken Stir Fry',
    imagePath: 'assets/images/stirfry.jpg',
    ingredients: [
      'Chicken breast',
      'Bell peppers',
      'Broccoli',
      'Soy sauce',
      'Garlic',
      'Olive oil',
    ],
    instructions:
        'Slice chicken and vegetables. Heat oil in a pan and cook chicken until browned. Add garlic and vegetables, stir fry for 5–7 minutes. Add soy sauce and cook until vegetables are tender. Serve hot.',
  ),
  //Classic
  Recipe(
    name: 'Buttermilk Pancakes',
    imagePath: 'assets/images/pancakes.jpg',
    ingredients: [
      'Flour',
      'Milk',
      'Egg',
      'Baking powder',
      'Sugar',
      'Butter',
    ],
    instructions:
        'Mix dry ingredients in a bowl. Add milk and egg, whisk until smooth. Heat a pan and melt butter. Pour batter into pan and cook until bubbles form, then flip and cook the other side. Serve with syrup.',
  ),
  //Greek salad
  Recipe(
    name: 'Greek Salad',
    imagePath: 'assets/images/salad.jpg',
    ingredients: [
      'Cucumber',
      'Cherry tomatoes',
      'Red onion',
      'Feta cheese',
      'Olive oil',
      'Lemon juice',
    ],
    instructions:
        'Chop vegetables and place in a bowl. Add crumbled feta. Drizzle with olive oil and lemon juice. Toss gently and serve chilled.',
  ),
];