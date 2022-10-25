import './styles/style.scss'


document.querySelector(".shopping")?.addEventListener('click', (_) => {
	let shop_count = document.querySelector(".shopping_count") as HTMLDivElement
	let count = parseInt(shop_count.innerText);

	shop_count.innerText = `${count + 1}`;
})

document.querySelector("#cont_form")?.addEventListener( 'click', _ => {
	let name = document.querySelector("#name") as HTMLInputElement;
	let tel = document.querySelector("#telephone") as HTMLInputElement;
	// console.log(name.value);
	
	alert(`${name.value} - ${tel.value}`)
} )

// import { Alpine as AlpineType } from 'alpinejs'
//
// declare global {
//   var Alpine: AlpineType
// }
//
// import Alpine from 'alpinejs'
//
// // suggested in the Alpine docs:
// // make Alpine on window available for better DX
// window.Alpine = Alpine
//
// type social = {
// 	alt: string,
// 	img: string,
// 	link: string,
// }
//
// type headerDataTypes = {
// 	open: boolean,
// 	menu_items: string[],
// 	test: string,
// 	social_network: social[],
// 	shop_count: number,
// 	new_shop_count: Function
// }
//
// Alpine.data( "header_data", (): headerDataTypes => ({
// 	open: false,
// 	menu_items: [
// 		"Каталог товаров",
// 		"Доставка и оплата",
// 		"Цены",
// 		"Контакты",
// 	],
// 	test: "Hello",
// 	social_network: [
// 		{
// 			alt: "ВКонтакте",
// 			img: "/public/social/vk.svg",
// 			link: "https://vk.com/" 
// 		},
// 		{
// 			alt: "Телеграм",
// 			img: "/public/social/telegram.svg",
// 			link: "https://vk.com/"
// 		},
// 		{
// 			alt: "Инстограм",
// 			img: "/public/social/instagram.svg",
// 			link: "https://vk.com/"
// 		},
// 		{
// 			alt: "Whatsapp",
// 			img: "/public/social/whatsapp.svg",
// 			link: "https://vk.com/"
// 		},
// 	],
// 	shop_count: 10,
// 	new_shop_count() {
// 	    if (this.shop_count == 20) { this.shop_count = 0 }
// 			else{ this.shop_count = this.shop_count + 1 }
// 	},
// })
// )
//
// Alpine.start()
