import React, {useEffect, useState, useRef} from 'react';

import './App.css';

import Routes from './Routes'
import styled from "styled-components";

import 'primeicons/primeicons.css';
import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.css';
import ReactDOM from 'react-dom';
//Api 







//
const App = () =>{
 

return (
  <>
              
  

              <AppFrame>
                      <Routes/>
                  </AppFrame> 

  </>
  )
}

const AppFrame = styled.div`
  text-align: center;
  width:100%;
  
`;
export default App;
