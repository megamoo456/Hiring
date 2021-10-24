import React, {useEffect, useState, useRef} from 'react';
import axios from 'axios';
import './App.css';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { InputText } from 'primereact/inputtext';
import { Button } from 'primereact/button';
import styled from "styled-components";
import Routes from './Routes'
import { Toast } from 'primereact/toast';
import 'primeicons/primeicons.css';
import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.css';
import { useLocation } from "react-router-dom";

//Api 






//
function Detail() {
  const location = useLocation();
  const [globalFilter, setGlobalFilter] = useState('');
  const [companies, setCompanies] = useState([]);
  useEffect(() => {
    console.log(location); // result: '/secondpage'
    console.log(location.search); // result: '?query=abc'
    console.log(location.state); // result: 'some_value'
 }, []);
/*   const [randomUserDataJSON, setRandomUserDataJSON]  */ 
const Companyidtemp = (rowData) => {
  return (
      <React.Fragment>
          <span className="p-column-title">Source Id</span>
          {rowData.source_id}
      </React.Fragment>
  );
}
const Companynametemp = (rowData) => {

  return (
      <React.Fragment>
          <span className="p-column-title">Company Name</span>
          {rowData.name}
         
      </React.Fragment>
  );
}

// datatable
const [selectedProduct1, setSelectedProduct1] = useState(null);
const reset = () => {
  setGlobalFilter('');

}
// fetch /detail/:id



const toast = useRef(null);
const onRowSelect = (event) => {
  toast.current.show({ severity: 'info', summary: 'Company Selected', detail: `Name: ${event.data.name}
   Website: ${event.data.website} Email: ${event.data.email} Phone: ${event.data.phone} Postal Code: ${event.data.postal_code}
   City: ${event.data.city} Country: ${event.data.country}`, 
   life: 20000 });
}
const header = (
  <div className="table-header">
      <Button type="button" label="Clear" className="p-button-outlined" icon="pi pi-filter-slash" onClick={reset} />
      <span className="p-input-icon-left">
          <i className="pi pi-search" />
          <InputText type="search" value={globalFilter} onChange={(e) => setGlobalFilter(e.target.value)} placeholder="Global Search" />
      </span>
  </div>
);

return (
  <>
              
  

        <div className="datatable-filter-demo">
        <Toast ref={toast} />
            <div className="card">
                <DataTable value={companies} header={header}  paginator rows={50} className="p-datatable-customers"
                    globalFilter={globalFilter} emptyMessage="No customers found." selectionMode="single" 
                    selection={selectedProduct1} onSelectionChange={e => setSelectedProduct1(e.value)} dataKey="id"
                    onRowSelect={onRowSelect} >
                    <Column field="id" header="Id" body={Companyidtemp} />
                    
                    <Column field="name" header="Name" body={Companynametemp} />
                </DataTable>
            </div>
        </div>
     
        
  

  </>
  )
}

const AppFrame = styled.div`
  text-align: center;
  width:100%;
  
`;
export default Detail;
