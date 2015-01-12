##Rock, Paper, Scissors
_____________________

This was my personal weekend challenge for Week 3 of Makers Academy. The task was to create a browser version of Rock, Paper, Scissors. A player would select from the options and this would be compared to a randomly generated option resulting in a win, loss or draw. My learning objectives were to consolidate my understanding of Sinatra, Cucumber, HTML and CSS.


## Domain Model / CRC

A player will enter their name on the site and will then be given a choice of rock, paper and scissors. Having chosen, the game will randomly select one and declare whether the player won, lost or drew.

___________________________

##How to play

To play the game in the browser:
```shell
http://localhost:9292/
```
To set up as a player:
```shell
Enter your name and click 'Submit'
```
To choose which option to play:
```shell
Check either Rock, Paper or Scossors and click 'Play!'
```
The result:
```shell
You will be informed whether you have won, lost or drawn with the computer
```

_______________________________

##Issues faced

I decided that there really wasn't much backend required, so the entire game is contained in the sinatra file 'rock_paper_scissors.rb'. This worked fine for basic game play, but now that I am thinking about things like multiplayer functionality and a scoresheet, it seems as though it would have been better to seperate frontend and backend.

I struggled to get the programme to recognise the stylesheet, eventually I managed to fix this with a combination of set methods. I still cannot, however, get any images (of any format) to display either through CSS or embedding them in the HTML. I am unclear whether this is a rackup issue because shotgun will not load the page at all. I ended up using embedded SVG code as a workaround.

I struggled to position things in the centre using CSS. I have done this by eye and am fairly certain that it will break on different screeensizes/browsers. I will therefore need to address this asap.


##Future intentions

I would like to create multiplayer functionality and a scoresheet.

I need to address the CSS positioning issues.

I would also like to animate the SVG images so that these are highlighted depending on the choice or perhaps the result. I am unclear how to do this, as I think it will require javascript and I do not yet know how to combine different paradigms. 


