clc
clear
close all
FlakeType = 'ChannelModels';
Title = 'Channel Model';
TEXT1 = 'AWGN';
TEXT2 = 'Rayleigh';
TEXT3 = 'Nakagami-$m$';
TEXT4 = 'Non-fading';
TEXT5 = 'Others';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4,TEXT5};
Intensity = [31 110 25 18 7+9+11]; 
snowFlake_Log(FlakeType,Title,Categories,Intensity)
%%
clc
clear
close all
FlakeType = 'ErrorMetrics';
Title = 'Error Rate Metric';
TEXT1 = 'BER';
TEXT2 = 'SER';
TEXT3 = 'PEP';
TEXT4 = 'BLER';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4};
Intensity = [106 37 40 30]; 
snowFlake2_Log(FlakeType,Title,Categories,Intensity)
%%
clc
clear
close all
FlakeType = 'Antennas';
Title = 'Antennas Setup';
TEXT1 = 'SISO';
TEXT2 = 'SIMO';
TEXT3 = 'MISO';
TEXT4 = 'MIMO';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4};
Intensity = [175 11 4 15]; 
snowFlake2_Log(FlakeType,Title,Categories,Intensity)
%%
clc
clear
close all
FlakeType = 'NoUsers';
Title = 'Number of Users';
TEXT1 = '$1$';
TEXT2 = '$2$';
TEXT3 = '$2$ or $3$';
TEXT4 = '$3$';
TEXT5 = 'Arbitrary';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4,TEXT5};
Intensity = [4 138 11 7 42]; 
snowFlake_Log(FlakeType,Title,Categories,Intensity)

%%
clc
clear
close all
FlakeType = 'Rx';
Title = 'Receiver';
TEXT1 = 'Imperfect SIC';
TEXT2 = 'Perfect SIC';
TEXT3 = 'JMLD';
TEXT4 = 'MRC';
TEXT5 = 'Others';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4,TEXT5};
Intensity = [120 11 31 17 32]; 
snowFlake_Log(FlakeType,Title,Categories,Intensity)

%%
clc
clear
close all
FlakeType = 'Mod';
Title = 'Modulation Scheme';
TEXT1 = 'QAM';
TEXT2 = 'PSK';
TEXT3 = 'PAM';
TEXT4 = 'PPM';
TEXT5 = 'OOK';
Categories = {TEXT1,TEXT2,TEXT3,TEXT4,TEXT5};
Intensity = [48 118 12 2 10]; 
snowFlake_Log(FlakeType,Title,Categories,Intensity)
