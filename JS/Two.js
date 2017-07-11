/**
 * Created by guohongan on 2017/7/11.
 */
import React, { Component } from 'react';
import {
    AppRegistry,
    StyleSheet,
    Text,
    View,
    NativeModules
} from 'react-native';

var RNModules  = NativeModules.RTModule;
export default class Home extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.instructions} onPress={()=>RNModules.RNOpenOneVC('测试')} >
                我还是RN界面, 点我才能回原生哦
                </Text>
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
    },
    welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    instructions: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
});