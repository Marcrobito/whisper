package com.marcrobito.whisper

import com.marcrobito.whisper.main.MainActivity
import com.marcrobito.whisper.main.MainModule
import com.marcrobito.whisper.network.WhisperApiModule
import dagger.Component
import javax.inject.Singleton

@Singleton
@Component(modules = [AppModule::class, WhisperApiModule::class, MainModule::class])

interface AppComponent {
    fun inject(main:MainActivity)
}