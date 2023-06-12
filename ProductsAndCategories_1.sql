use TestMindbox

select Product.[name] as product, Category.[name] as category
from
	Product left join ProductCategories on Product.id = ProductCategories.product
			left join Category on ProductCategories.category = Category.id