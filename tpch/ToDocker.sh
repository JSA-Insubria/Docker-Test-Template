#!/bin/bash

docker cp query/createtable_loaddata.hql nodemaster:/home/hadoop/dataset/tpch/createtable_loaddata.hql

docker cp data/part.tbl nodemaster:/home/hadoop/dataset/tpch/part.tbl
docker cp data/nation.tbl nodemaster:/home/hadoop/dataset/tpch/nation.tbl
docker cp data/orders.tbl nodemaster:/home/hadoop/dataset/tpch/orders.tbl
docker cp data/region.tbl nodemaster:/home/hadoop/dataset/tpch/region.tbl
docker cp data/customer.tbl nodemaster:/home/hadoop/dataset/tpch/customer.tbl
docker cp data/lineitem.tbl nodemaster:/home/hadoop/dataset/tpch/lineitem.tbl
docker cp data/partsupp.tbl nodemaster:/home/hadoop/dataset/tpch/partsupp.tbl
docker cp data/supplier.tbl nodemaster:/home/hadoop/dataset/tpch/supplier.tbl

for i in {1..22}
do
   docker cp query/query-$i.hql nodemaster:/home/hadoop/dataset/tpch/query/query-$i.hql
done
