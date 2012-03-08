#include <stdio.h>

int main(int argc, char *argv[]){
  
  int i = 0;
  int sum = 0;

  while(i < 1000){
    if(i % 3 == 0 || i % 5 == 0){
      sum += i;
    }
    i++;
  }

  printf("Sum of multiples of 3 or 5 is %d",sum);

  return 0;
}
