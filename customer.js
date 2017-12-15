const mysql = require('mysql');
const prompt = require('prompt');
const Table = require('cli-table');
const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: 'silence1',
	database: 'bamazon', 
});

const productPurchased = [];

connection.connect();
connection.query('SELECT ItemID, ProductName, Price FROM Products', function(err, result){
	if(err) console.log(err);

	const table = new Table({
		head: ['Item Id#', 'Product Name', 'Price'],
		style: {
			head: ['red'],
			compact: false,
			colAligns: ['center'],
		}
	});

	for(var i = 0; i < result.length; i++){
		table.push(
			[result[i].ItemID, result[i].ProductName, result[i].Price]
		);
	}
	console.log(table.toString());

	purchase();
});

const purchase = function(){

	const productInfo = {
		properties: {
			itemID:{description: ('ID # of the item you would like to buy')},
			Quantity:{description: ('How many of that item would you like to buy?')}
		},
	};

	prompt.start();

	prompt.get(productInfo, function(err, res){

		const customerPurchase = {
			itemID: res.itemID,
			Quantity: res.Quantity
		};
		
		productPurchased.push(customerPurchase);

		connection.query('SELECT * FROM Products WHERE ItemID=?', productPurchased[0].itemID, function(err, res){
				if(err) console.log(err, 'That item ID doesn\'t exist');
				
				if(res[0].StockQuantity < productPurchased[0].Quantity){
					console.log('This product is no longer in stock');
					connection.end();

				} else if(res[0].StockQuantity >= productPurchased[0].Quantity){

					console.log('');

					console.log(productPurchased[0].Quantity + ' items purchased');

					console.log(res[0].ProductName + ' ' + res[0].Price);

					const saleTotal = res[0].Price * productPurchased[0].Quantity;

					console.log('Total: ' + saleTotal);

					newQuantity = res[0].StockQuantity - productPurchased[0].Quantity;
			
					connection.query("UPDATE Products SET StockQuantity = " + newQuantity +" WHERE ItemID = " + productPurchased[0].itemID, function(err, res){
						
						console.log('');
						console.log(('Your order is being processed.  Thank you for at Bamazon'));
						console.log('');

						connection.end();
					})

				};

		})
	})

};