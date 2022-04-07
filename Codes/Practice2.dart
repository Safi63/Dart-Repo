// @dart =2.9
import 'dart:io';
import 'dart:math';

void main() 
{
	int attepmts = 0;
	int input;
	
	Random random = new Random();
    int randomNumber = random.nextInt(100);
	//print(randomNumber);
	
	print("Guess the number!\n");
	
	do{
		input = int.parse(stdin.readLineSync());
		attepmts = attepmts+1;
		
			if(input>randomNumber){
			print("You are to high");
			
			} else if(input<randomNumber){
			print("You are to low");

			} else{
			
			print("You are right! \nPlease enter your name");
			var name = stdin.readLineSync();
			print('\n"${name}, your are the winner!"');
			
			}
			
	}while(input != randomNumber);
	
	print("Total attepmts are: ${attepmts}");
}
