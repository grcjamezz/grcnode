USE TeamGridcoin;
create table TeamOverview (
    name                    varchar(254),
    country                 varchar(254),
    Asteroids_Mag             double     DEFAULT 0,
    ATLAS_Mag             double     DEFAULT 0,
    BU_Mag             double     DEFAULT 0,
    BURP_Mag              double     DEFAULT 0,
    #CAS_Mag             double     DEFAULT 0,
    CSG_Mag             double     DEFAULT 0,
    Collatz_Mag             double     DEFAULT 0,
    Cosmology_Mag             double     DEFAULT 0,
    CPDN_Mag             double     DEFAULT 0,
    DDM_Mag             double     DEFAULT 0,
    Denis_Mag             double     DEFAULT 0,
    Einstein_Mag             double     DEFAULT 0,
    Enigma_Mag             double     DEFAULT 0,
    FIND_Mag             double     DEFAULT 0,
    GPUGrid_Mag             double     DEFAULT 0,
    GRCF_Mag             double     DEFAULT 0,
    LHCatHome_Mag             double     DEFAULT 0,
    LeidenClassic_Mag             double     DEFAULT 0,
    MalariaControl_Mag             double     DEFAULT 0,
    Milkyway_Mag             double     DEFAULT 0,
    MindModeling_Mag             double     DEFAULT 0,
    MooWrap_Mag             double     DEFAULT 0,
    NFS_Mag             double     DEFAULT 0,
    NumbersField_Mag             double     DEFAULT 0,
    POEM_Mag             double     DEFAULT 0,
    PrimeGrid_Mag             double     DEFAULT 0,
    Rosetta_Mag             double     DEFAULT 0,
    SAT_Mag             double     DEFAULT 0,
    SETI_Mag             double     DEFAULT 0,
    Skynet_Mag             double     DEFAULT 0,
    Sztaki_Mag             double     DEFAULT 0,
    WCG_Mag             double     DEFAULT 0,
    Wuprop_Mag             double     DEFAULT 0,
    YAFU_Mag             double     DEFAULT 0,
    YOYO_Mag             double     DEFAULT 0,
    vLHC_Mag             double     DEFAULT 0,
    #TotalMag             double AS (Asteroids_Mag + Atlas_Mag + BU_Mag + BURP_Mag  + CAS_Mag + CSG_Mag + Collatz_Mag + Cosmology_Mag + DDM_Mag + Einstein_Mag + Enigma_Mag + FIND_Mag + GPUGrid_Mag + GRCF_Mag + LHCatHome_Mag + LeidenClassic_Mag + MalariaControl_Mag + Milkyway_Mag + MindModeling_Mag + MooWrap_Mag + NFS_Mag + NumbersField_Mag + POEM_Mag + PrimeGrid_Mag + Rosetta_Mag + SAT_Mag + SETI_Mag + Skynet_Mag + Sztaki_Mag + WCG_Mag + YAFU_Mag + YOYO_Mag + vLHC_Mag) PERSISTENT,
    #Above total mag was an attempt at a virtually computed column; the expression string exceeded the max length of 252 characters.
    TotalMag             double     DEFAULT 0,
    MonthlyEarnings             double     DEFAULT 0,
    Address                 varchar(35),
    Synced_Till        varchar(25),
    OP_Return                 varchar(254),
    cpid        varchar(254)         not null,
    primary key (cpid)
) engine=InnoDB;