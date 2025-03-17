package com.ampower.faceit

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity : FlutterFragmentActivity() {
    private val CHANNEL = "com.ampower.faceit/channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "openWidget") {
                val intent = Intent(this, MainActivity::class.java)
                intent.action = "com.ampower.faceit.WIDGET_BUTTON_CLICK"
                startActivity(intent)
                result.success(null)
            } else {
                result.notImplemented()
            }
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        if (intent.action == "com.ampower.faceit.WIDGET_BUTTON_CLICK") {
            MethodChannel(flutterEngine!!.dartExecutor!!.binaryMessenger, CHANNEL).invokeMethod("openWidget", null)
        }
    }
}
