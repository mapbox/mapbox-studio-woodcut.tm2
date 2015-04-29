// Road colors and patterns
@road-darkest:#4F301D;
@road-1: lighten(#683f26,10);
@road-2: lighten(#683f26,20);

#road 	  [class='major_rail'],
#road 	  [class='minor_rail'],
#tunnel   [class='major_rail'],
#tunnel   [class='minor_rail'],
#bridge   [class='major_rail'],
#bridge   [class='minor_rail']{
  [zoom=12] {  line-color:@road-2; line-width:0.4;}
  [zoom=13] {  line-color:@road-1;  line-width:0.7;  }
  [zoom=14] {  line-color:@road-1;  line-width:0.5;} 
  [zoom=15] {  line-color:@road-1;  line-width:0.75; }
  [zoom=16] {  line-pattern-file:url(img/lines/lineL2.jpg); }
  [zoom>=17] {  line-pattern-file:url(img/lines/lineL3.jpg); }
}

#road 	[class='main'], 
#tunnel [class='main'], 
#bridge [class='main'],
#bridge  [class='motorway'],
#bridge  [class='motorway_link'], 
#tunnel  [class='motorway'],
#tunnel  [class='motorway_link'] {  
  line-color:@road-2;  
  [zoom<=7] 	{line-width:0.2;}
  [zoom>=8] 	{line-width:0.3;}  
  [zoom=14] 	{line-width:0.5;}  
  [zoom=15] 	{line-pattern-file:url(img/lines/lineL2.jpg); }
  [zoom=16] 	{line-pattern-file:url(img/lines/lineL3.jpg); }
  [zoom=17] 	{line-pattern-file:url(img/lines/lineL4.jpg); }
  [zoom=18] 	{line-pattern-file:url(img/lines/lineL5.jpg); }
  [zoom>=19] 	{line-pattern-file:url(img/lines/lineL6.jpg); }
  		#bridge  [class='motorway'],
		#bridge  [class='motorway_link'], 
		#tunnel  [class='motorway'],
		#tunnel  [class='motorway_link'] { 
    		  	[zoom<=12]{  line-width:0.4;  }
  				[zoom=13] {  line-color:@road-darkest; line-width:0.7;}
  				[zoom=14] {  line-color:@road-darkest; line-width:1;}
    	}
}

#road 	[class='street'], 
#road 	[class='street_limited'], 
#road 	[class='driveway'], 
#road 	[class='path'],
#tunnel [class='street'], 
#tunnel [class='street_limited'], 
#tunnel [class='driveway'], 
#tunnel [class='path'],
#bridge [class='street'], 
#bridge [class='street_limited'], 
#bridge [class='driveway'] {
  line-color:@road-2;
  [zoom<=12] {line-width:0}
  [class='path'] {line-color:lighten(@road-1,5);}
  [zoom>=13] {  line-width:0.5;  }
  [zoom>=14] {   line-width:0.75;}  
  [zoom>=15] {  line-width:1;}
  [zoom>=16] {  line-width:1.25;}
  [zoom>=17] {  line-width:1.75;}  
  [zoom>=18] {  line-width:2;}
}

#road 	 [class='motorway'], 
#road 	 [class='motorway_link'] {
  line-color:@road-darkest;
  [zoom<=12]{  line-color:@road-2;  line-width:0.4;  }
  [zoom>=13] {  line-width:0.7;}
  [zoom>=14] {  line-width:1;}
  [zoom=15] {  line-pattern-file:url(img/lines/line2.jpg); }
  [zoom=16] {  line-pattern-file:url(img/lines/line3.jpg); }
  [zoom=17] {  line-pattern-file:url(img/lines/line4.jpg); }
  [zoom=18] {  line-pattern-file:url(img/lines/line5.jpg); }
  [zoom>=19]{  line-pattern-file:url(img/lines/line6.jpg); }
}