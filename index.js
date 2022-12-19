import { AppRegistry } from 'react-native';
import { name as appName } from './app.json';
import {
    AppWorksFailed,
    AppWorksFine,
} from './App';

/**
 * unmark this to run a example without ReactNavigation(mostly the react-native-screens )
 */
AppRegistry.registerComponent(appName, () => AppWorksFine);


/**
 * unmark this to run a example with ReactNavigation(mostly the react-native-screens ) which won't work as expected
 */

// AppRegistry.registerComponent(appName, () => AppWorksFailed);