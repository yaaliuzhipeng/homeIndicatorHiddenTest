import { NativeModules } from 'react-native';

const RNDeviceOrientationModule = NativeModules.DeviceOrientationModule;

class DeviceOrientation {
    static makeFullscreen(full: boolean) {
        RNDeviceOrientationModule.makeFullscreen(full ? 1 : 0);
    }
}

export default DeviceOrientation;