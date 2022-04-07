// @dart =2.9
import 'dart:io';

void main() 
{
	var end = 100;
	
	print("Please enter your name");
	String name = stdin.readLineSync();
	
	print("Please enter your age");
	int age = int.parse(stdin.readLineSync());
	
	print('\nName : ${name} \nAge: ${age}\n"${name}, You have ${end-age} years to be 100" ');
}
