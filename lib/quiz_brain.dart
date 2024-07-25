import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('The sum of the angles in a triangle is 180 degrees.', true),
    Question('The value of pi (π) is approximately 3.14159.', true),
    Question('A square has four equal sides.', true),
    Question('The derivative of a constant is always zero.', true),
    Question('The square root of 81 is 7.', false),
    Question('The sum of the interior angles of a hexagon is 720 degrees.', true),
    Question('In a standard deck of playing cards, there are 52 cards.', true),
    Question('The Pythagorean theorem applies to all triangles, not just right-angled ones.', false),
    Question('The area of a circle is calculated using the formula πr².', true),
    Question('The value of the square root of 25 is 6.', false),
    Question('The Fibonacci sequence starts with the numbers 0 and 1.', true),
    Question('The sum of the angles in a quadrilateral is 360 degrees.', true),
    Question('In a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.', true),
    Question('Zero is an even number.', true),
    Question('The factorial of 5 is 120.', true),
    Question('An isosceles triangle has three equal sides.', false),
    Question('The circumference of a circle is given by the formula 2πr.', true),
    Question('The sum of the first five prime numbers is 28.', false),
    Question('The equation x^2 - 4 = 0 has two solutions.', true),
    Question('The number 0.999... (repeating) is equal to 1.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  // Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question.
  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  // Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
  void printIsFinished() {
    print(isFinished());
  }

  // Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
