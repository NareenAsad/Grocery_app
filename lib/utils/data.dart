import 'package:grocery_app/app/data/category_model.dart';
import 'package:grocery_app/app/data/product_model.dart';

class DummyHelper {
  const DummyHelper._();

  static const _description =
      'Red onions are cultivars of the onion (Allium cepa), and have purplish-red skin and white flesh tinged with red. They are most commonly used in cooking,';
  static List<Map<String, String>> cards = [
    {'icon': 'assets/images/1.png', 'title': '100%', 'subtitle': 'Organic'},
    {
      'icon': 'assets/images/2.png',
      'title': '1 Year',
      'subtitle': 'Expiration'
    },
    {
      'icon': 'assets/images/3.png',
      'title': '4.8 (256)',
      'subtitle': 'Reviews'
    },
    {'icon': 'assets/images/4.png', 'title': '80 kcal', 'subtitle': '100 Gram'},
  ];

  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: 'Fruits', image: 'assets/images/apple.png'),
    CategoryModel(
        id: 2, title: 'Vegetables', image: 'assets/images/broccoli.png'),
    CategoryModel(id: 3, title: 'Cheeses', image: 'assets/images/cheese.png'),
    CategoryModel(id: 4, title: 'Meat', image: 'assets/images/meat.png'),
  ];

  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: 'assets/images/bellPepper.png',
      name: 'Bell Pepper Red',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 2,
      image: 'assets/images/lambmeat.png',
      name: 'Lamb Meat',
      quantity: 0,
      price: 44.99,
      description: _description,
    ),
    ProductModel(
      id: 3,
      image: 'assets/images/peas.png',
      name: 'Arabic Ginger',
      quantity: 0,
      price: 4.99,
      description: _description,
    ),
    ProductModel(
      id: 4,
      image: 'assets/images/potatos.png',
      name: 'Fresh Lettuce',
      quantity: 0,
      price: 3.99,
      description: _description,
    ),
    ProductModel(
      id: 5,
      image: 'assets/images/onion.png',
      name: 'Butternut Squash',
      quantity: 0,
      price: 8.99,
      description: _description,
    ),
    ProductModel(
      id: 6,
      image: 'assets/images/greensalad.png',
      name: 'Organic Carrots',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 7,
      image: 'assets/images/bellcolorpepper.png',
      name: 'Fresh Broccoli',
      quantity: 0,
      price: 3.99,
      description: _description,
    ),
    ProductModel(
      id: 8,
      image: 'assets/images/apple.png',
      name: 'Cherry Tomato',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 9,
      image: 'assets/images/broccoli.png',
      name: 'Fresh Spinach',
      quantity: 0,
      price: 2.99,
      description: _description,
    ),
  ];
}
