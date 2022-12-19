import React from "react";
import { View, StyleSheet, Text } from "react-native";
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
const Stack = createStackNavigator();

import DeviceOrientation from "./DeviceOrientation";


const Home = (props) => {
	return (
		<View style={styles.container}>
			<Text onPress={() => {
				DeviceOrientation.makeFullscreen(false);
			}} style={styles.label}>Show HomeIndicator</Text>
			<Text onPress={() => {
				DeviceOrientation.makeFullscreen(true);
			}} style={styles.label}>Hide HomeIndicator</Text>
		</View>
	)
}

const AppWorksFine = (props) => {

	return <Home />
}

const AppWorksFailed = (props) => {

	return (
		<View style={{ flex: 1 }}>
			<NavigationContainer >
				<Stack.Navigator>
					<Stack.Screen name="home" component={Home} />
				</Stack.Navigator>
			</NavigationContainer>
		</View>
	)
}


export {
	AppWorksFailed,
	AppWorksFine
}

const styles = StyleSheet.create({
	container: {
		flex: 1, justifyContent: 'center', alignItems: 'center'
	},
	label: {
		marginVertical: 30,
		fontSize: 23,
		color: 'red'
	}
})