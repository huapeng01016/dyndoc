clear all
sysuse auto

set seed 12345
local percent 40
local vlist foreign turn trunk disp

gen train = 0
replace train = 1 if runiform() < `percent'/100

logit `vlist' if train == 1 
estat classification if train==0

pysvm2 `vlist' if train == 1
pysvm2predict foreign_pred if train == 0

label values foreign_pred origin
tabulate foreign foreign_pred if train==0, nokey
