module hello_world::hello_world{
    use std::string;
    usesui::object::{Self,UID};
    use sui::transfer;
    use sui::tx_context::{Self,TxContext};
    // module content
    // imports

    // types
    // has Copy,Drop,Key,Store
struct HelloWorldObject has key,store{ 
    id:UID,
    text:string::String
}
    // functions
    
}