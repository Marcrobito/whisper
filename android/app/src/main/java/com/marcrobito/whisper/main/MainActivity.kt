package com.marcrobito.whisper.main

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.support.v7.widget.LinearLayoutManager
import com.marcrobito.whisper.App
import com.marcrobito.whisper.R
import com.marcrobito.whisper.WhisperAdapter
import com.marcrobito.whisper.pojo.Whisper
import kotlinx.android.synthetic.main.activity_main.*
import javax.inject.Inject

class MainActivity : AppCompatActivity(), MainContract.View {

    @Inject
    lateinit var presenter: MainContract.Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        (application as App).getComponent().inject(this)
        setContentView(R.layout.activity_main)
    }

    override fun onResume() {
        super.onResume()
        presenter.setView(this)
    }

    override fun updateView(items: List<Whisper>) {
        val adapter = WhisperAdapter(items, this )
        recycler_view.layoutManager = LinearLayoutManager(this)
        recycler_view.adapter = adapter

    }
}
