//@dart = 2.12;
import 'dart:io';
void main() 
{
  SubjectsModel sub1 = SubjectsModel(name: "Math");
  SubjectsModel sub2 = SubjectsModel(name: "Urdu");
  SubjectsModel sub3 = SubjectsModel(name: "English");
  List<SubjectsModel> subList = [sub1,sub2,sub3];

  StudentsModel safi = StudentsModel(id: 1, name: "safi", subjects: subList);
  StudentsModel umar  = StudentsModel(id: 2, name: "umar", subjects: subList);
  StudentsModel ali    = StudentsModel(id: 3, name: "ali", subjects: subList);
  List<StudentsModel> students = [safi, umar, ali];

  List <String> grades  = ['','',''];
  List <double> avg  = [0.0,0.0,0.0];
  List <int> sums  = [0,0,0];
  List <String> results  = ['','',''];

	
  for (int i = 0; i < students.length; i++) 
  {  
    int sum = 0;
    print("\nEnter Studetn ${i+1} Marks:");
    for ( int n = 0; n < subList.length; n++) 
  	{
      int input = int.parse(stdin.readLineSync()!);
      if(input >= 0 && input<= 100)
	    subList[n].marks = input;
      sum +=  input;
    }
    sums [i] = sum;
    avg  [i]  = (sum/300)*100;
            //if statement for grades
            if(avg[i] >= 80.0 )
                  { grades[i] = "A";
                  }else if(avg[i] >= 60.0 && avg[i] <80.0)
                  { grades[i] = "B";
                  }else if(avg[i] >= 40.0 && avg[i] <60.0)
                  { grades[i] = "C";
                  }else{grades[i] = "Faild";
                  }
    results[i] = '\n*****Result*****\nName: ${students[i].name}  Id: ${students[i].id}\n${subList[0].name}: ${subList[0].marks}/100\n${subList  [1].name}: ${subList[1].marks}/100\n${subList[2].name}: ${subList[2].marks}/100\n\nTotal: ${sums[i]}/300\nAverage: ${avg[i]}\nGrade: ${grades[i]} ';

  }//end outer loop
          print("***...Finding result...***\nThere are two ways to find your result :>\n1: By Name  2: By ID\nEnter your name or ID");
          dynamic finder = stdin.readLineSync();
               if(finder == "safi" || finder == "1"){
                   print(results[0]);
               }else if(finder == "umar" || finder == "2"){
                   print(results[1]);
               }else if(finder == "ali" || finder == "3"){
                   print(results[2]);
               }else print("Invalid input");
}

class StudentsModel 
{
  String? name;
  int? id;
  List<SubjectsModel>? subjects;

  StudentsModel({this.name, this.id, this.subjects});
  // String? get getName => name; set setName (String name){this.name = name;}
  //   int? get getId => id; set setId (int id) {this.id = id;}
   nI(){
    return "Name: ${name}  Id: ${id}";
  }  
  
  }

class SubjectsModel 
{
  String? name;
  int? marks;
  
  SubjectsModel({this.name, this.marks});
	// String? get getName => name; set setName (String name) {this.name = name;}
	// int? get getMarks => marks; set setMarks (int marks) {this.marks = marks;}
}