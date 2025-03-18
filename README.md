
 # Code for population structure, genome-wide association and heritability analyses

 ## Description

The following is the accompanying code for the Frontiers in Genetics research article “Genetic estimates and genome-wide association studies of antibody response in Tanzanian dairy cattle.”

doi: pending 

 ## Instructions 
  -  Population structure analysis PCA in Plink using bed files.

  - Example script for admixture analysis: admixture_analysis.sh

  - Example ASReml analysis: asreml_analysis.as

  - Example gemma analysis: gemma_analysis.txt

 ## Genotypes files in vcf format

The genotpyes files can be found at (pending):
  - Merged_04-2022_TZA.vcf


 ## metadata columns
Merged_04-2022_TZA_metadata.txt

  - AID: sample id
  - rvf_elisa_pn: RVF elisa result (1:positive; 0:negative) 
  - lepto_elisa_pn: Leptospira elisa result (1:positive; 0:negative)
  - bruc_elisa_pn: Brucella elisa result (1:positive; 0:negative)   
  - qfev_elisa_pn:  Q-fever elisa result (1:positive; 0:negative)   
  - BVDV_elisa_pn:  BVDV elisa result (1:positive; 0:negative)
  - toxo_elisa_pn: Toxoplasma elisa result (1:positive; 0:negative)
  - neospora_elisa_pn: Neospora elisa result (1:positive; 0:negative)
  - district_name:  district_name == "Arusha City Council" ~ 1,
                                   district_name == "Arusha District Council" ~ 2,
                                   district_name == "Hai District Council" ~ 3,
                                   district_name == "Iringa District Council" ~ 4,
                                   district_name == "Iringa Municipal Council" ~ 5,
                                   district_name == "Korogwe District Council" ~ 6,
                                   district_name == "Korogwe Town Council" ~ 7,
                                   district_name == "Lushoto District Council" ~ 8,
                                   district_name == "Mafinga Town Coucil" ~ 9,
                                   district_name == "Makambako Town Coucil" ~ 10,
                                   district_name == "Mbeya City Council" ~ 11,
                                   district_name == "Mbeya District Council" ~ 12,
                                   district_name == "Mbozi District Council" ~ 13,
                                   district_name == "Meru District Council" ~ 14,
                                   district_name == "Moshi Rural District Council" ~ 15,
                                   district_name == "Mufindi District Council" ~ 16,
                                   district_name == "Muheza District Council" ~ 17,
                                   district_name == "Njombe District Council" ~ 18,
                                   district_name == "Njombe Town Council" ~ 19,
                                   district_name == "Rombo District Council" ~ 20,
                                   district_name == "Rungwe District Council" ~ 21,
                                   district_name == "Siha District Council" ~ 22,
                                   district_name == "Tanga City Council" ~ 23)
  - sample_month: 1-12 (Jan - Dec)
  - animalsex: "female" ~ 1, animalsex == "male" ~ 2
  - herdsize_fct: <5 (1), 5-10 (2),  10-90 (3), > 90 (4)

