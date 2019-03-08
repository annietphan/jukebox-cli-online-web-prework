songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "
  I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  songs.each_with_index do |song, i|
    if song_choice.to_i == i
      puts "Playing #{songs[i-1]}"
    elsif songs.include?(song_choice)
      puts "Playing #{song_choice}"
    else puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
    when "help"
      help
      puts "Please enter a command:"
      user_response = gets.chomp
    when "list"
      list(songs)
      puts "Please enter a command:"
      user_response = gets.chomp
  if user_response == "list"
    list
  elsif user_response == "play"
    play
  elsif user_response == "help"
    help
  elsif user_response == "exit"
    exit_jukebox
    break
  end
end
