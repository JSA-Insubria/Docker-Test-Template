#!/bin/bash

cd 2.18.0_rc2/dbgen
./dbgen -s 5

#Move .tbl in data folder
mv part.tbl ../../data/part.tbl
mv nation.tbl ../../data/nation.tbl
mv orders.tbl ../../data/orders.tbl
mv region.tbl ../../data/region.tbl
mv customer.tbl ../../data/customer.tbl
mv lineitem.tbl ../../data/lineitem.tbl
mv partsupp.tbl ../../data/partsupp.tbl
mv supplier.tbl ../../data/supplier.tbl
