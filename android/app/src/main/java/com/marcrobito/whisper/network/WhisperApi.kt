package com.marcrobito.whisper.network

import com.marcrobito.whisper.pojo.Popular
import retrofit2.http.GET
import retrofit2.http.Query
import retrofit2.Call

interface WhisperApi {

    @GET("whispers/popular?")
    fun getPopularWhispers(@Query("limit") limit:Int): Call<Popular>

}