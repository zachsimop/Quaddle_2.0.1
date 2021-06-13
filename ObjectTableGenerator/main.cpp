
#include <iostream>
#include <fstream>
#include <random>

//CONSTANTS
const std::string FPATH = "C:\\Users\\zachs\\Documents\\Lab\\Quaddle 2.0\\Test Driver\\Patterns and Object Table\\myObjectTable.txt";

const size_t OBJTYPELENGTH = 3;
const size_t MAXQLENGTH = 5;
const size_t MAXPLENGTH = 2;
const size_t MAXSLENGTH = 1;

const std::string OBJTYPE[OBJTYPELENGTH] = {"Q","P","S"};
const size_t  MAXQVALS[MAXQLENGTH] = {2,2,2,2,4};
const size_t  MAXPVALS[MAXPLENGTH] = {2,4};
const size_t  MAXSVALS[MAXSLENGTH] = {7};

const size_t NUMOBJECTSDEFAULT = 5;
const size_t DEFAULTSTACKNUM = 2;
const std::string NEWOBJECT = "---\n";
const std::string ENDTABLE = "***";

//METHODS
void displayInstructions();
std::string addObjectProperties(const size_t arr[], const size_t arraySize, std::random_device &gR);
size_t getObjectCount();
size_t getstackSize();
bool verifyNum(std::string num);
bool isQuaddle(std::string obj);
bool isPedastal(std::string obj);
bool isShape(std::string obj);


int main() {

    int numObjects;
    int stackHeight;

    displayInstructions();

//GET FILE LOCATION

    std::ofstream outfile;
    outfile.open(FPATH, std::ofstream::out | std::ofstream::trunc);

    size_t i = 0;
    std::string object;
    std::random_device genRand;
    while(i < NUMOBJECTSDEFAULT){

        //Determine the Kind of Shape
        object = "";
        object += OBJTYPE[genRand() % OBJTYPELENGTH];

        if( isQuaddle(object) )
            object += addObjectProperties(MAXQVALS, MAXQLENGTH, genRand);

        if( isPedastal(object) )
            object += addObjectProperties(MAXPVALS, MAXPLENGTH, genRand);

        if( isShape(object) )
            object += addObjectProperties(MAXSVALS, MAXSLENGTH, genRand);

        outfile << object << std::endl;
        std::cout<<object << std::endl;

        if(i != NUMOBJECTSDEFAULT-1) {
            outfile << NEWOBJECT;
            std::cout << NEWOBJECT;
        }
        i++;
    }

    outfile << ENDTABLE;
    outfile.close();

    return 0;
}

void displayInstructions() {

    std:: string x;
    std::cout<<"Welcome!\nThis is an object table generator for Quaddle 2.0.1\n";
    std::cout<<"Here are the capabilities of the current Quaddle software:\n";

    std::cout<<"It can create three kinds of objects.\n"
               "(1) Quaddle 1.0\n"
               "(2) Pedastal Object\n"
               "(3) Shape Object\n";

    std::cin.ignore();

    std::cout<<"Quaddle Dimensions:\n(1) Body\n(2) Colour\n(3) Pattern\n(4)Arm Angle\n(5) Arm Ends\n";
    std::cout<<"Each Dimension has it's own varaint.\n";
    std::cout<<"Body: [1]Oblong [2]Pyramidal\n";
    std::cout<<"Colour: [1]More Red [2]More Orange\n";
    std::cout<<"Pattern: [1]Diamond [2]Checkered\n";
    std::cout<<"Arm Angle: [1]Bent Up [2]Bent Down\n";
    std::cout<<"Arm Ends: [1]Flat [2]Blunt [3]Pointed [4]Flared\n";

    std::cin.ignore();

    std::cout<<"Pedastal Dimensions:\n(1) Character\n(2) Arm Ends\n";
    std::cout<<"Each Dimension has it's own varaint.\n";
    std::cout<<"Arm Ends: [1]Flat [2]Blunt [3]Pointed [4]Flared\n";

    std::cin.ignore();

    std::cout<<"Shape Dimensions:\n(1) Shape";
    std::cout<<"Shape: [1]Cone [2]Pyramid [3]Hedra [4]pentagon [5]Gengon [6]Carrot [7]Spring\n";

}

std::string  addObjectProperties(const size_t arr[], const size_t arrayLength, std::random_device &gR) {

    std::string returnString;
    for(size_t z = 0; z < arrayLength; z++){
        returnString += std::to_string((gR() % arr[z] + 1));
    }

    return returnString;

}

size_t getObjectCount(){

    std::string objectCount;
    std::cout << "How many objects do you want to make?\n";
    std::cin >> objectCount;

    return verifyNum(objectCount);



}

bool isQuaddle(std::string obj){

    return obj == "Q";
}

bool isPedastal(std::string obj){

    return obj == "P";
}

bool isShape(std::string obj){

    return obj == "S";
}

bool verifyNum(std::string num){

    if(num == "" || num == " ")
        return false;

    for(size_t i = 0; i < num.length(); i++){

        if(num[i] < '0' || num[i] > '9')
            return false;

    }

    return true;

}