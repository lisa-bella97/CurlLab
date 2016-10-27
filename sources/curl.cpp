#include <curl.hpp>

int get_response_code()
{
    CURL *curl = curl_easy_init();
    
    if(curl) 
    {
        curl_easy_setopt(curl, CURLOPT_URL, "http://example.com");
        
        if(curl_easy_perform(curl) == CURLE_OK) 
        {
            long response_code;
            curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &response_code);
            return response_code;
        }
    }
    
    curl_easy_cleanup(curl);
}
