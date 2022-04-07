import 'dart:io';

class Student
{
	 String? name;
	int? ID ;

  int? tnum;
  double? per;
  String? grade; 
	
	// constructor
	Student(String name,int ID)
	{
	this.name = name;
	this.ID = ID;
	} 
	
// named constructor
  Student.result(int tnum , double per, String grade)
  {
    this.tnum = tnum;
    this.per = per;
    this.grade = grade;
  }

  void namePrinter()
  {
    print("Student Name: ${name}\nStudent Id: ${ID}");
  }
  
  void resultPrinter()
  {
    print("Dear ${name}! your total marks are :${tnum}/300 \n and your Percentage \nStudent Id: ${ID}");
  }

}   