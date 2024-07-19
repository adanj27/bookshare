import React, { useState } from 'react';
import '../styles/components/table.css';
import { EditIcon, TrashIcon } from '../assets/icons';
import Button from './ui/Button';
import DeleteModal from './DeleteModal';
import FormModalEdit from './FormModalEdit';

const Table = () => {
  const [deleteModalOpen, setDeleteModalOpen] = useState(false);
  const [openFormModal, setOpenFormModal] = useState(false);
  const data = [
    {
      id: 1,
      title: 'El nombre del viento',
      author: 'Patrick Rothfuss',
      genre: 'Fantasía',
      year: 2007,
    },
    {
      id: 2,
      title: '1984',
      author: 'George Orwell',
      genre: 'Distopía',
      year: 1949,
    },
    {
      id: 3,
      title: 'Cien años de soledad',
      author: 'Gabriel García Márquez',
      genre: 'Realismo mágico',
      year: 1967,
    },
  ];
  return (
    <>
      <table className='table-container-header'>
        <thead>
          <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>Género</th>
            <th>Año de Publicación</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          {data.map((book) => (
            <tr key={book.id}>
              <td>
                <a href={`detalles/${book.id}`}>{book.title}</a>
              </td>
              <td>{book.author}</td>
              <td>{book.genre}</td>
              <td>{book.year}</td>
              <td className='actions'>
                <Button variant='outline' size='icon'  onClick={() => setOpenFormModal(true)}>
                  <EditIcon />
                 
                </Button>
                <Button
                  variant='outline'
                  size='icon'
                  onClick={() => setDeleteModalOpen(true)}
                >
                  <TrashIcon />
                </Button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      {deleteModalOpen && (
        <DeleteModal onClose={() => setDeleteModalOpen(false)} />
      )}
       {openFormModal && <FormModalEdit onClose={() => setOpenFormModal(false)} />}
    </>
  );
};

export default Table;
