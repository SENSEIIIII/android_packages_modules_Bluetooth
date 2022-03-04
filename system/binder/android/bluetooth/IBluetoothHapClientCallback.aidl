/*
 *  Copyright 2022 The Android Open Source Project
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at:
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package android.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHapPresetInfo;

import java.util.List;

/**
 * Callback definitions for interacting with HAP Client service
 *
 * @hide
 */
oneway interface IBluetoothHapClientCallback {
    void onActivePresetChanged(in BluetoothDevice device, in int presetIndex);
    void onSelectActivePresetFailed(in  BluetoothDevice device, in int statusCode);
    void onSelectActivePresetForGroupFailed(in int hapGroupId, in int statusCode);
    void onPresetInfoChanged(in  BluetoothDevice device,
                in List<BluetoothHapPresetInfo> presetInfoList,
                in int statusCode);
    void onHapFeaturesAvailable(in BluetoothDevice device, in int hapFeatures);
    void onSetPresetNameFailed(in BluetoothDevice device, in int status);
    void onSetPresetNameForGroupFailed(in int hapGroupId, in int status);
}