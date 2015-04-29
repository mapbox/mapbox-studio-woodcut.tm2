@land2: #7e5f41;

// States 
#state_label[zoom>=4][zoom<=10] {
  text-name: @name;
  text-transform: uppercase;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @text-level3;
  text-halo-fill: @land-halo;
  text-halo-radius: 2;
  text-min-distance: 1;
  text-character-spacing: 1;
  text-size: 10;
  [zoom=4]{ text-size:11; text-halo-fill: @land-halo2;}
  [zoom>=5][zoom<=6] {
    [area>10000] { text-size: 12; }
    [area>50000] { text-size: 14; }
    text-wrap-width: 40;
    text-face-name:@country;
    [zoom=6] {text-face-name:@country;
    text-fill:@text-level4;}
  }
  [zoom>=7][zoom<=8] {
    text-size: 15;
    text-face-name:@country;
    text-fill:@text-level3;
    [area>50000] { text-size: 16; }
    [area>100000] { text-size: 18; }
    text-wrap-width: 60;
  }
  [zoom>=9][zoom<=10] {
    text-fill:@text-level1;
    text-size: 18;
    text-face-name:@country;
    [area>50000] { text-character-spacing: 2; }
    text-wrap-width: 100;
  }
}

// Cities 

// City labels with dots for low zoom levels.
// The separate attachment keeps the size of the XML down.
#place_label::citydots[type='city'][zoom>=4][zoom<=7] {
  // explicitly defining all the `ldir` values wer'e going
  // to use shaves a bit off the final project.xml size
  [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
  [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
    text-transform: uppercase;
    text-name: @name;
    text-size: 10;
    [scalerank>=0][scalerank<=1] {
      [zoom<=5] { text-min-distance:20;}
      [zoom=5]  {text-size: 13; marker-width: 5; }
      [zoom>=6] { text-size: 14; marker-width: 6; marker-fill:@text-level3;
        		text-fill:@text-level3; }
      [zoom=7] {text-fill:@text-level2; marker-fill:@text-level2;}
    }
    [scalerank>=2][scalerank<=3] {
      [zoom=5] { text-size: 11; text-min-distance:20;}
      [zoom=6] { text-size: 12; marker-width: 5; }
      [zoom=7] { text-size: 13; 
        		text-fill:@text-level3; marker-fill:@text-level3; 
        		marker-width: 6; }
    }
    [scalerank>=4][scalerank<=5] {
      [zoom=6] { text-size: 11; }
      [zoom=7] { text-size: 12; marker-width: 5; }
    }
    text-face-name: @sans;
    text-placement: point;
    text-fill: @text-level5;
    text-halo-fill: @land-halo2;
    text-halo-radius: 2;
    text-min-distance: 2;
    [ldir='E'] { text-dx: 4; }
    [ldir='W'] { text-dx: -4; }
    [ldir='N'] { text-dy: -4; }
    [ldir='S'] { text-dy: 4; }
    [ldir='NE'] { text-dx: 3; text-dy: -3; }
    [ldir='SE'] { text-dx: 3; text-dy: 3; }
    [ldir='SW'] { text-dx: -3; text-dy: 3; }
    [ldir='NW'] { text-dx: -3; text-dy: -3; }
    marker-width: 5;
    marker-fill: @text-level4;
    marker-line-width: 2;
    marker-line-color: @land-halo;
  }
}

