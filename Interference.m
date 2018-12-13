function [Nilai1,Nilai2,Nilai3,Nilai4]=Interference(NP1,NP2,NU1,NU2)
    if NP1<=NU1
        Nilai1=NP1;
    elseif NU1<=NP1
        Nilai1=NU1;
    end
    if NP1<=NU2
        Nilai2=NP1;
    elseif NU2<=NP1
        Nilai2=NU2;
    end
    if NP2<=NU1
        Nilai3=NP2;
    elseif NU1<=NP2
        Nilai3=NU1;
    end
    if NP2<=NU2
        Nilai4=NP2;
    elseif NU2<=NP2
        Nilai4=NU2;
    end
end