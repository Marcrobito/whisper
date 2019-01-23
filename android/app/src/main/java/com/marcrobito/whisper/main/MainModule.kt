package com.marcrobito.whisper.main

import com.marcrobito.whisper.network.WhisperApi
import dagger.Module
import dagger.Provides
import javax.inject.Inject

@Module
class MainModule {

    @Provides
    fun providesMainPresenter(model:MainContract.Model):MainContract.Presenter = MainPresenter(model)

    @Provides
    @Inject
    fun providesDestinationsModel(whisperApi: WhisperApi):MainContract.Model = MainModel(whisperApi)
}