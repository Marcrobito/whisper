package com.marcrobito.whisper.main

import android.util.Log
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

import com.marcrobito.whisper.network.WhisperApi
import com.marcrobito.whisper.pojo.Popular

class MainModel(private val whisperApi:WhisperApi):MainContract.Model {

    private lateinit var presenter:MainContract.Presenter

    override fun setPresenter(presenter: MainContract.Presenter) {
        this.presenter = presenter
        getElements()
    }

    private fun getElements(){
        val call: Call<Popular> = whisperApi.getPopularWhispers(50)
        call.enqueue(object: Callback<Popular> {
            override fun onFailure(call: Call<Popular>, t: Throwable) {

            }

            override fun onResponse(call: Call<Popular>, response: Response<Popular>) {
                Log.d("MDIAL", response.toString())
                //presenter.setItems(response?.body()!!.popular)
            }
        })
    }

}