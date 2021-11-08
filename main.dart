import 'dart:io';

void main() {
  task2();
}

task1() {
  var a;
  var b = [];
  dynamic result;

  do {
    a = num.parse(stdin.readLineSync()!);
    b.add(a);
    result = 0;

    for (int i = 0; i < b.length; i++) {
      result = result + b[i];
    }
  } while (a != 0);
  {
    b.removeLast();
  }
  print(b.length);
  print(result);
  print(result / b.length);
}

task2() {
  int? c;
  List a = [];
  var sum;
  do {
    c = int.parse(stdin.readLineSync()!);
    a.add(c);
  } while (c != 0);
  {
    a.removeLast();
  }
  for (int i = 0; i < a.length; i++) {
    if (i.isOdd) {
      a.remove(a[i]);
    }
  }
  sum = a.reduce((value, element) => value + element);

  print(sum);
}
