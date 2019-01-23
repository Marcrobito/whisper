package com.marcrobito.whisper

import android.content.Context
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.ViewGroup
import com.bumptech.glide.Glide
import com.bumptech.glide.request.RequestOptions
import com.marcrobito.whisper.pojo.Whisper
import kotlinx.android.synthetic.main.row_view.view.*

class WhisperAdapter(private val items : List<Whisper>, private val context: Context) : RecyclerView.Adapter<WhisperAdapter.VH>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        return VH(parent)
    }

    override fun onBindViewHolder(holder: VH, position: Int) {
        holder.bind(items[position])
    }

    override fun getItemCount(): Int = items.size

    class VH(parent: ViewGroup) : RecyclerView.ViewHolder(
        LayoutInflater.from(parent.context).inflate(R.layout.row_view, parent, false)){
        fun bind(item: Whisper) = with(itemView) {
            Glide.with(context)
                .load(item.url).apply(RequestOptions.centerCropTransform()).into(itemView.image_view)
        }
    }
}