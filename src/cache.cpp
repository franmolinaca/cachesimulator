/**********************************
Tarea programada 1. Estructuras 2 IE-0
Authors: Francisco Molina C., Marco Montero C.
Cache memory tracer
To compile: g++ cache.cpp -o cache.o -std=c++11 -lboost_iostreams -lboost_system
To run: ./cache.o <memory file> <associativity> <cache size> <block size>
***********************************/


#include <iostream> /* input, output */
#include <fstream> /* read file*/
#include <random> /* cpp11 random by hardware */
#include "gnuplot-iostream/gnuplot-iostream.h" /* GNUplot plotting library */


using namespace std;


int main(int argc, char *argv[])
{

    std::cout << "There are " << argc << " arguments:\n";

    // Loop through each argument and print its number and value
    for (int count=0; count < argc; ++count)
        std::cout << count << " " << argv[count] << '\n';

    //read a line example
    ifstream myfile(argv[1]);//open to read
    string line;

    while (getline(myfile, line))/* Get a line and save it in a string */
    {
        cout << "Line: "<< line << "."  << endl;
    }


    Gnuplot gp; /* create GNUplot object gp */

    std::default_random_engine eng((std::random_device())());
    std::vector<int> histo (10,0); /* save the random numbers */
    std::vector<int> ref (10,0); /* reference for the plot */


    for (int i = 0; i < 50; ++i)/* ask for 50 random numbers */
    {
        int v = eng() % 10 ;
        histo[v]++;
    }
    for (int i = 0; i < 10; ++i)/* ask for 50 random numbers */
    {
        ref[i]=i;
        std::cout << histo[i] << " de " << ref[i] << std::endl;
    }
    //std::cout << boost::make_tuple(ref,histo);

    /* Set plotting style*/
    gp << "set boxwidth 0.5 \n";
    gp << "set style fill solid \n";
    gp << "set yrange [0:11] \n";
    gp << "set ytics 1 \n";
    gp << "plot '-' using 2: xtic(1) with boxes title 'Holis'\n";
    /* send the tuple with the quantity and tag of the random numbers */
    gp.send1d(boost::make_tuple(ref,histo));

    //std::cout << "Press enter to exit." << std::endl;
	//std::cin.get();

    return 0;
}
