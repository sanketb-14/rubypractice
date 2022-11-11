require 'rss'
rss =RSS::Parser.parse('https://timesofindia.indiatimes.com/rssfeedstopstories.cms?x=1')
rss.items.each do |item|
  puts item
end