Image search engine via the Bing API.  

Example found at: http://tomhosford.com/image_search.html

Instructions
-------------
(1) Clone or fork me<br />
(2) Set ENV['ACCOUNT_ID'] to your Azure Marketplace account key.<br />
(3) `foreman start` to run the server<br />
(4) Pop open public/index.html to check out an example frontend locally<br />


Why?
-------------

Google surprisingly only offers this kind of thing for very small websites with their Custom Search API, which won't scale to a large number of users.  So alas we need to use Bing.

It seems like Bing no longer supports being hit from the front-end directly, so a proxy server is needed.

I made this for a side project so feel free to do whatever you please with it.

How?
-------------
 
The user hits the Golaith server with a search query param which then relays the request to Bing.  Goliath sends back a JSONP request or just straight JSON is no callback param is provided.

