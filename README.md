# EP15A3 precision plot

Plots up to 3 level precision plot for visualization of EP15A3 precision results.


Data must include following variables as a data.frame:


* "block"            (Factor or character) Information for block, module, or reading cell information  
* "test_name_unit"   (Charachter) Test names with unit  
* "sample_no"        (Factor or character) QC Levels, e.g., "Level1"  
* "cv_type"          (Charachter) CV type, must be "r" or "wl"  
* "act"              (Numeric) Actual calculated CV%  
* "limits"           (Numeric) Manufacturer proposed CV% limit  
* "claim"            (Numeric) Extended manufacturer proposed CV% limit, calculated according to the guideline  


Demo data was provided. Check with:
head(demo_data)

