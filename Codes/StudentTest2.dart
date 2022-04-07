// @dart =2.9
import 'dart:io';
import 'dart:math';
import 'Student.dart';

void main() { 

  var sub1 = new List(3);
  var sub2 = new List(3);
  var sub3 = new List(3);

  List <int> totalNum = new List(3);
  List <double> percentage = new List(3); 
  List  <String> grade = new List(3); 
 
  var names =  ['Safi','Ali','Umar'];
  var Ids =  [1,2,3]; 

  Student s1 = new Student ("Safi", 1);
  Student s2 = new Student ("Ali", 2);
  Student s3 = new Student ("Umar", 3);

  int full = 300;

    for(int x = 1 ; x <4 ;x++){
      switch(x){

        case 1 : 
          {while(true)
          {
            s1.namePrinter();
            print("Enter Math Marks");
            int math = int.parse(stdin.readLineSync());
            
            print("Enter English Marks");
            int urdu = int.parse(stdin.readLineSync());
            
            print("Enter Urdu Marks");
            int eng = int.parse(stdin.readLineSync());

            if(math<=100 && eng<=100 && (urdu<=100)){
                print(" ");
              sub1[0] = math;
              sub2[0] = eng;
              sub3[0] = urdu;

               int tnum = math+eng+urdu;
               var per =  (tnum/full)*100;
              totalNum[0] = tnum;
              percentage[0] = per;

                  //if statement for grades
                  if(per >= 80.0 )
                  {
                    grade[0] = "A";
                  }else if((per >= 60.0) && per <80.0)
                  {
                    grade[0] = "B";
                  }else if((per >= 40.0) && per <60.0)
                  {
                    grade[0] = "C";
                  }else
                  {
                    grade[0] = "F";
                  }

               break;
            }else{
                    print("Something is wrong please re-enter these values \n");
                }
            
            // break;
            }
          }
          break;

            case 2 : 
            {
             while(true){
            s2.namePrinter();
            print("Enter Math Marks");
            int math = int.parse(stdin.readLineSync());
            
            print("Enter English Marks");
            int urdu = int.parse(stdin.readLineSync());
            
            print("Enter Urdu Marks");
            int eng = int.parse(stdin.readLineSync());
            
            if(math<=100 && eng<=100 && (urdu<=100)){
               print(" ");
              sub1[1] = math;
              sub2[1] = eng;
              sub3[1] = urdu;
            
               int tnum = math+eng+urdu;
               var per =  (tnum/full)*100;
              totalNum[1] = tnum;
              percentage[1] = per;

                  //if statement for grades
                  if(per >= 80.0 )
                  {
                    grade[1] = "A";
                  }else if((per >= 60.0) && per <80.0)
                  {
                    grade[1] = "B";
                  }else if((per >= 40.0) && per <60.0)
                  {
                    grade[1] = "C";
                  }else
                  {
                    grade[1] = "F";
                  }

               break;
            }else{
                    print("Something is wrong please re-enter these values \n");
                }
            // break; print('safi');
              }
            }

            break;

            case 3 : 
           {
           while(true){
            s3.namePrinter();
           print("Enter Math Marks");
            int math = int.parse(stdin.readLineSync());
            
            print("Enter English Marks");
            int urdu = int.parse(stdin.readLineSync());
            
            print("Enter Urdu Marks");
            int eng = int.parse(stdin.readLineSync());
            
            
            if(math<=100 && eng<=100 && (urdu<=100)){
              print(" ");
              sub1[2] = math;
              sub2[2] = eng;
              sub3[2] = urdu;

               int tnum = math+eng+urdu;
               var per =  (tnum/full)*100;
              totalNum[2] = tnum;
              percentage[2] = per;

                  //if statement for grades
                  if(per >= 80.0 )
                  {
                    grade[2] = "A";
                  }else if((per >= 60.0) && per <80.0)
                  {
                    grade[2] = "B";
                  }else if((per >= 40.0) && per <60.0)
                  {
                    grade[2] = "C";
                  }else
                  {
                    grade[2] = "F";
                  }

               break;
            }else{
                   print("Something is wrong please re-enter these values \n");
                }
                // break;
              }
            }
            break;

            default:
            {
              print("invalid");
            }
            break;

        }//switch statement end  //safi
      }// end for loop

          print("***...Finding result...***\n");
          print("There are two ways to find your result :>\n1: By Name  2: By ID\nEnter your name or ID");
          
          dynamic finder = stdin.readLineSync();
         
              print("\n**********> Result <**********");
               if(finder == "Safi" || finder == 1){
                   print("Name: ${names[0]}    ID:${Ids[0]}\n\nMath: ${sub1[0]}/100\nEglish: ${sub2[0]}/100\nUrdu: ${sub3[0]}/100\n\nTotal Marks: ${totalNum[0]}/300 \nPercentage is: ${percentage[0]}\nGrade: ${grade[0]}");
               }else if(finder == "Ali" || finder == 2){
                   print("Name: ${names[1]}    ID:${Ids[1]}\n\nMath: ${sub1[1]}/100\nEglish: ${sub2[1]}/100\nUrdu: ${sub3[1]}/100\n\nTotal Marks: ${totalNum[1]}/300 \nPercentage is: ${percentage[1]}\nGrade: ${grade[1]}");
               }else if(finder == "Umar" || finder == 3){
                   print("Name: ${names[2]}    ID:${Ids[2]}\n\nMath: ${sub1[2]}/100\nEglish: ${sub2[2]}/100\nUrdu: ${sub3[2]}/100\n\nTotal Marks: ${totalNum[2]}/300 \nPercentage is: ${percentage[2]}\nGrade: ${grade[2]}");
               }else print("Invalid input");
  
}//end main