// For medium to high zoom levels we do away with the dot
// and center place labels on their point location.
#place_label[type='city'][zoom>=8][zoom<=15] {
  text-name: @name;
  text-face-name: @sans;
  text-transform: uppercase;
  text-placement: point;
  text-fill: @text-level6;
  text-halo-fill: @land-halo2;
  text-halo-radius: 2;
  text-wrap-width: 40;
  text-min-distance: 5;
  text-line-spacing: -4;
  // We keep the scalerank filters the same for each zoom level.
  // This is slightly inefficient-looking CartoCSS, but it saves
  // some space in the project.xml
  [zoom=8] {
    text-fill: @text-level3;
    text-size: 13;
    text-wrap-width: 60;
    [scalerank>=0][scalerank<=1] { text-size: 18; }
    [scalerank>=2][scalerank<=3] { text-size: 16; }
    [scalerank>=4][scalerank<=5] { text-size: 15; }
    [scalerank>=6] { text-size: 13; }
  }
  [zoom=9] {
    text-size: 14;
    text-wrap-width: 60;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    [scalerank>=0][scalerank<=1] { text-size: 19; }
    [scalerank>=2][scalerank<=3] { text-size: 17; }
    [scalerank>=4][scalerank<=5] { text-size: 16; }
    [scalerank>=6] { text-size: 14; }
  }
  [zoom=10] {
    text-size: 15;
    text-wrap-width: 70;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    [scalerank>=0][scalerank<=1] { text-size: 20; 
    		text-fill:@text-level5; marker-fill:@text-level5;}
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 17; }
    [scalerank>=6] { text-size: 15; }
  }
  [zoom=11] {
    text-size: 16;
    text-wrap-width: 80;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    [scalerank>=0][scalerank<=1] { text-size: 20; 
    		text-fill:@text-level4; marker-fill:@text-level4;}
    [scalerank>=2][scalerank<=3] { text-size: 19; 
    		text-fill:@text-level5; marker-fill:@text-level5;}
    [scalerank>=4][scalerank<=5] { text-size: 17; }
    [scalerank>=6] { text-size: 16; }
  }
  [zoom=12] {
    text-size: 17;
    text-wrap-width: 100;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    text-fill:@text-level3; marker-fill:@text-level3;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; 
    	text-fill:@text-level4; marker-fill:@text-level4;}
    [scalerank>=4][scalerank<=5] { text-size: 18; 
    	text-fill:@text-level5; marker-fill:@text-level5;}
    [scalerank>=6] { text-size: 17; }
  }
  [zoom=13] {
    text-size: 18;
    text-wrap-width: 200;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    text-fill:@text-level3; marker-fill:@text-level3;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 19; }
    [scalerank>=4][scalerank<=5] { text-size: 19; 
    	text-fill:@text-level4; marker-fill:@text-level4;}
    [scalerank>=6] { text-size: 17; 
    	text-fill:@text-level5; marker-fill:@text-level5;}
  }
  [zoom=14] {
    text-size: 19;
    text-wrap-width: 300;
    text-halo-fill: @land-halo;
    text-fill:@text-level3; marker-fill:@text-level3;
    text-face-name:@country;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 20; }
    [scalerank>=4][scalerank<=5] { text-size: 19; }
    [scalerank>=6] { text-size: 18; 
    	text-fill:@text-level4; marker-fill:@text-level4;}
  }
  [zoom=15] {
    text-size: 20;
    text-wrap-width: 400;
    text-face-name:@country;
    text-halo-fill: @land-halo;
    text-fill:@text-level3; marker-fill:@text-level3;
    [scalerank>=0][scalerank<=1] { text-size: 20; }
    [scalerank>=2][scalerank<=3] { text-size: 20; }
    [scalerank>=4][scalerank<=5] { text-size: 20; }
    [scalerank>=6] { text-size: 19; }
  }
}


// Towns 
#place_label[type='town'][zoom>=8][zoom<=17] {
  text-transform: uppercase;
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill: @text-level4;
  text-halo-fill: @land-halo2;
  text-halo-radius: 2;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-line-spacing: -4;
  text-min-distance: 15;
  [zoom>=10] { text-size: 13; }
  [zoom>=11] { text-size: 14; text-min-distance: 18; 
  		text-fill:@text-level3;}
  [zoom>=12] { text-size: 15; text-wrap-width: 80; text-halo-fill: @land-halo; text-face-name:@country;}
  [zoom>=13] { text-size: 16; text-wrap-width: 120; }
  [zoom>=14] { text-size: 18; text-wrap-width: 160; text-fill: @text-level3;}
  [zoom>=15] { text-size: 20; text-wrap-width: 200; }
  [zoom>=16] { text-size: 22; text-wrap-width: 240; }
}

