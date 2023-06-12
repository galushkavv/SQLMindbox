use TestMindbox

select prod.[name] as product, resCat.[name] as category
from Product as prod
	outer apply (
		select * from ProductCategories as prodCat where prod.id = prodCat.product ) as a
	outer apply (
		select cat.[name] from Category as cat where cat.id = a.category ) as resCat