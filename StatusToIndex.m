function index=StatusToIndex(Status)
    if strcmp(Status,'Tidak Layak')
        index=1;
    elseif strcmp(Status,'Layak')
        index=2;
    end
end