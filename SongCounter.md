# A Song Counter for the TigerTango Skin

## Introduction

This modification of the 
[TigerTango skin](https://github.sericson0/TigerTango) has a song 
counter which allows video skins to display the position of the 
currently playing song in  the tanda.

Three buttons have been added below the Master VU and CPU usage meters.  
The first one allows the user to toggle between 4 and 3 song Tango 
tandas with a left click. Right clicking the button opens a Song 
Counter Configuration dialog which will be explained below.

The second button is for starting and stopping the counter. Single 
Clicking it starts the counter while double clicking it stops the 
counter.

The third button displays the state of the counter: "Counter stopped" 
when the counter is turned off and "Song x/y" when the counter is 
on, where x is the position in the tanda of the currently playing 
song and y is the number of songs in the current tanda. If for any 
reason the counter gets out of sync or loses track of where the song
 is in the tanda, double clicking this button resets the counter to 0
 while subsequent single clicks can be used to increment the counter
 until it shows the correct position in the tanda.

## The Song Counter Configuration Dialog

Right clicking on the "3/4 Song Tandas" button opens the configuration  
dialog for the song counter. There are three settings and they are 
saved and remembered so it isn't necessary to set them each time 
VirtualDJ is launched.

* *Cortina detection tag:* This setting selects the tag that is used for 
  detecting that a cortina is loaded on the active deck. The criteria 
  for determining that a cortina is loaded  is whenever this tag 
  contains the word "Cortina". The check for "Cortina" is case insensitive,
  so it does not matter if it is written in lowercase, uppercase or a 
  mixture of the two. The default setting is "grouping".

* *Length of Tango tandas:* this sets the number of songs that make up   
  tandas of songs with genre "Tango". The available options are 3 and 4 
  with 4 being the default value.
  
* *Length of Vals tandas:* this sets the length of tandas consisting of
  songs with genre "Vals". The available options are 3 and 4 with 3 
  being the default value.

## Information for Video Skins

The song counter creates a number of global variables which contain 
information that video skins can either use or display. These are:

* *tandaCounter:* A number indicating the position of the playing song 
  in the current tanda.

* *Tanda length:* A number indicating the number of songs (3 or 4) in 
  the current tanda.

* *isCortinaLoaded:* A 0/1 variable that indicates if a cortina is 
  loaded on the active deck. It is 1 (or true or on) when a cortina is 
  loaded and 0 (or false or off) when anything other than a cortina is 
  loaded.

* *songCounterRunning:* A 0/1 variable that indicates if the song 
  counter is operating. It is 1 (or true or on) when the song counter 
  is running and 0 (or false or off) when the counter is stopped.

The TigerTangoVideo folder contains an example skin 
"TigerTangoVideoWithSongCounter". This is a modification of the 
TigerTangoVideo skin which   demonstrates how the song counter 
variables can be used in a video skin.
