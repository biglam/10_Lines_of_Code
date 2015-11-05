['rubygems', 'bing_translator', 'pry-byebug'].each(&method(:require))
translator = BingTranslator.new('lam', 'h3qVrrWvkPM6j+mVutfDZ83ain8l622/b5VK4gkEUQ4=', false, 'WWrzxWTyx8EnGKfpESOjJddhxfyepTF6ohnSe4mbwO')
puts File.open('translationlist.txt', 'r').read
puts "\n\nEnter a sentance in any language. It will be translated and saved to the list and mp3 saved"
sentance = gets.chomp.to_s
language = translator.detect(sentance)
puts "#{(translator.translate"#{sentance}",  :from => language, :to => 'en')} \n translated from #{language}"
open('translationlist.txt', 'a') { |f| f.puts "#{(translator.translate"#{sentance}",  :from => language, :to => 'en')} \n translated from #{language}\n"}
audio = translator.speak(sentance, :language => language, :format => 'audio/mp3', :options => 'MaxQuality')
open('file.mp3', 'wb') { |f| f.write audio }