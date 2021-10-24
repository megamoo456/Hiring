import React, { Suspense, useState } from "react";
import { BrowserRouter,Route, Switch,Redirect } from "react-router-dom";
import Companies from "./Companies";


import Detail from "./Detail";



function Routes() {


     return (
        <>
          <BrowserRouter basename="/">
             <Suspense fallback={<p>...Loading page please wait</p>}>
             
                <Switch>
                <Route exact path="/" component={Companies}></Route>
                <Route exact path="/detail/:id" component={Detail}></Route>

                  </Switch>
              
                
               </Suspense>
            </BrowserRouter>
        
           

        </>
    )
}

export default Routes;
