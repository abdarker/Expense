package com.cash.wallet.glance

import HomeWidgetGlanceState
import HomeWidgetGlanceStateDefinition
import android.content.Context
import android.graphics.BitmapFactory
import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.action.ActionParameters
import androidx.glance.action.clickable
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.action.ActionCallback
import androidx.glance.appwidget.action.actionRunCallback
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Alignment
import androidx.glance.layout.Column
import androidx.glance.layout.ContentScale
import androidx.glance.layout.fillMaxSize
import com.cash.wallet.MainActivity
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.actionStartActivity


class HomeWidgetGlanceAppWidget : GlanceAppWidget() {
    override val stateDefinition = HomeWidgetGlanceStateDefinition()

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            GlanceContent(context, currentState())
        }
    }

    @Composable
    private fun GlanceContent(context: Context, currentState: HomeWidgetGlanceState) {
        val data = currentState.preferences
        val imagePath = data.getString("lineChart", null)
        val primaryColor = data.getInt("bgColor", 0)
        val bgColor = android.graphics.Color.valueOf(primaryColor).toArgb()
        // Add Image to Compose Tree
        Column(
            modifier = GlanceModifier
                .fillMaxSize()
                .background(Color(bgColor))
                .clickable(onClick = actionStartActivity<MainActivity>(context)),
            verticalAlignment = Alignment.Top,
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            imagePath?.let {
                val bitmap = BitmapFactory.decodeFile(it)
                Image(
                    ImageProvider(bitmap), null,
                    modifier = GlanceModifier
                        .fillMaxSize(),
                    contentScale = ContentScale.Crop,
                )
            }
        }
    }
}