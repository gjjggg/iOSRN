import {
    StackNavigator,
    TabNavigator,

} from 'react-navigation';
import  React from 'react';
import {
    Image,
    StyleSheet,
    Text,
} from  'react-native'
import  Home from './Home'
import  Two from  './Two'
const MyNav = StackNavigator({
    Home:{
        screen:Home,
        navigationOptions:{
          headerTitle: 'Home',
          //  header:null
        },

    },
    Two:{
        screen:Two,
        navigationOptions:{
            headerTitle: 'Two'

        },

    },

},{
    headerMode:'screen'
});
export  default MyNav;