package com.raidandfade.haxicord.types.structs;


// @serverside is for when you decide to at some point have an embed creator. fun times.

typedef Embed = {
    @:optional var title:String;
    @:optional @serverSide var type:String; // should be "rich"
    @:optional var description:String;
    @:optional var url:String;
    @:optional var timestamp:Date;
    @:optional var color:Int;
    @:optional var footer:EmbedFooter;
    @:optional var image:EmbedImage;
    @:optional var thumbnail:EmbedThumbnail;
    @:optional var video:EmbedVideo;
    @:optional var provider:EmbedProvider;
    @:optional var author:EmbedAuthor;
    @:optional var fields:Array<EmbedField>;
}

typedef EmbedFooter = {
    @:optional var text:String;
    @:optional var icon_url:String;
    @:optional @serverSide var proxy_icon_url:String; // http(s) and attachments.
}

typedef EmbedImage = {
    @:optional var url:String;
    @:optional @serverSide var proxy_url:String;
    @:optional @serverSide var height:Int;
    @:optional @serverSide var width:Int;
}

// might be able to just use EmbedImage...
typedef EmbedThumbnail = {
    @:optional var url:String;
    @:optional @serverSide var proxy_url:String;
    @:optional @serverSide var height:Int;
    @:optional @serverSide var width:Int;
}

typedef EmbedVideo = {
    @:optional var url:String;
    @:optional @serverSide var height:Int;
    @:optional @serverSide var width:Int;
}

typedef EmbedProvider = {
    @:optional var name:String;
    @:optional var url:String;
}

typedef EmbedAuthor = {
    @:optional var name:String;
    @:optional var url:String;
    @:optional var icon_url:String;
    @:optional @serverSide var proxy_icon_url:String; // http(s) and attachments.
}

@:structInit
class EmbedField {
    @:optional public var name:String;
    @:optional public var value:String;
    @:optional @:native("inline") var _inline:Bool;

    public function new(name:String, value:String, _inline:Bool = false) {
        this.name = name;
        this.value = value;
        this._inline = _inline;
    }
}
