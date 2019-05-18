// array of structures

#include <iostream>

#include <string>

#include <sstream>

using namespace std;

struct squad {

string nama;
string id;
string peringkat;
string jabatan;
string julukan;

} nab [4];

void printdata (squad data);
int main ()
{
int n;
for (n=0; n<4; n++) {
cout << "nama: ";
getline (cin,nab[n].nama);
cout<< "id : ";
getline (cin,nab[n].id);
cout << "peringkat : ";
getline (cin,nab[n].peringkat);
cout << "jabatan : ";
getline (cin,nab[n].jabatan);
cout << "julukan : ";
getline (cin,nab[n].julukan);
cout << "\n";
cout << "----- masukan data squad ------\n";
}
cout << "\nData - Data squad yang sudah dimasukan:\n";
for (n=0; n<4; n++)
printdata (nab[n]);
return 0;
}
void printdata (squad data)
{
cout << "-----------------------------------------------------\n";
cout << "\n";
cout <<  data.nama<<"\t";
cout << data.id<<"\t";
cout <<  data.peringkat<< "\t";
cout << data.jabatan<<"\t";
cout <<  data.julukan<< "\t";
cout << "\n";
}