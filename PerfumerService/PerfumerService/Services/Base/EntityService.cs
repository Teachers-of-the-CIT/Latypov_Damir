using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace PerfumerService.Services.Base
{
    public abstract class EntityService<TEntity> where TEntity : Entity
    {
        protected readonly PerfumerEntities _context;
        protected readonly DbSet<TEntity> _dbSet;

        public EntityService(PerfumerEntities context)
        {
            _context = context;
            _dbSet = context.Set<TEntity>();
        }

        public TEntity Create(TEntity entity)
        {
            _dbSet.Add(entity);

            _context.SaveChanges();

            return entity;
        }

        public IEnumerable<TEntity> Read()
        {
            return _dbSet.AsEnumerable();
        }

        public TEntity Update(TEntity entity)
        {
            if (_dbSet.FirstOrDefault(element => element.Id == entity.Id) == null)
                return null;

            _context.Entry(entity).State = EntityState.Modified;

            _context.SaveChanges();

            return entity;
        }

        public bool Remove(TEntity entity)
        {
            if (_dbSet.FirstOrDefault(element => element.Id == entity.Id) == null)
                return false;

            _dbSet.Remove(entity);

            _context.SaveChanges();

            return true;
        }
    }
}
