require 'zip'
puts "directory of the files"
dir = gets.chomp
puts "directory where you want the zip"
zipdir = gets.chomp
puts "Zip name"
Zip_name = gets.chomp
puts "creating a .zip"
 zipfile_name = zipdir + Zip_name + ".zip"
Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
    Dir[File.join(dir, '**', '**')].each do |file|
      zipfile.add(file.sub(dir, ''), file)
    end
end
