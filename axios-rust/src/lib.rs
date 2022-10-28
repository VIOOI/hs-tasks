// mod utils;

// use serde_wasm_bindgen;
use structurs::{GitRes, UserRes};
use wasm_bindgen::{prelude::*, JsCast};
// use wasm_request::{self, get_options, request, Method};
use web_sys::{ HtmlDivElement, HtmlInputElement};
use reqwest_wasm;
use serde_json_wasm::from_str;

mod structurs;

// macro_rules! add_class  {
//     ($element:ident, $( $v:expr ),*) => (
//         $(
//             element.
//          )
//           )
// }


#[wasm_bindgen]
pub async fn get_github() -> () {
    let window = web_sys::window().expect("Window не найден");
    let document = window.document().expect("Document не найден");

    let results_container = document
        .query_selector(".wasm-results")
        .unwrap()
        .unwrap()
        .dyn_into::<HtmlDivElement>()
        .unwrap();
    let search_input = document
        .query_selector(".js-input")
        .unwrap()
        .unwrap()
        .dyn_into::<HtmlInputElement>()
        .unwrap();

    let value = search_input.value().trim().to_lowercase();

    let url = format!("https://api.github.com/users/{value}");
    let req = reqwest_wasm::get(url).await.unwrap()
        .text().await.unwrap();

    let req = from_str::<GitRes>(&req).unwrap();
    let text_html = format!("
<img 
  class=\"w-52 rounded-xl shadow-lg shadow-neutral-700\"
  src=\"{avatar}\"
>
  <div>
    <p class=\"font-extrabold\"> Имя: <span class=\"font-light\">{name}</span></p>
    <p class=\"font-extrabold\"> О себе: <span class=\"font-light\">{bio}</span></p>
    <p class=\"font-extrabold\"> Кол-во репозиториев: <span class=\"font-light\">{public_repos}</span></p>
  </div>
</div>
        ",
        avatar = req.avatar_url,
        name = req.name,
        bio = req.bio,
        public_repos = req.public_repos
        );
        results_container.set_inner_html(&text_html);
}

#[wasm_bindgen]
pub async fn get_users() -> () {
    let document = web_sys::window().unwrap().document().unwrap();

    let page_wraper = document.query_selector(".page-wrapper")
        .unwrap().unwrap();

    let element = "
        <div class=\"response-users grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5 items-end h-52 mb-10\">
        </div> ";
    page_wraper.insert_adjacent_html(&"beforeend", &element).unwrap();

    let url = format!("https://jsonplaceholder.typicode.com/users");
    let req = reqwest_wasm::get(url).await.unwrap()
        .text().await.unwrap();
    let req = from_str::<Vec<UserRes>>(&req).unwrap();
    let test = req.iter().map(|u| {
        format!("
<div class=\"p-5 px-10 bg-neutral-900 w-full rounded-md\">
  <h2 class=\"text-lg font-bold\">
    <span class=\"text-sm font-light \">{id}</span> {name}
  </h2>
  <p class=\"font-light\">
    <span class=\"font-extrabold\">{nickname}</span> 
    <a href=\"mailto:{mail}\"><span class=\"text-xs\">{mail}</span></a>
  </p>
  <p class=\"font-light\">
    <a href=\"tel:{tel}\"><span>{tel}</span></a>
  </p>
  <p class=\"font-light\">
    <a href=\"hildegard.org\"><span>{site}</span></a>
  </p>

  <div class=\"my-3 pl-5 border-l-2\">
    <h3 class=\"ml-3\">Адрес:</h3>
    <p>{city}</p>
    <p>{street} {suite}</p>
  </div>

  <div class=\"my-3 pl-5 border-l-2\">
    <h3 class=\"ml-3\">Компания:</h3>
    <p>{comp_name}</p>
    <p>{CP}</p>
  </div>
</div> ",
id = u.id,
name = u.name,
nickname = u.username,
mail = u.email,
tel = u.phone,
site = u.website,
city = u.address.city,
street = u.address.street,
suite = u.address.suite,
comp_name = u.company.name,
CP = u.company.catch_phrase,
)
    }).collect::<String>();

    let elem_to_inner = document.query_selector(".response-users")
        .unwrap().unwrap();
    elem_to_inner.set_inner_html(&test);
    // req.iter().for_each(|u| {
    //     let elem = document.create_element("div").unwrap()
    //         .dyn_into::<HtmlDivElement>().unwrap();
    //     add_class!();
    // })
}
