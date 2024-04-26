#pragma once

#include <Disks/ObjectStorages/IMetadataOperation.h>

/// TODO: rename to MetadataStorageTransactionState.
#include <Disks/ObjectStorages/MetadataStorageTransactionState.h>

/**
 * Implementations for transactional operations with metadata used by MetadataStorageFromDisk
 * and MetadataStorageFromPlainObjectStorage.
 */

namespace DB
{

class MetadataOperationsHolder
{
private:
    std::vector<MetadataOperationPtr> operations;
    MetadataStorageTransactionState state{MetadataStorageTransactionState::PREPARING};

    void rollback(size_t until_pos);

protected:
    void addOperation(MetadataOperationPtr && operation);
    void commitImpl(SharedMutex & metadata_mutex);
};

}
