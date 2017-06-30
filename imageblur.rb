class Image

  def initialize(rows) #This is the structure of how the message is displayed
    # This is an irregular 2D array (a jagged array).
      @rows = rows 
  end
  def output_image
     @rows.each do |row| #This loops throught each row
       row.each do |pixel| #For every row it prints out a pixel
         print pixel
      end
      puts 
     end
  end
end

row1 = [0, 0, 0, 0] #These are the values of row 1 that will be displayed
row2 = [0, 1, 0, 0] #These are the values  of row 2 that will be displayed
row3 = [0, 0, 0, 1] #These are the values  of row 3 that will be displayed
row4 = [0, 0, 0, 0] #These are the values  of row 4 that will be displayed
      
rows = [row1, row2, row3, row4] #This combines all of the rows
image = Image.new(rows) #image is telling 'Image.new' to grab whatever (rows) is equal to.
image.output_image #This tells the image/image class to show the 'rows'

# Image = image.new
#Original code to get working
# image = Image.new([
#   [0, 0, 0, 0],
#   [0, 1, 0, 0],
#   [0, 0, 0, 1],
#   [0, 0, 0, 0]
# ])
# image.output_image
# a = 10
# b = 20
# c = a + b