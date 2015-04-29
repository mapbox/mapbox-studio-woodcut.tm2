// Custom shields for each country by name length.

#country_label[name_en='Guinea-Bissau'], 
#country_label[name_en='Liechtenstein'], 
#country_label[name_en='United States'],
#country_label[name_en='Czech Republic'], 
#country_label[name_en='United Kingdom'],
#country_label[name_en='The Netherlands'],
#country_label[name_en='Western Sahara'],
#country_label[name_en='Turkmenistan'],
#country_label[name_en='Channel Islands'],
#country_label[name_en='Marshall Islands'],
#country_label[name_en='French Guiana']
{ [scalerank>=0][scalerank<=3][zoom>=3],
  [scalerank>=3][zoom>=5][zoom<=9] {
  shield-file:url('img/shield/1-1.png');
  shield-size: 14;
  shield-text-transform: uppercase;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;}
    
  [zoom=3][scalerank>=0][scalerank<=3] { //smaller shields to look better at zoom=2
  shield-file:url('img/shield/1-2.png');
  shield-size: 12;
  shield-text-transform: uppercase;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;}

}

#country_label[name_en='Chad'], #country_label[name_en='Cuba'], 
#country_label[name_en='Fiji'], #country_label[name_en='Iran'], 
#country_label[name_en='Iraq'], #country_label[name_en='Laos'], 
#country_label[name_en='Mali'], #country_label[name_en='Oman'], 
#country_label[name_en='Peru'], #country_label[name_en='Togo'],
#country_label[name_en='Benin'], #country_label[name_en='Chile'],
#country_label[name_en='China'], #country_label[name_en='Congo'], 
#country_label[name_en='Egypt'], #country_label[name_en='Gabon'], 
#country_label[name_en='Ghana'], #country_label[name_en='Haiti'], 
#country_label[name_en='India'], #country_label[name_en='Italy'], 
#country_label[name_en='Japan'], #country_label[name_en='Kenya'], 
#country_label[name_en='Libya'], #country_label[name_en='Malta'], 
#country_label[name_en='Nauru'], #country_label[name_en='Nepal'], 
#country_label[name_en='Niger'], #country_label[name_en='Palau'], 
#country_label[name_en='Qatar'], #country_label[name_en='Samoa'], 
#country_label[name_en='Spain'], #country_label[name_en='Sudan'], 
#country_label[name_en='Syria'], #country_label[name_en='Tonga'], 
#country_label[name_en='Yemen'], 
//Everything below this line is 6 characters instead of 5
#country_label[name_en='Angola'], #country_label[name_en='Belize'], 
#country_label[name_en='Bhutan'], #country_label[name_en='Brazil'], 
#country_label[name_en='Brunei'], #country_label[name_en='Canada'], 
#country_label[name_en='Cyprus'], #country_label[name_en='France'], 
#country_label[name_en='Gambia'], #country_label[name_en='Greece'], 
#country_label[name_en='Guinea'], #country_label[name_en='Guyana'], 
#country_label[name_en='Israel'], #country_label[name_en='Jordan'], 
#country_label[name_en='Kosovo'], #country_label[name_en='Kuwait'], 
#country_label[name_en='Latvia'], #country_label[name_en='Malawi'], 
#country_label[name_en='Mexico'], #country_label[name_en='Monaco'], 
#country_label[name_en='Norway'], #country_label[name_en='Panama'], 
#country_label[name_en='Poland'], #country_label[name_en='Russia'], 
#country_label[name_en='Rwanda'], #country_label[name_en='Serbia'], 
#country_label[name_en='Sweden'], #country_label[name_en='Taiwan'], 
#country_label[name_en='Turkey'], #country_label[name_en='Tuvalu'], 
#country_label[name_en='Uganda'], #country_label[name_en='Zambia']
{ [scalerank>=0][scalerank<=3][zoom>=3],
  [scalerank>=3][zoom>=5][zoom<=9] {
  shield-file:url('img/shield/2-1.png');
  shield-size: 14;
  shield-min-distance: 2;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-text-transform: uppercase;
  shield-name: @name;
  shield-face-name: @country;
  #country_label[name_en='Fiji'][zoom=5]{
  		shield-file:url('img/shield/sample.png');
      	shield-size:0;
  }
  }
  
  [zoom=3][scalerank>=0][scalerank<=3] { //smaller shields to look better at zoom=2
  shield-file:url('img/shield/2-2.png');
  shield-size: 12;
  shield-text-transform: uppercase;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;}
  
} 
// Everything below this is 7 characters instead of 6
#country_label[name_en='Albania'], #country_label[name_en='Algeria'], 
#country_label[name_en='Andorra'], #country_label[name_en='Armenia'], 
#country_label[name_en='Austria'], #country_label[name_en='Bahamas'], 
#country_label[name_en='Bahrain'], #country_label[name_en='Belarus'], 
#country_label[name_en='Belgium'], #country_label[name_en='Bolivia'], 
#country_label[name_en='Burkina'], #country_label[name_en='Burundi'], 
#country_label[name_en='Comoros'], #country_label[name_en='Croatia'], 
#country_label[name_en='Denmark'], #country_label[name_en='Ecuador'], 
#country_label[name_en='Eritrea'], #country_label[name_en='Estonia'], 
#country_label[name_en='Finland'], #country_label[name_en='Georgia'], 
#country_label[name_en='Germany'], #country_label[name_en='Grenada'], 
#country_label[name_en='Hungary'], #country_label[name_en='Iceland'], 
#country_label[name_en='Ireland'], #country_label[name_en='Jamaica'], 
#country_label[name_en='Lebanon'], #country_label[name_en='Lesotho'], 
#country_label[name_en='Liberia'], #country_label[name_en='Moldova'], 
#country_label[name_en='Morocco'], #country_label[name_en='Myanmar'], 
#country_label[name_en='Namibia'], #country_label[name_en='Nigeria'], 
#country_label[name_en='Romania'], #country_label[name_en='Senegal'], 
#country_label[name_en='Somalia'], #country_label[name_en='Tunisia'], 
#country_label[name_en='Ukraine'], #country_label[name_en='Uruguay'], 
#country_label[name_en='Vanuatu'], #country_label[name_en='Vietnam'], 
#country_label[name_en='Barbados'], #country_label[name_en='Botswana'], 
#country_label[name_en='Bulgaria'], #country_label[name_en='Cambodia'], 
#country_label[name_en='Cameroon'], #country_label[name_en='Colombia'], 
#country_label[name_en='Djibouti'], #country_label[name_en='Dominica'], 
#country_label[name_en='Ethiopia'], #country_label[name_en='Honduras'], 
#country_label[name_en='Kiribati'], #country_label[name_en='Malaysia'], 
#country_label[name_en='Maldives'], #country_label[name_en='Mongolia'], 
#country_label[name_en='Pakistan'], #country_label[name_en='Paraguay'], 
#country_label[name_en='Portugal'], #country_label[name_en='St Lucia'], 
#country_label[name_en='Slovakia'], #country_label[name_en='Slovenia'], 
#country_label[name_en='Suriname'], #country_label[name_en='Tanzania'], 
#country_label[name_en='Thailand'], #country_label[name_en='Zimbabwe'],
// names longer than 7 letters
#country_label[name_en='Argentina'], 
#country_label[name_en='Australia'],#country_label[name_en='Greenland'], 
#country_label[name_en='Guatemala'],#country_label[name_en='Indonesia'], 
#country_label[name_en='Lithuania'],#country_label[name_en='Macedonia'], 
#country_label[name_en='Mauritius'], #country_label[name_en='Nicaragua'], 
#country_label[name_en='Singapore'], #country_label[name_en='Sri Lanka'], 
#country_label[name_en='Swaziland'], #country_label[name_en='Venezuela'],
#country_label[name_en='Azerbaijan'],#country_label[name_en='Bangladesh'], 
#country_label[name_en='Cape Verde'],#country_label[name_en='Costa Rica'], 
#country_label[name_en='East Timor'], #country_label[name_en='Kazakhstan'], 
#country_label[name_en='Kyrgyzstan'], #country_label[name_en='Luxembourg'], 
#country_label[name_en='Madagascar'], #country_label[name_en='Mauritania'], 
#country_label[name_en='Micronesia'], #country_label[name_en='Montenegro'], 
#country_label[name_en='Mozambique'], #country_label[name_en='San Marino'], 
#country_label[name_en='Seychelles'], #country_label[name_en='Tajikistan'], 
#country_label[name_en='Uzbekistan'],#country_label[name_en='Afghanistan'], 
#country_label[name_en='El Salvador'], #country_label[name_en='Ivory Coast'], 
#country_label[name_en='Burkina Faso'], #country_label[name_en='North Korea'], 
#country_label[name_en='South Korea'], #country_label[name_en='New Zealand'], 
#country_label[name_en='Philippines'], #country_label[name_en='South Sudan'], 
#country_label[name_en='Switzerland'],#country_label[name_en='Saudi Arabia'], 
#country_label[name_en='Sierra Leone'], #country_label[name_en='South Africa'], 
#country_label[name_en='Vatican City']
{ [scalerank>=0][scalerank<=3][zoom>=3],
  [scalerank>=3][zoom>=5][zoom<=9] {
  shield-text-transform: uppercase;
  shield-file:url('img/shield/3-1.png');
  shield-size: 14;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;}
 
  [zoom=3][scalerank>=0][scalerank<=3] { //smaller shields to look better at zoom=2
  shield-file:url('img/shield/3-2.png');
  shield-size: 12;
  shield-text-transform: uppercase;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;}
 
}

#country_label[name_en='Democratic Republic of the Congo'],
#country_label[name_en='Central African Republic'], #country_label[name_en='Trinidad and Tobago'], 
#country_label[name_en='Republic of the Congo'], #country_label[name_en='Papua New Guinea'],
#country_label[name_en='São Tomé and Príncipe'],  #country_label[name_en='Bosnia and Herzegovina'],
#country_label[name_en='Dominican Republic'], 
#country_label[name_en='Equatorial Guinea'], #country_label[name_en='Republic of Macedonia']
{ [scalerank>=3][zoom>=5][zoom<=9] {
  shield-file:url('img/shield/4.png');
  shield-wrap-width: 70;
  shield-text-transform: uppercase;
  shield-size: 14;
  shield-fill: @text-level1;
  shield-opacity: 1;
  shield-name: @name;
  shield-face-name: @country;  
}}