% IMPORT CSV
keluarga = csvread('DataTugas2.csv',1,0);

%PECAH CSV KE MATRIKS
for i = 1:100
    pendapatan(i,1)=keluarga(i,2);
    utang(i,1)=keluarga(i,3);
end

% MASUK KE FUZZY
for i=1:100
%   Cek kategori pendapatan dan hutang
    [SP1,SP2,NP1,NP2,SU1,SU2,NU1,NU2] = Fuzzy(pendapatan(i,1),utang(i,1));
    
%   Cek Fuzzy Rules    
    status1 = CekStatus(SP1,SU1);
    status2 = CekStatus(SP1,SU2);
    status3 = CekStatus(SP2,SU1);
    status4 = CekStatus(SP2,SU2);
    
%     Ubah Rules Ke Index
    index1 = StatusToIndex(status1);
    index2 = StatusToIndex(status1);
    index3 = StatusToIndex(status3);
    index4 = StatusToIndex(status4);
 
%   Masuk proses inferensi dari index yang didapat  
    [Nilai1,Nilai2,Nilai3,Nilai4] = Interference(NP1,NP2,NU1,NU2);
    
% Mencari nilai ystar    
    ystar=defuzzy(index1,index2,index3,index4,Nilai1,Nilai2,Nilai3,Nilai4);
    
% Bikin kolom baru di matriks Keluarga dengan inputan nilai ystar didapat
    keluarga(i,4) = ystar;
    
% Mencari nilai kelayakan dari ystar    
    kelayakan=Layak(ystar);
    
% Bikin kolom baru di matriks Keluarga dengan inputan nilai kelayakan didapat    
    keluarga(i,5) = kelayakan;
end

% MEMILIH 20 KELUARGA YANG LAYAK
j=1;
for i=1:100
%   CEK JIKA LAYAK(1) DAN YSTAR SAMA DENGAN 2 DAN HANYA 20 BLT
    if keluarga(i,5)== 1 && keluarga(i,4)==2  && j<=20
        blt(j,1)=keluarga(i,1);
        j=j+1;
    end
end

% WRITE KE CSV TebakanTugas2.csv
csvwrite('TebakanTugas2.csv',blt);
type('TebakanTugas2.csv');