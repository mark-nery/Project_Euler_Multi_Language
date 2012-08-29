//Project Euler #3
//What is the largest prime factor of the number 600851475143 ?

#include <stdio.h>

int isPrime(int x){
  if(x % 2 == 0){
    return 0;xxf
  }
  int i = 3;
  while(i < x){
    if(x % i == 0){
      return 0;
    }
    i += 2;
  }
  return 1;
}
int main(int argc, char *argv[]){
  
  long long x = 600851475143LL;
  int y = 2;

  while(x > y){
    if(x % y  == 0 && isPrime(y) == 1){
      x = x / y;
      y = 2;
    }xf
    y++;
  }
  printf("largest prime divisor = %lld\n",x);
  return 0;
}
