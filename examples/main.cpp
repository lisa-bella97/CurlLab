#include <curl.hpp>
#include <iostream>
#include <stdlib.h>

int main()
{
    std::cout << get_response_code() << std::endl;
    std::cout << getenv("TEST") << std::endl;
    
    return 0;
}
