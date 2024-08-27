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
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([-0.25, 1.0, 0.0, 0.5, 0.0, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 1.0, 0.25, 0.0, -0.75, 0.75, -0.75, 0.25, 0.75, 0.25, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -0.25, 0.75, -1.0, 0.0, 0.75, 0.75, -0.5, -0.25, 0.25, -0.25, 1.0, 0.0, -0.25, -0.25, -0.5, 0.75, 1.0, 0.75, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -0.75, -0.5, 0.75, -1.0, -0.75, 0.0, 0.25, -1.0, 0.75, -1.0, 0.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, 0.75, -0.5, 1.0, -1.0, ]);
    const array1 = new Float32Array([0.0, 0.0, -1.0, -0.75, 1.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, -1.0, 1.0, -1.0, 0.75, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, -0.75, 0.25, -0.75, -0.5, 0.75, -0.25, -0.75, -0.25, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, -0.5, -0.25, -0.25, 0.25, -0.75, 0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.75, 0.75, -0.25, -0.5, -0.75, 0.75, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, 0.0, -1.0, 0.0, 1.0, 0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.pushErrorScope("internal");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array2 = new Float32Array([-1.0, 0.25, 0.5, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -1.0, 0.5, -0.75, -0.25, -0.5, -0.75, 0.75, -1.0, -0.5, -0.5, -1.0, 0.75, 0.75, 0.0, 0.0, -0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.75, 0.75, 1.0, -0.75, 0.75, 0.25, 1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.75, 1.0, -0.25, -1.0, 0.25, -1.0, -0.25, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, -0.5, 1.0, -0.75, 1.0, 1.0, -0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 1.0, 0.0, 0.25, -0.25, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, -0.25, 0.0, 1.0, -0.75, -0.75, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, 1.0, -1.0, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const array3 = new Float32Array([0.75, -0.5, 0.75, -0.25, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, 0.5, 0.75, -0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.0, -0.75, -0.5, -0.5, -0.75, 0.25, -0.75, 0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.0, -0.25, -1.0, 0.75, -0.25, 0.5, -0.5, 0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 1.0, 0.5, 0.75, 1.0, 0.25, 0.5, 1.0, 0.5, -0.25, 0.5, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, -1.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.25, 1.0, 1.0, -1.0, 1.0, 1.0, 0.5, -1.0, 1.0, 0.25, -1.0, 0.0, 0.25, 0.25, 0.0, 0.0, -1.0, -1.0, 1.0, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, -0.25, -0.75, 0.25, ]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.destroy();
    device20.pushErrorScope("validation");
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer201 = command_encoder201.finish();
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([command_buffer201, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array4 = new Float32Array([0.5, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, -0.25, 0.25, 0.5, 0.75, 0.75, -1.0, -1.0, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 0.0, -0.75, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.75, 1.0, -1.0, 0.0, -0.5, 0.25, 0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 0.25, 0.75, ]);
    command_encoder203.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    command_encoder203.insertDebugMarker("mymarker");
    query201.destroy()
    query200.destroy()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    command_encoder202.clearBuffer(buffer203);
    query204.destroy()
    buffer203.destroy()
    query202.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    query201.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const array5 = new Float32Array([0.25, -0.75, -0.25, -0.75, 0.0, 0.0, 0.75, -0.75, -0.5, 0.75, 0.75, 1.0, -0.5, -1.0, -1.0, 1.0, -0.75, 0.5, 0.75, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, 0.0, 0.75, 0.5, 1.0, -0.75, 0.5, 0.5, 0.75, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.0, 0.25, 0.25, -0.25, -0.5, 0.75, 0.25, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 1.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.75, 0.75, 0.5, -0.25, 0.0, -0.5, 0.0, 0.75, -0.25, -0.25, -0.25, -0.5, -0.75, 0.0, -0.75, 0.0, 0.75, -0.5, -0.5, -1.0, -0.25, 0.25, 1.0, 1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 0.0, ]);
    buffer205.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer202.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer400 = command_encoder400.finish();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer204,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    
    
    query400.destroy()
    query203.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer204.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer208,
        0
    )
    buffer206.destroy()
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    
    
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const array6 = new Float32Array([-0.5, -0.75, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 1.0, 0.0, 0.5, -0.75, -0.25, -1.0, 0.0, -0.75, 0.25, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, 0.0, 0.75, 0.0, 0.0, -0.5, 1.0, -0.5, 0.0, 0.25, -0.75, 0.25, 0.75, 0.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.0, 0.0, 0.5, -0.5, -0.75, -0.25, 0.5, 0.5, 0.75, 1.0, 1.0, 0.75, -0.75, -0.75, -0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, 0.75, 1.0, 1.0, -1.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.0, 0.75, 0.5, 0.0, 0.25, -1.0, 0.75, 0.0, 0.25, 1.0, ]);
    buffer208.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder201.insertDebugMarker("marker");
    device30.queue.submit([]);
    const array7 = new Float32Array([0.75, -0.75, -1.0, -0.5, 0.75, 0.25, 0.75, 0.0, 0.25, -0.5, -0.25, -0.5, 1.0, 0.25, 0.25, -1.0, 0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 0.75, -0.5, -1.0, 1.0, -0.25, -0.75, -0.25, 1.0, -0.5, 0.5, -0.5, 1.0, 0.75, 0.0, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, -1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.25, 1.0, -0.5, 0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.5, -0.5, 0.25, 0.5, 0.75, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, -0.25, 0.25, -1.0, -1.0, -0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -0.75, 0.25, -0.25, -0.5, 0.5, -1.0, -0.75, -0.75, -0.75, -0.5, 1.0, 0.0, 1.0, 0.5, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, -0.5, ]);
    
    
    query203.destroy()
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array8 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.5, 0.25, 0.5, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, 0.25, -0.25, -1.0, 1.0, 1.0, 0.75, -0.5, 0.5, 0.75, 0.75, 0.0, 0.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.5, -0.25, 1.0, -1.0, 0.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.5, 0.5, 0.5, 0.75, -1.0, -0.25, 0.75, 0.25, -0.75, 0.0, 0.5, -0.75, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.5, 1.0, -0.25, -0.25, -0.75, -0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 0.75, -0.75, -0.5, 0.25, -0.25, 0.75, 1.0, 0.0, -0.5, -0.5, 0.25, -0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.25, 0.5, 1.0, ]);
    buffer207.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("validation");
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.pushErrorScope("validation");
    device00.pushErrorScope("out-of-memory");
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query202.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer206,
        0
    )
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer208,
        0
    )
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer204,
        0
    )
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    
    query201.destroy()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    command_encoder204.popDebugGroup()
    buffer400.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer301 = command_encoder301.finish();
    device40.queue.submit([]);
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer204,
        0
    )
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query205.destroy()
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer208,
        0
    )
    query200.destroy()
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer204,
        0,
        400
    );
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device20.queue.submit([]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder302.insertDebugMarker("mymarker");
    query400.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query205.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.submit([command_buffer301, ]);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer208,
        0
    )
    buffer401.destroy()
    compute_pass_encoder2030.popDebugGroup()
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_buffer302 = command_encoder302.finish();
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder204.resolveQuerySet(
        query205,
        0,
        32,
        buffer204,
        0
    )
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    query201.destroy()
    device20.queue.submit([command_buffer201, ]);
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    query400.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const command_buffer204 = command_encoder204.finish();
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder202.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    buffer200.destroy()
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query300.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer204,
        0
    )
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    query204.destroy()
    command_encoder300.popDebugGroup()
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    command_encoder202.popDebugGroup()
    
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    query204.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    query204.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer402.destroy()
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder2000.popDebugGroup()
    const array9 = new Float32Array([0.0, 0.5, 1.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.75, -1.0, -0.5, -0.75, 0.0, 0.75, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -1.0, -1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, 0.0, -0.75, 1.0, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 0.25, 0.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.75, -0.25, 0.75, 0.75, 0.75, -0.75, -1.0, 0.25, 0.5, -0.25, -0.25, 0.5, -1.0, 0.0, 0.5, 0.5, -1.0, 0.5, -0.5, -0.5, 1.0, -0.75, -0.75, -0.75, 0.5, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, -1.0, -0.5, 0.25, 0.5, ]);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer206,
        0
    )
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query400.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device30.queue.submit([command_buffer302, ]);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query401.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query205.destroy()
    
    buffer000.destroy()
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer208,
        0
    )
    render_bundle_encoder203.insertDebugMarker("marker");
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder203.copyBufferToBuffer(
        buffer209,
        0,
        buffer2011,
        0,
        400
    );
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer208,
        0
    )
    
    {
        await buffer2011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2011.unmap();
        console.log(new Float32Array(data));
    }
    const array10 = new Float32Array([0.0, 0.75, 0.25, -0.75, -0.5, 0.75, -0.75, -1.0, 1.0, 0.25, -0.75, -0.75, 0.25, -1.0, 0.25, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.0, 0.5, 1.0, 1.0, 0.75, -0.25, -0.25, -0.5, -0.25, 0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 0.5, 0.25, 1.0, 1.0, 0.5, -1.0, -0.25, 0.0, -1.0, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, -0.75, -0.25, 0.75, 0.5, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, 0.75, -1.0, 0.75, -0.5, 0.75, -0.5, 0.0, 0.5, -0.25, -0.5, 0.75, -1.0, -1.0, -0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 0.5, 1.0, 1.0, 0.75, -0.5, -0.25, -0.5, 1.0, -1.0, ]);
    command_encoder205.copyBufferToBuffer(
        buffer208,
        0,
        buffer2011,
        0,
        400
    );
    query204.destroy()
    query401.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    query400.destroy()
    
    buffer300.destroy()
    command_encoder205.resolveQuerySet(
        query203,
        0,
        32,
        buffer208,
        0
    )
    query205.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder203.insertDebugMarker("marker");
    command_encoder205.clearBuffer(buffer209);
    
    command_encoder202.clearBuffer(buffer209);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    buffer209.destroy()
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    query204.destroy()
    const command_buffer205 = command_encoder205.finish();
    
    command_encoder202.copyBufferToBuffer(
        buffer207,
        0,
        buffer209,
        0,
        400
    );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder401.insertDebugMarker("mymarker");
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer2010,
        0
    )
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array11 = new Float32Array([0.5, -0.75, 0.5, -0.5, -1.0, 0.5, 0.75, -0.5, 0.75, 0.25, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, -0.75, -0.75, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.25, -0.25, 0.25, 0.0, 0.5, -0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.5, -0.75, -0.75, 0.25, -1.0, 1.0, 0.25, 0.5, -1.0, -0.25, -1.0, -0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 0.0, -0.5, 0.75, 0.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -0.5, 0.0, 0.25, 1.0, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, ]);
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer208,
        0
    )
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    query401.destroy()
    compute_pass_encoder2030.popDebugGroup()
    query201.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query204.destroy()
    buffer208.destroy()
    command_encoder401.clearBuffer(buffer403);
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    buffer201.destroy()
    buffer404.destroy()
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    query201.destroy()
    render_bundle_encoder203.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder202.copyBufferToBuffer(
        buffer2011,
        0,
        buffer2011,
        0,
        400
    );
    command_encoder401.copyBufferToBuffer(
        buffer403,
        0,
        buffer403,
        0,
        400
    );
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query204.destroy()
    compute_pass_encoder3040.popDebugGroup()
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    {
        await buffer2011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2011.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder200.copyBufferToBuffer(
        buffer209,
        0,
        buffer2011,
        0,
        400
    );
    
    command_encoder206.copyBufferToBuffer(
        buffer2012,
        0,
        buffer206,
        0,
        400
    );
    compute_pass_encoder3030.popDebugGroup()
    command_encoder206.clearBuffer(buffer2011);
    command_encoder401.clearBuffer(buffer403);
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    device30.destroy();
    
    query202.destroy()
    command_encoder206.clearBuffer(buffer200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer2013,
        0
    )
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    buffer2010.destroy()
    command_encoder206.clearBuffer(buffer2013);
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout206]
    });
    device20.queue.submit([command_buffer205, ]);
    buffer2012.destroy()
    command_encoder206.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2030.popDebugGroup()
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout206]
    });
    query205.destroy()
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout204]
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout203]
    });
    const array12 = new Float32Array([-0.75, -0.5, 0.25, 1.0, 0.5, -0.75, 0.25, 0.75, 0.5, 0.75, -0.75, 0.75, 0.75, -0.75, 0.25, -0.75, 1.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.75, 0.75, 0.0, -0.75, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, 0.25, -1.0, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, 1.0, 1.0, -0.75, 0.75, -1.0, -1.0, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, -0.5, -1.0, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 0.5, 0.75, 0.0, -0.75, 0.25, 0.5, -0.25, 1.0, 0.0, -0.75, -1.0, 1.0, 0.0, -0.25, 1.0, 0.25, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.5, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder401.copyBufferToBuffer(
        buffer400,
        0,
        buffer403,
        0,
        400
    );
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer2011,
        0
    )
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout204]
    });
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    buffer2010.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    query402.destroy()
    query200.destroy()
    
    device40.queue.submit([command_buffer400, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    command_encoder401.clearBuffer(buffer403);
    buffer201.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.submit([command_buffer201, ]);
    
    buffer404.destroy()
    
    query201.destroy()
    compute_pass_encoder2030.popDebugGroup()
    command_encoder401.popDebugGroup()
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([]);
    const command_buffer200 = command_encoder200.finish();
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    const command_buffer300 = command_encoder300.finish();
    device20.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2060.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder1001.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    command_encoder206.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4020.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.popDebugGroup()
}