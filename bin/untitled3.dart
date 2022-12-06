import 'dart:io';
import 'dart:math';

void area() {
  stdout.write("Please Enter The Radius :\n");
  int radius = int.parse(stdin.readLineSync()!);
  double n=3.14;
  double area = n*radius*radius;
  print(area);
}

void fileNameExtension() {
  stdout.write("Enter The FileName :\n");
  String filename = stdin.readLineSync()!;
  List<String> n = filename.split(".") ;
  print(n[1]);
}

void difference (){
  stdout.write("Enter Number :\n");
  int x =int.parse(stdin.readLineSync()!);
  if(x>23)
  {
    print((x-23)*2);
  }
  else
  {
    print(23-x);
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

void backWord(){
  stdout.write("Enter a Long String :");
  String words = stdin.readLineSync()!;
  List<String> splited = words.split(' ');
  Iterable<String>reverse = splited.reversed;
  print(reverse);
}

void removeWhitespaces(){
  stdout.write("Enter Word :\n");
  String word=stdin.readLineSync()!;
  print(word.replaceAll(" ", ""));
}

void randomNumber()
{
  int? x=generateRandom();
  int status=0;
  if(x==100)
  {
    status=100;
  }
  print(status);
}

int? generateRandom(){
  Random random = Random();
  bool x = random.nextBool();
  int? num;

  if(x==true)
  {
    num=100;
  }
  else
  {
    num=null;
  }
  return num;
}



void main() {
  area();
  fileNameExtension();
  difference();
  primeNumber();
  listOfColor();
  vowelChar();
  backWord();
  removeWhitespaces();
  randomNumber();

}
