package com.marcrobito.whisper.network

import android.app.Application
import dagger.Module
import dagger.Provides
import okhttp3.Cache
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.io.File

@Module
class WhisperApiModule(app: Application) {

    private val baseUrl = when(NetworkManager().environment){
        NetworkEnvironment.Production ->  "http://prod.whisper.sh/"
        NetworkEnvironment.QA ->  "http://prod.whisper.sh/"
        NetworkEnvironment.Staging ->  "http://prod.whisper.sh/"
    }

    private val httpCacheDirectory = File(app.applicationContext.cacheDir, "httpCache")
    private val cache = Cache(httpCacheDirectory, 10 * 1024 * 1024)

    @Provides
    fun provideClient(): OkHttpClient {
        val interceptor = HttpLoggingInterceptor()
        interceptor.level = HttpLoggingInterceptor.Level.BODY



        return OkHttpClient.Builder().addInterceptor(interceptor)
            .cache(cache)

            .addInterceptor {
                try{
                    it.proceed(it.request())
                }catch (e:Throwable){
                    val offlineRequest = it.request().newBuilder()
                        .header("Cache-Control", "public, only-if-cached," +
                                "max-stale=" + 60 * 60 * 24)

                        .build()
                    it.proceed(offlineRequest)
                }
            }.build()
    }

    @Provides
    fun provideRetrofit(baseUrl:String, client: OkHttpClient): Retrofit {

        return  Retrofit.Builder()

            .baseUrl(baseUrl)
            .client(client)

            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }

    @Provides
    fun provideApiService():WhisperApi = provideRetrofit(baseUrl, provideClient()).create(WhisperApi::class.java)
}

class NetworkManager {
    val environment = NetworkEnvironment.Production
}

enum class NetworkEnvironment{
    Staging(),
    QA(),
    Production()
}