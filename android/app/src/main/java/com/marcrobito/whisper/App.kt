package com.marcrobito.whisper

import android.app.Application
import com.marcrobito.whisper.network.WhisperApiModule

class App: Application() {

    private lateinit var component: AppComponent

    override fun onCreate() {
        super.onCreate()
        component = DaggerAppComponent.builder()
            .whisperApiModule(WhisperApiModule(this))
            .build()

    }

    fun getComponent() = component
}