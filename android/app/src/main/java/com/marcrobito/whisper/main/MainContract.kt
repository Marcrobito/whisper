package com.marcrobito.whisper.main

import com.marcrobito.whisper.pojo.Whisper

interface MainContract {

    interface View{
        fun updateView(items:List<Whisper>)
    }

    interface Presenter{
        fun setView(view: View)
        fun setItems(items:List<Whisper>)
    }

    interface Model{
        fun setPresenter(presenter:Presenter)
    }
}