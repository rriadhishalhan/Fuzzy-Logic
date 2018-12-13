function [StatusP1,StatusP2,NilaiP1,NilaiP2,StatusU1,StatusU2,NilaiU1,NilaiU2]=Fuzzy(Pendapatan,Utang)
    if Pendapatan<=0.3
        StatusP1='Rendah';
        NilaiP1=1;
        StatusP2='Rendah';
        NilaiP2=1;
    elseif Pendapatan>0.3 && Pendapatan<=0.5
        StatusP1='Rendah';
        NilaiP1=(0.5 -Pendapatan)/(0.5-0.3);
        StatusP2='Menengah';
        NilaiP2=(Pendapatan- 0.3)/(0.5-0.3);
    elseif Pendapatan>0.5 && Pendapatan<=1
        StatusP1='Menengah';
        NilaiP1=1;
        StatusP2='Menengah';
        NilaiP2=1;
    elseif Pendapatan>1 && Pendapatan<=1.2
        StatusP1='Menengah';
        NilaiP1=(1.2-Pendapatan)/(1.2-1);
        StatusP2='Tinggi';
        NilaiP2=(Pendapatan-1)/(1.2-1);
    elseif Pendapatan>1.2
        StatusP1='Tinggi';
        NilaiP1=1;
        StatusP2='Tinggi';
        NilaiP2=1;
    end
    if Utang<=20
        StatusU1='Ringan';
        NilaiU1=1;
        StatusU2='Ringan';
        NilaiU2=1;
    elseif Utang>20 && Utang<=35
        StatusU1='Ringan';
        NilaiU1=(35-Utang)/(35-20);
        StatusU2='Lumayan';
        NilaiU2=(Utang-20)/(35-20);
    elseif Utang>35 && Utang<=55
        StatusU1='Lumayan';
        NilaiU1=1;
        StatusU2='Lumayan';
        NilaiU2=1;
    elseif Utang>55 && Utang<70
        StatusU1='Lumayan';
        NilaiU1=(70-Utang)/(70-55);
        StatusU2='Tinggi';
        NilaiU2=(Utang-55)/(70-55);
    elseif Utang>=70
        StatusU1='Tinggi';
        NilaiU1=1;
        StatusU2='Tinggi';
        NilaiU2=1;
    end
end
