import 'dart:io';
import 'dart:math';

void area() {
  stdout.write("Please Enter The Radius :\n");
  int radius = int.parse(stdin.readLineSync()!);
  double n=3.14;
  double area = n*radius*radius;
  print(area);
}

void fileName() {
  stdout.write("Enter The FileName :\n");
  String filename = stdin.readLineSync()!;
  List<String> n = filename.split(".") ;
  print(n[1]);
}

void difference (){
  stdout.write("Enter Number :\n");
  int x =int.parse(stdin.readLineSync()!);
  int y = x-23;
  if(y>23)
  {
    print(y*2);
  }
  else
  {
    print(y.abs());
  }

}

void primeNumber(){
  int i,j;
  for( i=1;i<=100;i++)
  {
    for( j=2;j<i;j++)
    {
      if(i%j==0) {
        break;
      }
    }
    if(i==j)
    {
      print(i);
    }
  }
}

void listOfColor(){
  List colors = ["Red","Green","White" ,"Black"];
  print(colors.first);
  print(colors.last);
}

void vowelChar() {
  stdout.write("Enter The Character :\n");
  String? c = stdin.readLineSync() ;
  if(c=='a'||c=='e'||c=='i'||c=='o'||c=='u'||c=='A'||c=='E'||c=='I'||c=='O'||c=='U')
  {
    print ("vowel\n");
  }
  else
  {
    print("Not vowel\n");
  }

}

void removeWhitespaces(){
  stdout.write("Enter Word :\n");
  String word=stdin.readLineSync()!;
  print(word.trim());
}

void randomNumber()
{
  String x=generateRandom();
  int status=0;
  if(x=="null")
  {
    print(status);
  }
  else
  {
    status=100;
    print(status);
  }

}

generateRandom(){
  var random = Random();
  bool x = random.nextBool();
  String y;

  if(x==true)
  {
    y="100";
  }
  else
  {
    y="null";
  }
  return y;
}



void main() {
  area();
  fileName();
  difference();
  primeNumber();
  listOfColor();
  vowelChar();
  removeWhitespaces();
  randomNumber();

}
