function rules=CekStatus(StatusPendapatan,StatusUtang)
%     PENDAPATAN RENDAH
    if strcmp(StatusPendapatan,'Rendah') && strcmp(StatusUtang,'Ringan')
        rules='Tidak Layak';
    elseif strcmp(StatusPendapatan,'Rendah') && strcmp(StatusUtang,'Lumayan')
        rules='Layak';
    elseif strcmp(StatusPendapatan,'Rendah') && strcmp(StatusUtang,'Tinggi')
        rules='Layak';
    end
% Pendapatan Menengah
    if strcmp(StatusPendapatan,'Menengah') && strcmp(StatusUtang,'Ringan')
        rules='Tidak Layak';
    elseif strcmp(StatusPendapatan,'Menengah') && strcmp(StatusUtang,'Lumayan')
        rules='Layak';
    elseif strcmp(StatusPendapatan,'Menengah') && strcmp(StatusUtang,'Tinggi')
        rules='Layak';
    end
%     Pendapatan Tinggi
    if strcmp(StatusPendapatan,'Tinggi') && strcmp(StatusUtang,'Ringan')
        rules='Tidak Layak';
    elseif strcmp(StatusPendapatan,'Tinggi') && strcmp(StatusUtang,'Lumayan')
        rules='Tidak Layak';
    elseif strcmp(StatusPendapatan,'Tinggi') && strcmp(StatusUtang,'Tinggi')
        rules='Tidak Layak';
    end
end