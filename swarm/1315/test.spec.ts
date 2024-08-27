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
    
    const array0 = new Float32Array([-0.25, -0.5, -0.25, -1.0, -0.5, -0.25, 0.25, 0.5, 1.0, -0.5, 0.75, 0.5, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, 0.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.0, -0.25, 1.0, -1.0, 0.25, -0.5, -0.75, 1.0, 0.25, -0.25, 1.0, 0.5, -0.25, 1.0, -0.75, 1.0, 0.5, 0.75, -0.75, -0.25, 0.0, -0.5, 0.5, 0.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -0.5, -0.75, 0.0, 0.25, 0.75, -1.0, -0.5, 1.0, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, 1.0, -0.25, -0.5, -1.0, 1.0, 0.5, 0.25, 1.0, -0.25, 0.0, -0.25, 1.0, 0.25, -1.0, 0.25, -0.75, -0.25, 0.5, -1.0, -1.0, 0.5, 0.25, -0.5, -0.25, 0.25, ]);
    const array1 = new Float32Array([1.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.5, -0.75, -1.0, -0.25, -0.75, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.0, 0.0, 1.0, -0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, -0.25, -1.0, -0.25, 0.0, -0.25, 0.25, -0.75, 0.5, 0.25, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, -0.75, -0.5, 1.0, 1.0, -0.5, -0.25, -0.5, 0.0, 0.25, 0.0, -0.5, -0.25, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, 0.25, -0.25, -0.5, 0.5, 0.0, 0.75, 0.0, -0.25, -0.5, -1.0, 0.25, -1.0, 0.75, 0.5, 0.25, -0.75, 0.25, -0.5, 0.5, 0.0, 1.0, 0.25, 0.75, 0.25, 0.75, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, -0.75, -0.5, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -0.75, -1.0, 0.5, -0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, 0.75, -0.5, 0.75, 0.25, 0.25, 0.0, 1.0, -0.25, 0.5, -0.25, 1.0, -0.25, 0.5, -0.75, -0.75, 0.25, 0.5, 1.0, 0.25, 0.75, -0.5, -0.5, 0.25, 0.0, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 0.5, -0.5, 0.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.25, 0.5, -0.5, 0.5, -1.0, -0.25, -0.25, 0.75, 1.0, 0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -0.25, 0.5, 1.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, -1.0, -0.5, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture200.destroy();
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    texture000.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    
    texture201.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.submit([]);
    device10.queue.submit([]);
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    command_encoder000.popDebugGroup()
    const array3 = new Float32Array([0.25, 0.0, 0.75, -0.75, -1.0, -0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, -0.25, 0.0, 0.5, 0.5, 0.0, -0.25, 0.25, -0.5, 0.5, -0.75, 1.0, 0.0, -0.5, 0.5, 0.25, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.25, 0.75, 0.0, -0.75, 0.5, -1.0, 0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 0.25, 0.75, 0.25, 0.25, -0.25, -1.0, 1.0, 0.5, 0.25, 0.25, -0.75, 0.25, 0.0, 0.25, -0.25, -0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.75, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const command_buffer100 = command_encoder100.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const command_buffer101 = command_encoder101.finish();
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    texture001.destroy();
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const array4 = new Float32Array([0.25, 0.5, 0.75, -0.25, 0.25, -0.75, 0.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, -0.5, -0.25, 0.25, -0.5, -0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 0.25, 0.0, 0.75, 0.0, -0.5, 0.5, -0.25, -0.75, 0.25, 0.0, -0.25, 0.25, 0.5, 0.25, 0.0, -1.0, -0.25, 0.0, 0.75, 1.0, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.75, 1.0, -1.0, 0.25, -0.5, -0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, -0.25, 1.0, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, -1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, 0.25, -0.5, 1.0, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.5, 0.5, 1.0, 0.0, ]);
    const command_buffer200 = command_encoder200.finish();
    buffer100.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder101.popDebugGroup();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    const array5 = new Float32Array([-0.5, 0.25, -0.5, 0.0, -0.75, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, -1.0, -1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, -0.75, -1.0, -0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, 1.0, -0.75, 0.25, -0.75, -0.25, 1.0, 0.0, 1.0, 0.0, 0.0, 0.5, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -0.5, 0.75, 1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, 0.5, -1.0, -0.5, -1.0, -0.75, -1.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, -0.75, -1.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.5, 0.25, 0.5, -0.25, 0.75, -0.25, -1.0, -0.75, ]);
    buffer102.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer000.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer200, ]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    texture300.destroy();
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer300.destroy()
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder4001.insertDebugMarker("marker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer400 = command_encoder400.finish();
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    compute_pass_encoder4001.insertDebugMarker("marker")
    const command_buffer005 = command_encoder005.finish();
    
    command_encoder002.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    texture004.destroy();
    
    command_encoder103.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    command_encoder103.insertDebugMarker("mymarker");
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    texture400.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array6 = new Float32Array([1.0, -0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, -0.5, -0.25, 0.5, 0.75, 0.25, -1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.5, 0.5, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, 0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.25, 0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 0.75, 0.75, -1.0, 0.5, -1.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, 0.75, -1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 0.5, 0.25, -0.75, 0.5, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.0, 0.5, -0.25, 0.25, -0.5, 0.75, -0.75, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_bundle_encoder101.popDebugGroup();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.clearBuffer(buffer101);
    render_bundle_encoder000.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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
    buffer105.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer101.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    device40.queue.submit([command_buffer400, ]);
    command_encoder003.clearBuffer(buffer000);
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    compute_pass_encoder4001.popDebugGroup()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.queue.submit([]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    
    const command_buffer203 = command_encoder203.finish();
    
    device40.pushErrorScope("validation");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder202.insertDebugMarker("mymarker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder401.clearBuffer(buffer400);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_bundle_encoder001.popDebugGroup();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    texture002.destroy();
    device00.queue.submit([command_buffer005, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    device10.queue.submit([]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("out-of-memory");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder301.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder002.popDebugGroup();
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder105.insertDebugMarker("mymarker");
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    texture202.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    buffer001.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    compute_pass_encoder1040.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder102.popDebugGroup();
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder102.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer200.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder106.insertDebugMarker("mymarker");
    
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder401.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture003.destroy();
    texture401.destroy();
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
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer103,
        0
    )
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder103.popDebugGroup()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture401.destroy();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder303.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder105.clearBuffer(buffer102);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout106]
    });
    texture301.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder403.pushDebugGroup("group_marker");
    const command_buffer105 = command_encoder105.finish();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_buffer301 = command_encoder301.finish();
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
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
    
    const command_buffer401 = command_encoder401.finish();
    command_encoder007.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4001.insertDebugMarker("marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    device30.pushErrorScope("internal");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    command_encoder003.clearBuffer(buffer001);
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder403.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.popDebugGroup()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    compute_pass_encoder4001.insertDebugMarker("marker")
    const array7 = new Float32Array([0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, 1.0, -0.75, 0.5, -0.25, -0.75, -0.5, -0.5, 0.0, -0.5, -0.75, -1.0, 0.25, 0.0, 0.25, 1.0, -0.75, -1.0, 1.0, 1.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.0, -0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.75, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, 0.25, 0.5, -0.25, -1.0, -0.5, 0.75, -1.0, 0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 0.75, -0.5, -0.75, 0.5, -1.0, 0.75, 0.75, 0.75, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, 0.0, 1.0, -0.75, -1.0, 0.25, 0.25, -0.75, -0.75, 0.0, 0.25, -0.75, 0.25, -0.25, 1.0, -1.0, -0.75, -0.25, -0.25, -1.0, -0.75, ]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device40.queue.submit([command_buffer400, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer402 = command_encoder402.finish();
    device30.queue.submit([command_buffer301, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder007.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer007 = command_encoder007.finish();
    const command_buffer008 = command_encoder008.finish();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    const command_buffer006 = command_encoder006.finish();
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([]);
    device30.queue.submit([]);
    command_encoder004.popDebugGroup()
    command_encoder000.popDebugGroup()
    compute_pass_encoder4001.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder4001.popDebugGroup()
    device10.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device00.queue.submit([command_buffer008, ]);
    command_encoder002.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    const command_buffer106 = command_encoder106.finish();
    const command_buffer002 = command_encoder002.finish();
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4001.popDebugGroup()
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    device00.queue.submit([command_buffer008, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
}