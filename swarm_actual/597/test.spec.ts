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
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array0 = new Float32Array([-0.5, -0.75, -1.0, 1.0, 0.25, 0.5, -0.5, -0.5, -1.0, 0.75, -0.75, 0.25, 0.0, 0.25, 1.0, 0.75, -0.5, 1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.5, 1.0, -1.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, 0.75, 1.0, -0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.75, -0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, -0.5, -0.25, 0.25, -0.75, 1.0, -0.25, -0.5, -1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, 0.75, 0.25, 1.0, -0.75, 1.0, 1.0, 0.25, 0.75, -1.0, 0.25, -0.25, -0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, 0.0, 1.0, -0.25, -0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, ]);
    const array1 = new Float32Array([-0.25, -1.0, -1.0, -0.75, -0.75, 0.25, -0.75, 0.25, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, -1.0, 0.25, 0.25, -0.5, 1.0, -0.5, -0.5, -0.75, -0.5, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.5, 0.25, -1.0, -0.5, 0.5, 0.25, -1.0, -0.25, 0.5, -0.5, 0.5, -0.5, -0.75, -0.75, 0.0, 0.5, 1.0, 1.0, -0.25, -1.0, 0.25, 0.75, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, -1.0, -0.5, 1.0, -0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, 0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    device20.destroy();
    device00.destroy();
    
    const array2 = new Float32Array([0.25, -1.0, 0.0, 0.25, 1.0, 1.0, 0.25, 0.75, 0.0, 0.75, 0.75, 0.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, -0.5, 0.5, -0.5, 0.5, 0.0, 0.5, -0.75, -0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, 0.5, 0.5, 0.75, 1.0, -0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, -1.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.25, -1.0, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.0, -0.25, -0.25, 0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 1.0, 0.0, 1.0, -0.75, 0.5, 0.75, 1.0, 1.0, -0.5, 0.5, ]);
    
    
    const array3 = new Float32Array([-0.25, -0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.25, 0.25, 0.75, 0.5, 0.25, 0.0, 0.0, -0.5, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, -0.75, -0.5, -0.75, -0.5, -1.0, 1.0, 0.25, 0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 0.75, 0.5, 1.0, -0.5, -0.75, 0.0, 0.5, 0.5, 0.0, -0.25, 0.0, 0.25, -0.5, 0.25, 1.0, 0.25, 0.5, 0.0, -1.0, -1.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 1.0, 1.0, -0.25, -1.0, 0.5, -1.0, 0.25, 0.25, 0.5, -1.0, 0.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.5, -0.75, 1.0, -1.0, -1.0, 0.75, 0.25, ]);
    
    
    const array4 = new Float32Array([-0.5, -0.25, 0.25, 0.5, 0.75, -0.5, 0.75, 0.25, 0.25, 0.75, 1.0, 0.75, 0.5, -1.0, -0.25, 0.0, 0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, 0.75, 0.25, 0.5, -1.0, -0.5, 0.25, -0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -1.0, -1.0, 0.5, 0.5, -0.5, 0.75, 0.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -0.25, -0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, 0.25, -1.0, 1.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -0.25, 0.0, -0.75, -0.75, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array5 = new Float32Array([-0.75, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 0.75, 0.0, 0.75, 0.5, 0.5, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.5, -1.0, -0.5, -0.5, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 0.0, -0.25, -0.25, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 1.0, -0.75, 1.0, 0.25, -0.75, 0.5, 0.25, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, 0.5, -0.75, 1.0, 0.5, 0.0, 0.0, -0.5, 0.25, -1.0, 0.25, 0.25, 0.75, -1.0, 0.75, -1.0, -0.5, 0.0, 0.25, -0.5, 0.25, 0.25, 1.0, -0.5, ]);
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const array6 = new Float32Array([-1.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, 0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 1.0, -1.0, -0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, 0.25, 1.0, 0.5, 0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.75, -0.5, -0.5, -0.5, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.0, -0.25, -0.5, -1.0, 0.25, 1.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.0, 0.25, 0.5, -0.5, 0.0, -1.0, -1.0, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, -0.75, -0.5, -1.0, -0.25, -0.75, -0.5, -0.25, 0.25, ]);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query401.destroy()
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    
    device60.destroy();
    device70.destroy();
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    device80.destroy();
    
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    
    query401.destroy()
    
    
    
    query900.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    
    
    query900.destroy()
    
    
    
    query900.destroy()
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device100.destroy();
    
    
    
    
    
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    
    
    const array7 = new Float32Array([-0.25, -0.5, 0.0, 0.0, 0.0, 0.5, 0.25, -0.75, -0.25, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, -0.5, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, 0.5, -0.5, 0.0, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, -0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.75, -0.25, -0.25, 0.5, 0.0, 0.75, 0.25, 1.0, -0.5, -0.25, -0.25, -0.75, 0.0, -0.25, 0.25, -1.0, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, 0.0, -0.25, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, 0.25, 1.0, -0.75, 0.75, -1.0, -1.0, -0.75, -0.5, -0.75, -0.75, -0.5, 1.0, -0.75, -0.5, -0.75, ]);
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    const array8 = new Float32Array([0.0, 0.25, -1.0, 0.75, 0.75, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.5, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 0.0, 1.0, -0.5, -0.75, 0.0, -0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -0.75, -0.25, -0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.75, 0.0, -0.75, -1.0, 0.25, -0.5, -1.0, -0.25, 0.5, 1.0, 0.75, -0.75, 0.25, 0.0, 0.5, -0.5, -0.5, -0.75, 0.25, 0.0, 1.0, -0.25, 1.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.5, 0.5, 1.0, ]);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    const array9 = new Float32Array([-1.0, 0.0, 0.0, -0.25, -1.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, -0.25, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, -0.5, -0.75, 0.0, 0.75, 0.75, 1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 0.5, 0.0, 0.25, 1.0, -1.0, 1.0, 0.75, 0.25, 0.25, 0.5, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.75, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -0.5, 0.5, 0.75, 0.75, -0.5, 0.75, -1.0, -1.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 0.75, -1.0, -0.5, 0.25, -1.0, -0.25, -1.0, -1.0, -0.5, -0.25, 0.25, ]);
    
    
    
    
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device90.destroy();
    
    
    
    device110.destroy();
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    
    const array10 = new Float32Array([1.0, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, -0.5, 0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 0.0, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 1.0, 0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, 0.5, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, 0.5, 0.25, -0.25, -0.5, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, -0.25, -0.75, -0.75, 1.0, -0.5, 0.75, 0.25, 0.5, 1.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, -0.25, -0.25, -0.75, 0.25, 1.0, -0.25, -1.0, -1.0, -1.0, 0.5, 0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -0.25, -0.75, 1.0, 0.5, -0.75, 0.5, -1.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.5, ]);
    
    
    
    
    device120.destroy();
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.5, 0.75, -0.75, 0.0, -0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, -0.75, -0.75, -0.75, 0.25, -0.75, -0.25, -1.0, 0.0, -1.0, -0.75, -0.25, -0.75, -1.0, -0.5, -1.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, -0.75, 0.5, 1.0, -1.0, -0.5, 0.25, -0.25, -0.75, 0.5, 0.75, -0.75, -0.5, -0.5, 0.5, 0.75, -1.0, -0.75, 0.25, 0.5, -0.75, 0.75, -0.25, 1.0, 0.25, -0.75, 0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 0.25, -0.25, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, -0.25, 0.25, 0.5, 0.25, -1.0, 0.0, -0.5, 0.5, -1.0, -1.0, -0.5, 0.25, 0.5, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([0.75, 1.0, -1.0, -0.5, 0.0, 0.0, -0.25, 0.5, -0.25, -0.25, -0.75, 0.75, 0.5, 0.5, 0.25, 0.75, 0.0, 0.5, 0.25, -0.5, 0.75, -0.25, 1.0, -0.5, 0.0, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 1.0, 0.75, -1.0, 0.75, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, 0.0, -0.75, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.0, -0.25, -1.0, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 1.0, 0.5, 0.75, -0.75, 1.0, -0.25, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, -0.25, 0.75, -0.5, -0.75, -0.75, 0.5, -0.25, 0.0, -0.75, -0.25, 0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.25, 0.25, ]);
    
    
    const array13 = new Float32Array([-0.5, 0.0, -1.0, -0.25, -0.75, -0.5, -0.5, -0.25, 1.0, 1.0, -0.5, 0.75, -0.5, 0.75, -1.0, 0.75, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, -1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.75, 1.0, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, -1.0, 0.75, 0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -0.5, -1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.5, 0.5, -1.0, -0.75, 1.0, 0.0, 0.5, 0.5, -1.0, 0.25, 0.0, 0.0, -0.5, 0.75, 1.0, -0.75, -0.5, 0.25, 0.5, 1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -0.25, 1.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.75, 1.0, -0.5, 0.0, 0.0, -1.0, 1.0, -1.0, 1.0, 0.75, 0.75, 0.25, -0.5, -1.0, ]);
    
    
    
    
    
    
    
    
    
    const array14 = new Float32Array([-1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.5, -1.0, 0.0, -0.75, -0.5, 0.0, 0.5, -0.25, 0.0, 0.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.0, -1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -0.5, 0.25, 0.75, -1.0, 0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 0.0, -0.25, -0.75, 0.75, -0.25, 0.75, -0.5, 1.0, 0.25, -0.5, 0.75, -1.0, 1.0, 0.5, -0.25, -0.75, -1.0, -0.75, 0.0, -0.75, 0.25, 0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 0.25, -1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 1.0, -1.0, 0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, 0.5, -1.0, -0.75, 0.0, -0.5, -1.0, -0.75, ]);
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const array15 = new Float32Array([0.25, 0.25, -0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.5, 0.5, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, 0.5, 0.5, -0.75, 1.0, 0.5, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, -1.0, -0.5, 0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.25, 1.0, 0.0, 0.25, 0.5, 0.75, -0.5, 1.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.75, -0.75, 0.75, 0.0, 0.75, -1.0, -0.25, 1.0, 0.75, -0.5, -1.0, -0.5, -0.5, 1.0, -0.25, 0.75, 0.5, -0.75, -1.0, 1.0, 0.5, -0.25, 1.0, -0.75, -1.0, 1.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, 0.0, -1.0, 0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.0, -0.5, -1.0, ]);
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array16 = new Float32Array([0.25, 1.0, 1.0, 0.75, 0.25, 0.5, 1.0, 1.0, 1.0, -0.25, -0.5, -1.0, -0.75, 0.75, -0.25, 0.25, 0.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.25, -0.75, -1.0, 1.0, 0.0, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, -0.75, -1.0, 0.25, 0.75, -1.0, -0.5, 0.75, 0.5, -0.25, -0.25, -0.5, 0.75, -1.0, 0.25, 0.0, -0.75, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, 0.5, 0.25, -0.5, 0.75, -0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 0.0, -1.0, ]);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    query1400.destroy()
    
    query1400.destroy()
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    device140.destroy();
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    query1300.destroy()
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const array17 = new Float32Array([0.5, 0.5, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, 0.0, -0.25, 0.0, 0.25, -0.25, -1.0, -1.0, -0.5, -0.75, 0.75, -0.75, -0.75, 1.0, -0.25, -0.75, -0.25, -0.75, -0.25, -0.75, -1.0, -0.25, -0.5, -1.0, -1.0, 0.75, 0.5, 1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -0.25, 0.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.5, -0.25, -0.5, 0.75, 0.0, 0.0, -1.0, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 0.25, 0.75, 0.0, 1.0, 1.0, 1.0, 0.0, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, -0.25, -1.0, 0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 1.0, -0.5, -0.5, 0.75, 0.5, -0.75, 0.5, -0.5, 0.75, 0.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.0, ]);
    device160.destroy();
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query1300.destroy()
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    query1500.destroy()
    
    
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    
    
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    
    query1500.destroy()
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    
    
    
    query1302.destroy()
    query1500.destroy()
    
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    
    
    
    const query1303 = device130.createQuerySet({
        label: "query1303",
        type: "occlusion",
        count: 32,
    });
    device150.destroy();
    
    const array18 = new Float32Array([0.75, -1.0, -0.5, -0.75, 1.0, 1.0, -0.25, -0.25, 0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, -0.75, -1.0, 0.0, 1.0, -0.25, 1.0, -0.75, -1.0, 1.0, 0.75, -0.75, -0.75, -0.5, -1.0, 1.0, 0.25, -1.0, -1.0, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.25, -1.0, 0.0, 0.75, -0.75, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, -1.0, 0.25, 1.0, -0.75, -0.5, 0.0, -0.75, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -0.25, 0.0, -0.75, -0.25, 0.5, 0.5, -0.5, 1.0, 0.75, 1.0, 0.75, -0.5, 0.25, -0.75, -0.5, 0.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.5, ]);
    
    
    query1303.destroy()
    
    
    
    query1303.destroy()
    
    
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array19 = new Float32Array([-0.25, 0.5, 0.5, 0.5, 0.0, -0.5, 0.25, 0.0, 0.0, -0.5, -1.0, -1.0, -0.5, -0.75, -1.0, 1.0, -0.5, -0.25, -0.25, 0.75, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.75, -0.5, 0.0, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 0.75, 0.75, 0.5, 1.0, 0.5, 1.0, 0.25, 0.75, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.5, 0.5, -0.75, -0.75, 0.0, 0.0, 1.0, 0.0, 0.25, -0.75, -0.25, -1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -0.5, 0.25, 0.0, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, -0.5, 0.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.5, 0.25, 0.75, -1.0, -0.25, -1.0, 0.25, ]);
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query1300.destroy()
    
    
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer1304 = device130.createBuffer({
        label: "buffer1304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device130.destroy();
    
    
    
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    device170.destroy();
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    
    
    
    
    
    
    
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    device180.destroy();
    
    const array20 = new Float32Array([-0.25, 1.0, 0.25, -0.75, 0.5, -0.5, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, -0.25, -0.5, 0.0, -0.75, 0.0, 0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 0.5, -0.5, 0.0, 0.75, 0.25, -0.5, 0.25, 1.0, -0.5, 0.25, -1.0, -0.75, 0.5, -0.5, -0.5, 1.0, 0.25, 1.0, 0.0, -0.25, -0.75, -0.25, -0.25, -0.5, 1.0, -0.5, -0.25, 1.0, -1.0, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.75, 0.25, 0.0, 0.5, 1.0, 0.75, 0.0, -0.5, 0.5, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, -0.25, -0.75, -1.0, -0.25, 0.25, 0.0, -0.5, 0.75, -0.75, 0.0, 0.5, -1.0, -0.5, 0.0, 1.0, 1.0, 1.0, -0.5, -0.25, -0.75, 1.0, 1.0, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    
    
    const sampler2100 = device210.createSampler( { label: "sampler2100" } );
    device210.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device200.destroy();
    
    
    
}