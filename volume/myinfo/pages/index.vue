<template>
 <div class="page">
   <label>
     <span>
       お名前:
     </span>
     <input
       type="text"
       v-model="user.name"
     >
   </label>
   <label>
     <span>
       email:
     </span>
     <input
       type="text"
       v-model="user.email"
     >
   </label>
   <button
     type="button"
     @click="submit"
   >
     Submit
   </button>
 </div>
</template>

<script>
import db from '@/plugins/firebase';
import { getDatabase, ref, set } from "firebase/database";

function writeUserData(db, userId, name, email) {
  set(ref(db, 'users/' + userId), {
    username: name,
    email: email,
  });
}

export default {
 data () {
   return {
     user: {
       name: "",
       email: ""
     },
   }
 },
 methods: {
   submit () {
     writeUserData(db, 5, this.user.name, this.user.email)

   },
 },
}
</script>
