package com.marcrobito.whisper.main

import com.marcrobito.whisper.pojo.Whisper

class MainPresenter(private val model: MainContract.Model):MainContract.Presenter {

    private lateinit var v:MainContract.View

    override fun setView(view: MainContract.View) {
        v = view
        model.setPresenter(this)
    }

    override fun setItems(items: List<Whisper>) {
        v.updateView(items)
    }
}