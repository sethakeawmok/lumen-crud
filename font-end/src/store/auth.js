import axios from 'axios'

export default {
    namespaced: true,
    state: {
        token: null,
        user: null
    },

    getters: {
        // autenticated (state){
        //     return state.token && state.user 
        // },
        // user (state){
        //     return state.user.data
        // }
    },

    mutations: {
        SET_TOKEN(state, token) {
            state.token = token
        },
        SET_USER(state, user) {
            state.user = user
        }
    },
    actions: {
        async signIn ({ dispatch }, credentials) {
            let respone = await axios.post('http://lumen-crud.com/login', credentials)
             
            //console.log(respone)
            dispatch('attempt', respone.data.api_token)
        },
        
        async attempt ({ commit }, token) {

            //console.log(token)
            if (token){
                commit('SET_TOKEN', token)
            }
            
            // if (!token){
            //     return
            // }

            try {
                let respone = await axios.get('http://lumen-crud.com/me', {
                    headers: {
                        'Authorization': 'Bearer ' + token
                    }
                }) 
console.log(respone)
                //commit('SET_USER', respone.data)
            } catch(e){
                
                commit('SET_TOKEN', null)
                commit('SET_USER', null)
            }
        },

        // signOut ({commit}) {
        //     //return axios.post('api/logout').then(() => {
        //         // commit('SET_TOKEN', null)
        //         // commit('SET_USER', null)
        //     //})
        // }
    } 
}