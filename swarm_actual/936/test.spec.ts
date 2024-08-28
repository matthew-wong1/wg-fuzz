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
    const array0 = new Float32Array([0.0, -0.5, -1.0, -0.75, -0.75, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, -0.5, -1.0, -0.5, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, -0.75, -0.75, 1.0, 1.0, 0.0, -0.5, 0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 0.75, 0.25, -0.5, -0.25, 0.75, -0.5, 0.25, 0.25, -0.5, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -0.25, 0.5, 0.5, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, -0.75, -0.75, 0.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.75, 0.25, -1.0, 0.25, 0.75, 0.25, -0.75, 0.0, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 0.5, 0.5, -0.75, -1.0, -0.25, 0.0, ]);
    
    
    const array1 = new Float32Array([-0.75, 1.0, 0.0, -1.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.5, 0.0, 0.5, 0.0, 0.0, 0.0, 1.0, -0.75, -0.5, -0.25, 1.0, 0.5, -1.0, -0.75, -1.0, 0.25, -0.25, -0.75, 1.0, 0.25, -0.5, 1.0, -0.75, 0.75, -1.0, 0.5, -0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 0.0, 0.25, 1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 0.5, 0.0, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, -0.75, 0.25, -1.0, 0.25, -0.75, 0.25, -1.0, 0.75, -1.0, 0.0, 0.5, -0.5, 0.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, -0.5, 0.0, 0.5, 1.0, 0.75, 1.0, ]);
    const array2 = new Float32Array([-0.5, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.0, 0.0, 0.0, 1.0, 0.75, 0.25, -0.5, -1.0, -1.0, 0.5, 0.25, 0.5, 0.25, 1.0, -0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, 0.25, -0.5, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, -0.5, 0.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.0, 0.75, 0.25, 0.0, -1.0, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 0.0, 0.75, 1.0, -0.25, 0.5, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, -1.0, 0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, ]);
    const array3 = new Float32Array([0.5, 1.0, 0.5, -0.5, 0.25, 0.75, -0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, 0.5, -1.0, 1.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, -0.75, 0.75, -0.75, -0.25, 0.0, -1.0, -0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -0.25, 0.75, -0.5, 1.0, 0.25, -0.25, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, 0.75, -0.25, 0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.0, 0.75, -0.5, 0.75, -1.0, 0.75, -0.75, 0.0, -0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -0.5, -0.25, -0.25, -0.25, 1.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.25, 0.25, -0.5, 0.75, 0.5, 0.0, -1.0, 0.25, ]);
    const array4 = new Float32Array([-0.5, 0.0, -1.0, 0.25, -1.0, 0.5, 0.25, -0.75, -0.5, -0.5, 1.0, 0.0, 0.75, -0.25, 0.75, 0.75, 0.25, 1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 1.0, 0.25, 0.25, -0.25, 0.25, -0.25, -0.75, -0.25, -0.75, 0.5, -0.75, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 0.75, -1.0, 0.25, -1.0, 0.75, 0.5, -0.25, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.25, -1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.0, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, 0.0, -0.5, 0.0, 1.0, 0.5, 0.75, 0.5, 0.0, -1.0, 0.5, 0.0, -1.0, 1.0, 0.5, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array5 = new Float32Array([-1.0, 0.5, 1.0, 0.75, -0.75, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, 0.5, 1.0, 0.5, 0.25, -0.25, -0.5, -0.5, 0.0, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, -0.5, 0.75, 0.0, 0.25, -0.5, -0.5, 0.5, -0.25, 0.0, -0.75, 0.5, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.25, -0.75, -0.25, 0.25, 0.25, -0.5, -0.25, 0.25, -0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, -0.5, 0.25, -0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, 0.25, -0.5, 0.0, 0.75, -1.0, 0.0, 0.25, 0.75, -0.25, 0.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, 0.25, -1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer000 = command_encoder000.finish();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer002.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    buffer003.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer101.destroy()
    const command_buffer100 = command_encoder100.finish();
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer102.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array6 = new Float32Array([-0.5, 0.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.5, 0.5, 0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, -0.75, 0.25, -0.25, 0.5, 0.75, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, -0.75, -1.0, -0.75, 0.25, 1.0, -0.25, -0.25, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.5, 0.75, 0.25, -0.25, -1.0, -0.75, -0.75, 0.75, -0.5, 0.25, -0.5, -0.75, -0.75, -0.25, -0.5, -0.75, -0.5, -0.25, 0.25, -0.5, -0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, 0.75, 1.0, ]);
    command_encoder101.pushDebugGroup("mygroupmarker")
    buffer005.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    buffer004.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array7 = new Float32Array([0.75, 0.25, 1.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, 0.5, -0.75, 0.5, -0.75, 0.75, -0.25, -0.5, 0.75, 0.25, 0.25, 1.0, 1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.75, -0.75, -0.25, -1.0, 0.5, 0.25, 0.0, 0.75, 0.0, 0.0, -0.5, 0.0, 0.75, 0.5, 0.0, 0.75, -1.0, -0.75, -0.25, -0.75, ]);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder101.clearBuffer(buffer100);
    command_encoder004.pushDebugGroup("mygroupmarker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0020.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array8 = new Float32Array([-0.25, -0.25, -0.75, -0.75, -1.0, 1.0, 0.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, -1.0, -1.0, 0.75, 1.0, 0.5, 0.0, 0.75, -0.75, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -0.25, 0.75, -0.25, -0.5, -0.5, 0.0, 0.75, -0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.75, -1.0, -0.25, -0.5, -0.25, -1.0, 0.25, -0.25, 0.5, -0.25, -1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.75, 1.0, -0.5, 0.0, -0.75, -0.75, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 1.0, -0.75, 0.0, -0.75, 0.75, 0.75, 0.5, 0.25, 0.25, 0.25, 0.25, 0.75, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer001.destroy()
    
    
    buffer100.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer103.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer104.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder004.insertDebugMarker("mymarker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder004.insertDebugMarker("mymarker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0020.popDebugGroup()
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    buffer400.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    buffer106.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder402.insertDebugMarker("mymarker");
    const command_buffer104 = command_encoder104.finish();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer107.destroy()
    command_encoder402.insertDebugMarker("mymarker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    buffer006.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_buffer006 = command_encoder006.finish();
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder303.clearBuffer(buffer300);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    buffer302.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    buffer401.destroy()
    buffer105.destroy()
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0040.popDebugGroup()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder0050.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer006,
        0
    )
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder1010.popDebugGroup()
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    buffer300.destroy()
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder4010.insertDebugMarker("marker")
    buffer007.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    buffer108.destroy()
    compute_pass_encoder3020.insertDebugMarker("marker")
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    compute_pass_encoder0070.insertDebugMarker("marker")
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1020.popDebugGroup()
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer006,
        0
    )
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder4020.popDebugGroup()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const array9 = new Float32Array([-0.5, -0.75, 0.75, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.25, 0.0, 0.25, 0.25, 0.25, -0.5, 0.75, 0.0, 0.0, 0.0, 1.0, 0.0, 0.25, 0.5, -0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -0.5, 1.0, 0.5, 0.0, -1.0, 0.5, -0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 0.5, -0.75, 1.0, -0.25, 0.5, 0.75, 1.0, -1.0, 0.0, -0.5, -1.0, 1.0, -0.25, -0.5, -0.25, -1.0, 0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.75, 0.75, 0.75, -0.5, 0.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -1.0, -1.0, 0.25, -1.0, -0.25, -0.25, -0.25, -0.75, -0.75, 1.0, -0.5, -0.75, ]);
    buffer303.destroy()
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder0070.popDebugGroup()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1010.popDebugGroup()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    const array10 = new Float32Array([0.5, 0.75, -0.75, 0.75, -0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -0.25, 0.75, 1.0, -0.75, 0.25, -0.75, -0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -1.0, 0.5, 0.25, -0.75, 1.0, 0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -0.5, 0.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.75, 0.0, -1.0, -1.0, 0.75, -1.0, 1.0, -0.25, 1.0, 1.0, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, -0.75, -0.75, 0.0, -0.75, 0.5, 1.0, 0.0, 0.75, 0.5, -0.5, 0.75, 0.75, ]);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer1011.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder103.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0080.popDebugGroup()
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder3030.popDebugGroup()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_buffer304 = command_encoder304.finish();
    command_encoder009.pushDebugGroup("mygroupmarker")
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder0080.insertDebugMarker("marker")
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder200.insertDebugMarker("mymarker");
    buffer301.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder0010.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    command_encoder0011.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder0011.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    compute_pass_encoder4020.popDebugGroup()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder0010.resolveQuerySet(
        query005,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    command_encoder305.insertDebugMarker("mymarker");
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder0012.resolveQuerySet(
        query002,
        0,
        32,
        buffer006,
        0
    )
    const command_buffer0012 = command_encoder0012.finish();
    const array11 = new Float32Array([0.0, 0.25, 0.0, 0.0, 1.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.75, 0.5, -0.75, -0.25, -0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, 0.0, 0.75, 0.5, -0.5, 0.75, -0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, -1.0, 0.75, -0.75, -0.25, 0.25, -0.5, 0.75, 0.5, 0.0, -0.25, 1.0, -0.5, 0.5, 0.0, -1.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, -0.75, -0.5, -0.25, 0.75, -0.75, 0.25, ]);
    command_encoder305.insertDebugMarker("mymarker");
    compute_pass_encoder0080.popDebugGroup()
    command_encoder404.pushDebugGroup("mygroupmarker")
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    buffer1012.destroy()
    buffer304.destroy()
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder3020.popDebugGroup()
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4040.pushDebugGroup("group_marker")
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder0050.popDebugGroup()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
    command_encoder105.insertDebugMarker("mymarker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const array12 = new Float32Array([0.5, 0.5, 0.25, 0.25, -1.0, -0.75, -1.0, 0.75, -1.0, -0.25, -1.0, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 0.5, 0.25, -0.5, 0.0, -0.25, -1.0, 0.0, 0.0, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.5, -0.75, -0.25, 0.0, 0.0, 0.75, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 1.0, -0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 0.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, -0.25, 0.5, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.5, 0.0, 0.25, -0.75, -0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 0.0, 0.25, 0.75, 0.75, 0.25, 0.0, 0.75, ]);
    compute_pass_encoder4020.popDebugGroup()
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    compute_pass_encoder1020.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    buffer109.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0090.insertDebugMarker("marker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer009.destroy()
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    buffer601.destroy()
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder00110.insertDebugMarker("marker")
    compute_pass_encoder00100.pushDebugGroup("group_marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder0040.popDebugGroup()
    buffer200.destroy()
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    command_encoder105.pushDebugGroup("mygroupmarker")
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    buffer008.destroy()
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder00100.insertDebugMarker("marker")
    const array13 = new Float32Array([-1.0, 0.5, -0.75, 1.0, 0.75, -0.5, -0.75, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 0.75, 0.25, 0.0, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, -0.75, 0.0, -1.0, -0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 0.75, 1.0, -0.25, 0.75, 1.0, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.25, -0.75, -1.0, -0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, 0.25, -0.5, 0.5, -1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.25, -0.75, -1.0, -1.0, 0.25, 0.0, 1.0, -0.25, 1.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.25, ]);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder3020.popDebugGroup()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer700.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer602.destroy()
    const command_buffer700 = command_encoder700.finish();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder00100.insertDebugMarker("marker")
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    command_encoder306.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const command_buffer106 = command_encoder106.finish();
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    buffer701.destroy()
    buffer1014.destroy()
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    buffer201.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0080.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0070.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer1010.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3050.insertDebugMarker("marker")
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0070.popDebugGroup()
    compute_pass_encoder00100.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder4040.popDebugGroup()
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
}