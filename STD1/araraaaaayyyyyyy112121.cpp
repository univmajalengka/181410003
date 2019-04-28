#include <iostream>
using namespace std;

char fakultas[5][12]={"informaika","mesin","sipil","industri"};
int n;

int main (){
	for(n=0;n<4;n++){
	cout << "Masukan Data :"; cin >> n;
	cout << "Ouput Data :" << fakultas[n]; cout << "\n";
	}
 return 0;
}
