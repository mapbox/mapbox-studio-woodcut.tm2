//Parks
#poi_label[maki=''] { opacity:1; } // hack for mapnik#1952

#poi_label [maki='park'][scalerank<4] {
  [zoom<14],
  [zoom>=14][scalerank=1][localrank<=1],
  [zoom>=15][scalerank<=2][localrank<=1],
  [zoom>=16][scalerank<=3][localrank<=1],
  [zoom>=17][localrank<=4],
  [zoom>=18][localrank<=16],
  [zoom>=19] {
    text-name: @name;
    text-face-name: @sans;
    text-halo-fill: @land-halo;
    text-fill: @text-level4;
    text-halo-radius: 2;
    text-line-spacing: -3;
    text-wrap-width: 80;
    text-wrap-before: true;
    [scalerank=1] {
      [zoom>=15] { text-size: 11; text-wrap-width: 100; }
      [zoom>=16] { text-size: 12; text-wrap-width: 120; }
      [zoom>=17] { text-size: 14; text-wrap-width: 130; 
      	text-fill: @text-level3;}
      [zoom>=18] { text-size: 13; text-wrap-width: 130; 
      	text-fill: @text-level4; text-face-name:@country;}
    }
    [scalerank=2] {
      [zoom>=16] { text-size: 11; text-wrap-width: 100; }
      [zoom>=17] { text-size: 12; text-wrap-width: 120; 
      	text-fill: @text-level3;}
      [zoom>=18] { text-size: 13; text-wrap-width: 130; 
      	text-fill: @text-level5; text-face-name:@country;}
    }
    [scalerank>=3] {
      [zoom>=17] { text-size: 11; text-wrap-width: 100; }
      [zoom>=18] { text-size: 13; text-wrap-width: 120; 
      	text-fill: @text-level5; text-face-name:@country;}
    }
  }
}