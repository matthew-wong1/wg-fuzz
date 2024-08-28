export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const array0 = new Float32Array([0.0, 0.5, 0.5, 1.0, 0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 0.25, -0.5, 0.25, 1.0, 0.75, -0.25, 0.25, 0.0, 0.5, 1.0, 0.75, -1.0, -0.75, 1.0, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.25, -1.0, 0.25, -0.75, 0.0, 0.75, -1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.25, 0.25, -1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 0.0, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 0.5, -0.25, -0.25, -1.0, -0.25, 0.25, 0.5, -0.25, 0.75, 0.25, -0.25, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.75, -1.0, 0.5, 1.0, -0.5, 0.25, -0.5, -0.25, -1.0, -0.5, 0.0, -1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array1 = new Float32Array([0.0, 0.25, 0.75, 0.5, -0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -1.0, 0.5, -0.5, -1.0, -0.75, -1.0, -1.0, 0.25, -0.25, 0.75, -0.5, -0.75, -0.5, 0.5, -1.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.25, 1.0, -0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 0.25, 1.0, 0.75, -0.5, 0.5, -0.5, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.5, 0.75, -1.0, 0.5, 0.5, -0.5, -0.75, 0.25, 0.0, ]);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([0.5, -0.75, 0.25, 0.0, -0.25, 0.0, 1.0, 0.75, -1.0, -0.25, -0.25, 0.75, -0.5, 1.0, 0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.25, -0.75, -1.0, -0.25, 0.5, 0.75, -0.25, 0.5, 0.75, 1.0, -0.75, 1.0, -1.0, 1.0, -0.75, -1.0, -0.25, 0.75, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, 0.25, 0.0, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 0.75, 0.25, 0.25, -1.0, 0.25, -1.0, 0.0, 1.0, -0.75, -0.5, 0.0, -0.75, 1.0, 0.5, -0.5, 0.75, 0.75, 0.25, 0.75, -0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, -1.0, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    query000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array3 = new Float32Array([0.0, 1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 1.0, 0.25, -0.25, -0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.5, -0.25, 0.75, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, 1.0, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 0.5, 0.25, -0.75, 0.0, 1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, 1.0, 0.5, 0.5, -1.0, 0.5, 1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, -0.75, 1.0, 0.75, 0.5, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, -0.25, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query000.destroy()
    query002.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query002.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.pushErrorScope("internal");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query203.destroy()
    query200.destroy()
    query001.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query202.destroy()
    query002.destroy()
    query204.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query203.destroy()
    query202.destroy()
    const array4 = new Float32Array([-0.25, 0.5, -0.5, -0.5, 1.0, -0.25, 0.25, -0.25, 0.0, -0.5, 0.25, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, 1.0, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, 0.0, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 0.0, 1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 0.5, -0.75, -0.25, 0.25, 0.75, 0.0, 1.0, -0.75, 0.75, 0.0, 1.0, 0.5, 1.0, 0.0, 0.0, 0.0, -0.25, -0.25, -1.0, 1.0, -0.75, 0.0, -0.5, -0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.0, -0.75, -0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query203.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    query002.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query204.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.5, 0.25, -0.5, -0.5, 1.0, -0.75, 0.0, -0.5, 0.0, -0.5, -0.5, -0.75, 1.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.75, -1.0, 1.0, 1.0, 0.0, 0.75, -0.75, 0.75, 0.75, 0.5, -1.0, 1.0, -0.5, -1.0, 0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, 1.0, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 1.0, 1.0, -1.0, 0.5, -0.25, 0.75, -1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, -0.5, -0.75, -1.0, 1.0, ]);
    query003.destroy()
    query004.destroy()
    query203.destroy()
    device10.pushErrorScope("validation");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query005.destroy()
    const array6 = new Float32Array([0.0, -1.0, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.25, -1.0, -1.0, 1.0, 0.25, 1.0, 0.0, -1.0, 0.75, 1.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.0, -0.25, -1.0, -1.0, 1.0, 0.25, 1.0, -0.25, -0.75, 0.25, -0.25, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.5, -0.75, 0.75, 0.0, -0.75, 0.0, 0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.0, -1.0, -0.25, -0.75, 1.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.75, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, -0.75, 0.25, ]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query002.destroy()
    query200.destroy()
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query203.destroy()
    query205.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query203.destroy()
    query002.destroy()
    query100.destroy()
    
    query204.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query300.destroy()
    query000.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    query600.destroy()
    query203.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    query002.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query600.destroy()
    query004.destroy()
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query007.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query102.destroy()
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.pushErrorScope("internal");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query102.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query104.destroy()
    query003.destroy()
    query203.destroy()
    query002.destroy()
    
    query204.destroy()
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query008.destroy()
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query004.destroy()
    
    query104.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query000.destroy()
    query101.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    query100.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query202.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    query103.destroy()
    query207.destroy()
    query008.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query003.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query400.destroy()
    device70.pushErrorScope("validation");
    
    query401.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query600.destroy()
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    query104.destroy()
    
    query103.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query205.destroy()
    query602.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query205.destroy()
    query005.destroy()
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    query005.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    query004.destroy()
    query201.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query001.destroy()
    query007.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query005.destroy()
    const array7 = new Float32Array([0.0, -0.75, 0.0, 0.25, 0.75, 0.25, 0.25, 0.5, -1.0, -0.75, -0.25, 0.25, 0.0, 0.25, 0.25, 1.0, 0.75, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.0, 0.75, 1.0, 0.25, 0.5, -0.25, 1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 0.75, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, -0.25, 1.0, -0.75, -1.0, -0.75, -0.25, 0.75, -0.75, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, -0.5, 0.75, 1.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, -0.5, -0.75, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, -0.5, 1.0, ]);
    query300.destroy()
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query102.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    query003.destroy()
    
    
    query100.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query202.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device60.pushErrorScope("validation");
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array8 = new Float32Array([-0.25, -0.75, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, -0.75, 0.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.0, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.5, -0.75, -0.25, -0.75, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, -1.0, 0.0, 0.5, 0.0, 0.75, -0.5, -0.5, -0.5, 0.0, -1.0, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, -1.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.75, 1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.75, -0.25, -0.75, 0.0, 0.0, 0.25, -0.25, 0.0, 0.5, 0.25, -1.0, -0.75, -1.0, 0.5, 0.75, -1.0, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, ]);
    query207.destroy()
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    query601.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query004.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query104.destroy()
    
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    
    query206.destroy()
    query001.destroy()
    query201.destroy()
    query004.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query201.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    query601.destroy()
    query201.destroy()
    query006.destroy()
    query205.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query008.destroy()
    query401.destroy()
    query602.destroy()
    query200.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query700.destroy()
    query003.destroy()
    query002.destroy()
    query401.destroy()
    query102.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    query105.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    query102.destroy()
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query600.destroy()
    query008.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.75, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, -0.25, 0.25, 1.0, 0.25, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, -1.0, -1.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, -0.25, -0.75, -1.0, -0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, -1.0, -1.0, -0.25, -0.25, 1.0, 0.5, 0.0, 0.25, 0.25, 0.5, 0.75, 0.75, -0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -0.75, 1.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.25, 1.0, -0.25, -0.5, 0.75, -0.75, 1.0, 0.0, 1.0, 0.0, -0.25, 1.0, -0.25, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, 0.75, 0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -0.75, -0.5, -1.0, 1.0, -0.75, -1.0, 0.25, 0.75, ]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query400.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query208.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query001.destroy()
    query200.destroy()
    query008.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    query202.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query305.destroy()
    query106.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query005.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query400.destroy()
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query002.destroy()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    
    
    query009.destroy()
    query203.destroy()
    query008.destroy()
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    query001.destroy()
    query001.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query300.destroy()
    query104.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    query004.destroy()
    query104.destroy()
    query208.destroy()
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query701.destroy()
    
    query001.destroy()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query301.destroy()
    
    query200.destroy()
    query208.destroy()
    query101.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    query105.destroy()
    
    query202.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query306.destroy()
    query301.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query702.destroy()
    
    query103.destroy()
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query201.destroy()
    query305.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query204.destroy()
    query208.destroy()
    query300.destroy()
    query208.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    query107.destroy()
    query000.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    query404.destroy()
    query006.destroy()
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query201.destroy()
    query106.destroy()
    query203.destroy()
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query601.destroy()
    query200.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.pushErrorScope("out-of-memory");
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    query103.destroy()
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const array10 = new Float32Array([1.0, 1.0, -0.25, 0.5, 0.5, -1.0, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.75, -0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, -0.5, 0.5, 1.0, 1.0, -1.0, -1.0, -0.5, 0.5, -1.0, 0.5, 0.0, 1.0, -0.75, -0.5, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.25, -0.75, 0.25, 0.25, -0.25, -0.5, -0.5, 0.0, 1.0, -0.5, -0.75, 0.5, 1.0, 0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, -0.5, -0.5, 0.5, -1.0, -0.75, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -1.0, -0.25, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 0.0, 0.5, -0.75, 0.5, -0.5, 0.0, -0.5, ]);
    query702.destroy()
    
    query602.destroy()
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    query106.destroy()
    query003.destroy()
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    query102.destroy()
    
    query008.destroy()
    query301.destroy()
    
    query002.destroy()
    query000.destroy()
    query002.destroy()
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    query004.destroy()
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query003.destroy()
    
    query209.destroy()
    
    
    query701.destroy()
    query2010.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    query005.destroy()
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    query202.destroy()
    query009.destroy()
    query305.destroy()
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    query009.destroy()
    query009.destroy()
    query404.destroy()
    const array11 = new Float32Array([0.25, 0.25, -0.75, 0.75, -0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.5, 0.75, -1.0, 0.0, 0.75, -1.0, -0.5, 0.5, 0.75, -0.75, 0.5, -0.5, 0.0, 0.25, -0.75, 0.75, -0.5, -1.0, 0.5, -1.0, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.75, -0.5, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.75, -1.0, -0.5, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 0.0, 0.75, -1.0, 1.0, -0.25, 0.75, -0.75, -0.25, 1.0, 1.0, 1.0, -0.25, 0.5, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.0, 0.25, -0.5, 1.0, ]);
    query300.destroy()
    
    query402.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query209.destroy()
    query307.destroy()
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    query0010.destroy()
    query203.destroy()
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    query003.destroy()
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query200.destroy()
    query604.destroy()
    query400.destroy()
    const array12 = new Float32Array([-0.5, -0.5, 0.5, 0.0, 0.75, 0.0, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, -0.25, -1.0, -1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.25, 0.25, -0.5, -1.0, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 0.0, 1.0, -0.25, 0.25, -1.0, -0.5, 1.0, -0.5, 1.0, -0.25, 1.0, 0.25, -1.0, -0.5, 0.0, 0.75, -0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.75, -0.75, 0.75, 0.0, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -0.5, 0.0, -1.0, 0.25, 0.75, 0.0, -0.75, 0.75, 0.0, -0.75, -0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -0.75, 0.75, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, -0.25, 0.5, -0.75, -0.5, -1.0, -0.75, -0.75, 1.0, -0.75, -0.5, -1.0, ]);
    query003.destroy()
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query104.destroy()
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    query008.destroy()
    query404.destroy()
    query101.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    query602.destroy()
    query307.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
}