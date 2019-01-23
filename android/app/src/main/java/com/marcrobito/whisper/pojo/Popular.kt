package com.marcrobito.whisper.pojo

import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName

data class Popular (@SerializedName("ad_units") @Expose val  ad_units:List<Any>,
                    @SerializedName("cards") @Expose val  cards:List<Any>,
                    @SerializedName("engine") @Expose val  engine:String,
                    @SerializedName("popular") @Expose val  popular:List<Whisper>,
                    @SerializedName("scroll_id") @Expose val  scrollId:String)


data class Whisper(@SerializedName("feeds") @Expose val  feeds:List<Feed>,
                   @SerializedName("geo_title") @Expose val  geoTitle:String,
                   @SerializedName("in_reply_to") @Expose val  inReplyTo:String,
                   @SerializedName("me2") @Expose val  me2:Int,
                   @SerializedName("nickname") @Expose val  nickname:String,
                   @SerializedName("places") @Expose val  places:List<Any>,
                   @SerializedName("popularity") @Expose val  popularity:Double,
                   @SerializedName("puid") @Expose val  pUId:String,
                   @SerializedName("replies") @Expose val  replies:Int,
                   @SerializedName("shouts") @Expose val  shouts:Int,
                   @SerializedName("sort") @Expose val  sort:Int,
                   @SerializedName("text") @Expose val  text:String,
                   @SerializedName("topics") @Expose val  topics:List<Any>,
                   @SerializedName("ts") @Expose val  ts:Int,
                   @SerializedName("url") @Expose val  url:String,
                   @SerializedName("wid") @Expose val  wId:String)


data class Feed(@SerializedName("displayname") @Expose val  displayName:String,
                @SerializedName("feed_sub_type") @Expose val  feedSubType:String,
                @SerializedName("feed_type") @Expose val  feedType:String,
                @SerializedName("id") @Expose val  id:String,
                @SerializedName("name") @Expose val  name:String)
