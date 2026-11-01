String greet(String name) {
  return 'Привет, $name!';
}

String greetArrow(String name) => 'Привет, $name!';
int square(int x) => x * x;
double half(double x) => x / 2;

void describePet({required String name, String species = 'кот', int age = 0}) {
  print('$name - $species, возраст $age');
}

String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}

void main() {
  String name = 'Софья';
  int age = 17;
  double height = 1.55;
  bool isStudent = true;

  print(name);
  print(age);
  print(height);
  print(isStudent);

  print('Привет, $name! Тебе $age лет.');
  print('Через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: ${height} м, студент: $isStudent');

  var score = 95;
  var language = 'Dart';
  print('$language: $score');

  final String lang2 = 'Dart';
  final int releaseYear = 2011;
  print('$lang2, $releaseYear');

  const String appName = 'Lab1';
  final int startYear = 2026;
  print('$appName started in $startYear');

  String? city = null;
  if (city != null) {
    print(city.toUpperCase());
  }
  print(city?.toUpperCase());

  String? nickname = null;
  String display = nickname ?? 'Аноним';
  print(display);

  List<String> fruits = ['яблоко', 'банан', 'груша'];
  fruits.add('апельсин');
  print(fruits[0]);
  print(fruits.length);

  Map<String, dynamic> person = {'name': 'Софья', 'age': 17};
  print(person['name']);
  person['city'] = 'Волжский';

  Set<int> ids = {1, 2, 3, 2, 1};
  print(ids);
  print(ids.length);

  for (var fruit in fruits) {
    print(fruit);
  }

  print(greet('Софья'));
  print(greetArrow('Мария'));
  print(square(5));
  print(half(10));

  describePet(name: 'Барсик', age: 3);
  describePet(name: 'Шарик', species: 'пёс');

  print(repeat('ха'));
  print(repeat('ха', 3));

  List<int> numbers = [3, 1, 4, 1, 5, 9];
  numbers.sort((a, b) => b - a);
  print(numbers);

  List<String> names = ['Софья', 'Мария', 'Иван'];
  print(names.map((n) => n.toUpperCase()).toList());
  print(names.where((n) => n.length > 4).toList());
}