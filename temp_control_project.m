% Simülasyon için rastgele sıcaklık verisi üretmek icin
tempData = 20 + (40-20) * rand(); % 20-40°C aralığında rastgele sıcaklık

disp(['Simüle Edilen Sıcaklık: ', num2str(tempData), ' °C']);

setPoint = 30; % Hedef sıcaklık

% Eğer sıcaklık eşik değerden düşükse ısıtıcıyı aç, yüksekse kapat
if tempData < setPoint
    heaterState = "Açık"; % Isıtıcı çalışıyor
else
    heaterState = "Kapalı"; % Isıtıcı kapalı
end

hysteresis = 2; 

% Eğer sıcaklık eşik değerden düşükse ısıtıcıyı aç
if tempData < (setPoint - hysteresis)
    heaterState = "Açık";
% Eğer sıcaklık eşik değerden yeterince yüksekse ısıtıcıyı kapat
elseif tempData > (setPoint + hysteresis)
    heaterState = "Kapalı";
end

disp(['Isıtıcı Durumu: ', heaterState]);
