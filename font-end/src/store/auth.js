import axios from 'axios'

export default {
    namespaced: true,
    state: {
        token: null,
        user: null
    },

    getters: {
        autenticated (state){
            return state.token
            //return state.token && state.user 
        },
        user (state){
            return state.user
        }
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
            let respone = await axios.post('http://localhost/lumen-crud/public/login', credentials)
             
            return dispatch('attempt', respone.data.api_token)
        },
        
        async attempt ({ commit }, token) {
 
            if (token){
                commit('SET_TOKEN', token)
            }
            if (!token){
                return
            }
            
            try {
                let respone = await axios.get('http://localhost/lumen-crud/public/api/me') 
                
                commit('SET_USER', respone.data)
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