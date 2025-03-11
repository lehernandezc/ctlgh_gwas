{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1\fs22\fsmilli11040 \cf2  # Code for population structure, genome-wide association and heritability analyses
\f0\fs24 \cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
 ## Description\
\
The following is the accompanying code for the Frontiers in Genetics research article \'93Genetic estimates and genome-wide association studies of antibody response in Tanzanian dairy cattle.\'94\
\
doi: pending \
\
 ## Instructions \
  -  Population structure analysis PCa in Plink using bed files.\
\
  - Example script for admixture analysis: admixture_analysis.sh\
\
  - Example asreml analysis: asreml_analysis.as\
\
  - Example gemma analysis: gemma_analysis.txt\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0  ## Genotypes files in BED format with Tanzanian and reference populations\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0   - Merged_04-2022_1.bed\
  - Merged_04-2022_1.bim\
  - Merged_04-2022_1.fam \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0  ## metadata columns\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0   - id: sample id\
  - givid: asreml id\
  - rvf_elisa_pn: RVF elisa result (1:positive; 0:negative) \
  - lepto_elisa_pn: Leptospira elisa result (1:positive; 0:negative)\
  -  bruc_elisa_pn: Brucella elisa result (1:positive; 0:negative)   \
  - qfev_elisa_pn:  Q-fever elisa result (1:positive; 0:negative)   \
  - BVDV_elisa_pn:  BVDV elisa result (1:positive; 0:negative)\
  - toxo_elisa_pn: Toxoplasma elisa result (1:positive; 0:negative)\
  - neospora_elisa_pn: Neospora elisa result (1:positive; 0:negative)\
  - district_name:  district_name == "Arusha City Council" ~ 1,\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0                                    district_name == "Arusha District Council" ~ 2,\
                                   district_name == "Hai District Council" ~ 3,\
                                   district_name == "Iringa District Council" ~ 4,\
                                   district_name == "Iringa Municipal Council" ~ 5,\
                                   district_name == "Korogwe District Council" ~ 6,\
                                   district_name == "Korogwe Town Council" ~ 7,\
                                   district_name == "Lushoto District Council" ~ 8,\
                                   district_name == "Mafinga Town Coucil" ~ 9,\
                                   district_name == "Makambako Town Coucil" ~ 10,\
                                   district_name == "Mbeya City Council" ~ 11,\
                                   district_name == "Mbeya District Council" ~ 12,\
                                   district_name == "Mbozi District Council" ~ 13,\
                                   district_name == "Meru District Council" ~ 14,\
                                   district_name == "Moshi Rural District Council" ~ 15,\
                                   district_name == "Mufindi District Council" ~ 16,\
                                   district_name == "Muheza District Council" ~ 17,\
                                   district_name == "Njombe District Council" ~ 18,\
                                   district_name == "Njombe Town Council" ~ 19,\
                                   district_name == "Rombo District Council" ~ 20,\
                                   district_name == "Rungwe District Council" ~ 21,\
                                   district_name == "Siha District Council" ~ 22,\
                                   district_name == "Tanga City Council" ~ 23)\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0   - sample_month: 1-12 (Jan - Dec)\
  - animalsex: "female" ~ 1, animalsex == "male" ~ 2\
  - herdsize_fct: <5 (1), 5-10 (2),  10-90 (3), > 90 (4)\
  - PC1, PC2, PC3, PC4, PC5: PCA analysis  \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
\
\
\
}