// Villages 
#place_label[type='village'][zoom>=10][zoom<=17] {
  text-transform: uppercase;
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill:  @text-level4;
  text-size: 11;
  text-halo-fill: @land-halo2;
  text-halo-radius: 2;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-min-distance: 40;
  text-line-spacing: -4;
  [zoom>=12] { text-size: 12; }
  [zoom>=13] { text-wrap-width: 80; }
  [zoom>=14] { text-size: 14; text-wrap-width: 100; 
    	text-fill: @text-level3;}
  [zoom>=15] { text-size: 16; text-wrap-width: 120; 
    	text-fill: @text-level3; text-face-name:@country; text-halo-fill: @land-halo;}
  [zoom>=16] { text-size: 18; text-wrap-width: 160; 
  		text-fill:@text-level3;}
  [zoom=17] { text-size: 20; text-wrap-width: 200; }
}

// Suburbs
#place_label[type='suburb'][zoom>=12][zoom<=17] {
  text-transform: uppercase;
  text-name: @name;
  text-face-name: @sans;
  text-placement: point;
  text-fill:  @text-level3;
  text-size: 11;
  text-halo-fill: @land-halo2;
  text-halo-radius: 2;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-min-distance: 4;
  text-line-spacing: -2;
  [zoom=12] { text-min-distance: 30; }
  [zoom>=13] { text-size: 12; text-min-distance: 20;
    	text-fill: @text-level3;}
  [zoom>=14] { text-size: 13; text-wrap-width: 80; }
  [zoom>=15] { text-size: 14; text-wrap-width: 120; 
    	text-face-name:@country; text-halo-fill: @land-halo;}
  [zoom>=16] { text-size: 16; text-wrap-width: 160; 
  		text-fill:@text-level3;}
  [zoom>=17] { text-size: 20; text-wrap-width: 200; }
}

// Neighbourhoods & Hamlets 
#place_label[zoom>=13][zoom<=18] {
  [type='hamlet'],
  [type='neighbourhood'] {
    text-transform: uppercase;
    text-name: @name;
    text-face-name: @sans;
    text-placement: point;
    text-fill:  @text-level5;
    text-size: 11;
    text-halo-fill: @land-halo2;
    text-halo-radius: 2;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-min-distance: 4;
    text-line-spacing: -2;
    [zoom>=14] { text-size: 13; text-wrap-width: 80;  
      		text-face-name:@country; text-halo-fill: @land-halo;}
    [zoom>=15]  { text-size: 14; 
      		text-fill:@text-level4;}    
    [zoom>=16] { text-size: 16; text-wrap-width: 100; 
    		text-fill:@text-level3;}
    [zoom>=17] { text-size: 18; text-wrap-width: 130; 
    		text-fill:@text-level3;}
    [zoom>=18] { text-size: 20; text-wrap-width: 160; }
  }
}

// Water labels
#water_label {
  [zoom<=15][area>200000],
  [zoom=16][area>50000],
  [zoom=17][area>10000],
  [zoom>=18][area>0]{
    text-name: @name;
    text-halo-radius: 2;
    text-size: 11;
    text-wrap-width: 50;
    text-wrap-before: true;
    text-halo-fill: @water-halo;
    text-line-spacing: -2;
    text-face-name: @sans;
    text-fill: @land-halo;
  }
  [zoom>=14][area>3200000],
  [zoom>=15][area>800000],
  [zoom>=16][area>200000],
  [zoom>=17][area>50000],
  [zoom>=18][area>10000] {
    text-size: 13;
    text-wrap-width: 75;
    text-face-name:@country;
  }
  [zoom>=15][area>3200000],
  [zoom>=16][area>800000],
  [zoom>=17][area>200000],
  [zoom>=18][area>50000] {
    text-size: 14;
    text-wrap-width: 100;
  }
  [zoom>=16][area>3200000],
  [zoom>=17][area>800000],
  [zoom>=18][area>200000] {
    text-size: 16;
    text-wrap-width: 125;
  }
  [zoom>=17][area>3200000],
  [zoom>=18][area>800000] {
    text-size: 18;
    text-wrap-width: 150;
  }
}