<template>
     <header>

      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Logo</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <router-link :to="{ name: 'home' }" class="nav-link">Home</router-link>
              </li>
              <li class="nav-item">
                 <router-link :to="{ name: 'products' }" class="nav-link">Products</router-link>
              </li>
            </ul>
            <form class="d-flex">
                <router-link :to="{ name: 'login' }" class="nav-link">Login</router-link>
                <router-link :to="{ name: 'login' }" class="nav-link">Logout</router-link>
            </form>
          </div>
        </div>
      </nav>

    </header>

    <div class="container">
      <RouterView />
    </div>
   
</template>

<script>

export default {
  name: 'App'
}
</script>

<style lang="scss">
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
