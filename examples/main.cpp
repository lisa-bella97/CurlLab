#include <curl.hpp>
#include <iostream>

int main()
{
    std::cout << get_response_code() << std::endl;
    std::cout << getenv("TEST") << std::endl;
    
    return 0;
}
