//Problem 2
//http://projecteuler.net/problem=2
//By considering the terms in the Fibonacci 
//  sequence whose values do not exceed four million, 
//  find the sum of the even-valued terms.

#include <stdio.h>

int main(int argc, char *argv[]){
  
  int prev = 1;
  int next = 2;
  int hold;

  int sum = 1;
  
  while(next < 4000000){
    
    hold = prev;
    prev = next;
    next = next + hold;
    
    if(next % 2 == 0){
      sum += next;
    }
   
  }
  printf("sum is %d",sum);  // 4613731

  return 0;
}
