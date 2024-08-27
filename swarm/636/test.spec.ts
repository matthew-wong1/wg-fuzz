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
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([1.0, 0.0, 0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.5, -0.25, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, -0.5, -0.75, 0.75, 0.0, 1.0, 0.75, 0.25, 0.5, 0.0, -0.25, 0.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.75, 0.0, 0.25, 0.75, 0.0, 0.25, -1.0, 0.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, -0.5, 0.0, 0.0, 0.25, -1.0, -0.5, 0.25, -0.75, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, 0.75, 1.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, 0.5, -0.5, -0.25, -1.0, 0.75, 1.0, 1.0, 1.0, -0.25, -0.5, -0.75, 0.5, -1.0, -0.25, -0.75, -0.25, 1.0, 0.25, 0.75, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.pushErrorScope("validation");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-1.0, 0.5, 0.75, 0.5, 0.25, -0.5, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, -0.75, -0.75, 0.25, 0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.5, -0.5, 1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, -0.25, -0.75, -1.0, 0.75, -0.5, -0.75, 1.0, 1.0, 0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 1.0, 1.0, 0.25, 1.0, -0.5, 0.75, 0.25, -0.5, 0.0, -0.5, 1.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 0.25, 1.0, 1.0, 0.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-0.25, -0.25, -1.0, 0.75, -0.5, -1.0, -0.5, -0.5, -0.25, -1.0, 0.75, -0.75, -0.75, -0.25, -1.0, 0.0, -0.75, 0.75, 0.5, 0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -0.75, -0.75, 1.0, 0.5, -1.0, 0.25, 0.5, -0.25, -0.5, 0.0, 1.0, 0.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 0.75, 1.0, 0.25, 0.0, 1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -0.5, 0.5, -0.25, -1.0, 1.0, -0.25, ]);
    device40.pushErrorScope("validation");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.destroy();
    
    texture401.destroy();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture402.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.destroy();
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device20.pushErrorScope("validation");
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array3 = new Float32Array([-0.25, -0.75, 0.0, 0.0, 0.25, 0.75, 0.25, 0.5, 0.5, -0.75, -0.5, -1.0, 0.0, -0.25, 1.0, 0.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.0, 0.25, 0.25, -0.5, 0.25, 0.75, -0.75, 0.0, -0.5, -0.5, 0.25, 1.0, 0.25, 0.25, 0.75, 1.0, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 0.5, -0.25, 0.75, -0.75, -0.25, 0.0, 0.5, -0.5, -0.75, -1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, 0.0, 0.0, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, -0.5, -0.25, -0.75, -0.5, -0.5, 0.5, 0.0, -0.5, -1.0, -0.25, -0.75, 1.0, 0.25, 0.25, -0.5, 1.0, -1.0, 0.0, 0.5, 0.0, -0.5, 1.0, 0.0, 0.75, 0.25, 0.5, -0.25, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.clearBuffer(buffer402);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture600.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder400.clearBuffer(buffer400);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder400.clearBuffer(buffer400);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture400.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    buffer403.destroy()
    texture404.destroy();
    const array4 = new Float32Array([0.25, 0.5, -0.5, -0.5, -0.5, -0.5, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, -0.75, -0.5, 0.25, -0.75, -0.75, 1.0, 1.0, -0.25, 0.25, 0.0, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.5, 0.0, 0.25, -0.75, 0.5, -0.5, -1.0, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.5, -1.0, -1.0, 0.5, -0.25, 0.25, -0.5, -0.5, 0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, 0.0, -0.25, 0.75, -0.5, 1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 0.75, -0.75, 0.75, -1.0, -0.5, -0.75, 0.0, 0.0, 0.5, -0.75, ]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    buffer404.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer301.destroy()
    
    
    device20.pushErrorScope("internal");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_buffer400 = command_encoder400.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    texture403.destroy();
    texture200.destroy();
    
    buffer400.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    device30.pushErrorScope("internal");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const command_buffer300 = command_encoder300.finish();
    buffer300.destroy()
    texture300.destroy();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("validation");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    texture601.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder200.clearBuffer(buffer200);
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture602.destroy();
    buffer200.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    buffer600.destroy()
    const command_buffer202 = command_encoder202.finish();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device30.queue.submit([command_buffer300, ]);
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
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
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    compute_pass_encoder2010.popDebugGroup()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const command_buffer401 = command_encoder401.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.destroy();
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    device20.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    buffer302.destroy()
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.5, -0.25, 0.5, 0.25, -0.5, 0.25, -0.25, -0.5, -1.0, 1.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, 1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.75, -0.5, -1.0, 1.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.5, 0.5, -0.75, 0.75, -0.25, -0.25, -1.0, 0.25, 1.0, -0.75, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, 0.25, -0.75, 0.75, 0.25, 0.25, ]);
    const command_buffer600 = command_encoder600.finish();
    buffer304.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device40.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    buffer303.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device70.pushErrorScope("validation");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_buffer203 = command_encoder203.finish();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.queue.writeTexture({ texture: texture604 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device60.queue.writeTexture({ texture: texture604 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture202.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer201.destroy()
    
    compute_pass_encoder2000.popDebugGroup()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_buffer204 = command_encoder204.finish();
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    compute_pass_encoder8010.popDebugGroup()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device60.queue.writeTexture({ texture: texture604 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const command_buffer601 = command_encoder601.finish();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device60.queue.writeTexture({ texture: texture604 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    device120.destroy();
    device60.queue.writeTexture({ texture: texture604 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    buffer1000.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    texture603.destroy();
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    device100.pushErrorScope("internal");
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer405.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder602.popDebugGroup();
    
    texture700.destroy();
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    device60.queue.writeTexture({ texture: texture604 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder600.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    
    buffer407.destroy()
    
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    device60.queue.writeTexture({ texture: texture604 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture1000.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer406.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device70.pushErrorScope("out-of-memory");
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    buffer305.destroy()
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture604 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.submit([command_buffer601, ]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    render_bundle_encoder300.popDebugGroup();
    buffer306.destroy()
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1002]
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.insertDebugMarker("mymarker");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    compute_pass_encoder8000.insertDebugMarker("marker")
    command_encoder1000.resolveQuerySet(
        query1000,
        0,
        32,
        buffer1000,
        0
    )
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    device60.queue.writeTexture({ texture: texture604 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder8010.popDebugGroup()
    const command_buffer1100 = command_encoder1100.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1101 = command_encoder1101.finish();
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer802 = command_encoder802.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer205 = command_encoder205.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    device80.queue.submit([command_buffer802, ]);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer205, ]);
    device110.queue.submit([command_buffer1101, ]);
}