import init, { get_github, get_users } from "./axios-rust/pkg/axios_rust.js"

init();

document.querySelector(".js-load")
	.addEventListener("click", get_github);

document.querySelector(".load-user")
	.addEventListener("click", get_users);
