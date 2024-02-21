import 'dart:io';

void main() {
  String correctEmail = "SaylaniSMIT@gmail.com";
  String correctPassword = "khaskheli123";
  String email;
  String password;

  do {
    print('Welcom to my Project');
    print('x==================x');
    print("Enter your email:");
    email = stdin.readLineSync()!;
    print("Enter your password:");
    password = stdin.readLineSync()!;

    if (email != correctEmail || password != correctPassword) {
      print("Email or password is incorrect. Please try again.");
    }
  } while (email != correctEmail || password != correctPassword);

  print("User login successful.");

  int Marks = 0;
  int totalQuestions = 10;

  List<String> questions = [
    'Flutter is a/an_.',
    'Which of the following widget is used for repeating contant in Flutter?',
    'Flutter rendering engine  is primarily written in which programming language?',
    'Flutter is developed by__.',
    'Which of the following language is used to build flutter app?',
    'Which elements is used as an identifier in Flutter?',
    'What are the features of Flutter?',
    'Which of the following option is used to represent a collects of objects in Dart?',
    'Which the following is used to load image from flutter project'
        's assests?',
    'What does SDK stands for?',
  ];

  List<List<String>> options = [
    [
      'DBMS',
      'Open-source UI toolkit',
      'open-source web development framwork',
      'None of the above'
    ],
    ['ListView', 'ArrayView', 'ExpandedView', 'None of the above'],
    ['Java', 'Google Dart', 'C#', 'C++'],
    ['Google', 'Meta', 'Microsoft', 'Twitter'],
    ['Go', 'Java', 'Dart', 'React'],
    ['Serial', 'Widget', 'All of the above', 'Keys'],
    [
      'Fast development',
      'Huge widget catalog',
      'High performance application',
      'All of the above'
    ],
    ['String', 'Numbers', 'Booleans', 'List and Map'],
    ['Image', 'Image.file', 'Image.assest', 'Image.memory'],
    [
      'Softwere Data kit',
      'Softwere Database kit',
      'Softwere development kit',
      'None of the above'
    ],
  ];

  List<int> correctAnswers = [
    1,
    0,
    3,
    0,
    2,
    3,
    3,
    3,
    2,
    2,
  ];

  List<int> points = [
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
  ];

  for (int i = 0; i < totalQuestions; i++) {
    print('Question ${i + 1}: ${questions[i]}');
    for (int j = 0; j < options[i].length; j++) {
      print('${j + 1}. ${options[i][j]}');
    }
    stdout.write('Enter your answer (1-${options[i].length}): ');
    int userAnswer = int.parse(stdin.readLineSync()!);
    userAnswer--;
    if (userAnswer == correctAnswers[i]) {
      Marks += points[i];
    }
  }

  double percentage = (Marks / (totalQuestions * 10)) * 100;
  print('_____Result_____');
  print('____________________');
  print('email: $correctEmail');
  print('Your Marks is $Marks out of ${totalQuestions * 10}.');
  print('Percentage: $percentage%');
  if (percentage == 80) {
    print('*Pass with Grade B*');
  } else if (percentage == 90) {
    print('*Pass with Grade : A*');
  } else if (percentage == 100) {
    print('*Pass with Grade : A+*');
  } else {
    print('Fail');
  }
}
