// @dart =2.9
import 'dart:io';

void main() { 
  	
   print("W3Adda - Dart Parameterized Constructor"); 
   Sample emp = new Sample('safi',23);
	emp.printer();
}

class Sample{
	String name = "";
	int age = 0;
	Sample(String name, int age)
	{
		this.name = name;
		this.age = age;
	}
	
	void printer()
	{
		print("Name is ${name} and Age is ${age}");
	}
}

