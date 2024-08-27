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
    const array0 = new Float32Array([0.25, -0.5, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, 1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 0.0, -0.25, -1.0, -0.75, 0.5, -0.5, -1.0, -0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 0.0, 0.5, -1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 1.0, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -0.5, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -0.25, 1.0, 0.75, 0.0, -1.0, -0.5, 0.0, -0.75, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, 0.25, 1.0, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.75, -0.5, 0.75, 0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.5, 1.0, -0.5, -0.5, -0.5, -0.75, ]);
    const array1 = new Float32Array([-0.25, 1.0, 0.25, 0.5, 1.0, -0.75, 1.0, -1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, 0.0, 0.25, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, -0.75, -0.75, 0.75, 1.0, 1.0, 1.0, 0.0, 1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 0.0, -1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 0.0, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 1.0, -0.5, -0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, -0.5, 0.25, 0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.75, -0.25, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const array2 = new Float32Array([-1.0, 0.75, -0.5, 1.0, -0.25, 0.75, -0.25, -0.25, -0.75, -0.25, 0.5, -0.25, 1.0, 1.0, 0.75, 0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, -1.0, 1.0, 1.0, -1.0, -0.5, -1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.5, 0.0, 1.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.25, -1.0, 0.25, 1.0, 1.0, 0.0, -0.5, -0.75, 1.0, 0.5, -0.75, -0.25, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, 0.75, -1.0, 1.0, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, 0.25, -1.0, 1.0, -0.5, 0.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, 0.0, 1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    
    device00.pushErrorScope("out-of-memory");
    const array3 = new Float32Array([-1.0, -0.75, 0.75, 0.5, -0.25, -0.25, -0.75, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 0.25, 1.0, -1.0, -0.5, 0.0, 0.0, 0.75, 0.5, 0.25, 0.75, -1.0, 0.25, 0.75, -0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -1.0, 0.75, 1.0, -0.75, -1.0, -0.75, 0.75, -1.0, -0.25, 0.25, 0.75, 0.25, 0.0, -0.75, -1.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.5, -1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.75, -0.25, -0.5, 1.0, -0.5, 1.0, 0.75, -0.25, ]);
    buffer100.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array4 = new Float32Array([-1.0, -0.5, -0.75, 0.5, -0.5, -0.25, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.25, 0.75, -0.25, -0.5, -0.75, -0.25, 0.75, -0.75, 1.0, -1.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.75, 0.25, 0.5, -1.0, 0.75, 1.0, -0.25, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, -1.0, -0.75, -0.75, -1.0, -1.0, 0.75, -0.75, -0.75, -0.5, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -0.25, -1.0, 0.25, -1.0, 0.25, 0.25, -0.75, 0.5, -0.5, -0.5, -0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, -0.25, 1.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.destroy();
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture100.destroy();
    
    device10.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    device30.pushErrorScope("internal");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder304.insertDebugMarker("mymarker");
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device30.pushErrorScope("internal");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder304.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    buffer300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array5 = new Float32Array([-0.5, 0.25, -1.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, -0.75, 1.0, -0.5, -0.25, -1.0, 0.25, 1.0, -0.5, -0.25, -0.75, 1.0, -0.75, 0.75, -0.5, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, -0.5, -0.25, 0.75, 1.0, -0.25, 0.25, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, -0.5, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 0.25, 1.0, -1.0, 0.75, 0.0, -0.25, 0.25, 1.0, 0.0, 0.75, 0.75, 0.75, 0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 0.75, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, -0.25, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, 0.0, ]);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer304 = command_encoder304.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array6 = new Float32Array([0.0, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 0.5, -1.0, 0.5, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, 0.75, 0.75, 0.5, 0.25, 0.25, 1.0, 0.0, 0.75, 0.25, 0.75, 0.5, 0.0, 0.5, -0.75, -0.5, 0.0, 0.0, -0.25, 0.5, -0.75, -0.75, 0.0, 0.0, 0.0, 0.0, 0.25, -1.0, -1.0, 1.0, 1.0, 0.0, 0.75, 1.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, -0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 1.0, 0.75, 0.0, -0.25, 0.75, 1.0, 0.5, -0.5, -1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.75, ]);
    compute_pass_encoder0001.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
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
    
    
    
    const array7 = new Float32Array([-0.5, -0.75, 0.0, -0.75, 0.5, 0.5, 0.0, -1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, -0.75, 0.25, -0.5, -0.5, 0.25, -0.25, 0.5, 0.75, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -0.25, -0.25, 0.75, -0.5, 0.5, 0.25, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, 0.25, -0.5, -1.0, 0.5, 0.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.0, -0.25, 0.25, 0.25, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder301.popDebugGroup();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    render_bundle_encoder300.popDebugGroup();
    texture201.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device20.pushErrorScope("internal");
    command_encoder305.clearBuffer(buffer302);
    command_encoder305.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    texture300.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer302.destroy()
    render_bundle_encoder001.popDebugGroup();
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder305.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder305.clearBuffer(buffer300);
    device30.pushErrorScope("validation");
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer301.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    compute_pass_encoder3001.insertDebugMarker("marker")
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const array8 = new Float32Array([0.5, -0.5, 0.75, 0.0, -1.0, -1.0, -1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 0.0, 0.75, -1.0, -0.75, 1.0, -0.5, -0.25, -1.0, 0.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, 0.25, -1.0, 0.0, 0.25, -0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.25, -1.0, 1.0, -0.25, -0.25, 0.75, -0.5, 0.25, 1.0, -0.5, -0.5, 0.5, 0.25, -0.25, 1.0, 0.5, 0.75, -0.25, 0.5, 1.0, 0.75, 0.75, 0.75, -1.0, -1.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, -0.75, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.5, 0.75, 0.0, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture200.destroy();
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder3000.popDebugGroup()
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder3001.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer501.destroy()
    render_bundle_encoder300.popDebugGroup();
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder3030.setStencilReference(1);
    buffer005.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder305.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3050.insertDebugMarker("marker")
    render_pass_encoder3030.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
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
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    buffer500.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3010.popDebugGroup()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder000.popDebugGroup();
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    texture303.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    device20.destroy();
    render_pass_encoder3030.insertDebugMarker("marker");
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
    
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.popDebugGroup();
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.popDebugGroup();
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder305.clearBuffer(buffer300);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3050.insertDebugMarker("marker");
    buffer502.destroy()
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder5020.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    render_pass_encoder3050.setStencilReference(1);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder3051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const array9 = new Float32Array([-1.0, -0.5, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 0.0, -0.5, 0.25, 0.75, 0.0, 0.25, -0.75, 1.0, 0.75, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 0.5, -0.75, 0.25, -0.5, -0.75, -0.75, -0.75, -1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, 0.5, -0.75, -0.25, 0.75, -0.5, -1.0, 0.0, -0.75, 0.25, -1.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 1.0, -1.0, -1.0, 0.75, 0.25, -0.5, 0.5, -1.0, -0.75, -0.75, 1.0, -0.25, 0.0, -0.75, -0.5, 0.0, 0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.75, 0.5, 0.0, 1.0, -1.0, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3050.insertDebugMarker("marker");
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder3051.pushDebugGroup("group_marker");
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
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
    render_pass_encoder3051.insertDebugMarker("marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    render_pass_encoder5020.popDebugGroup();
    command_encoder601.pushDebugGroup("mygroupmarker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    texture304.destroy();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: query302
    });
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder5010.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5010.setStencilReference(1);
    
    buffer000.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    
    const render_pass_encoder3061 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    render_pass_encoder5010.setStencilReference(1);
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    device30.destroy();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
    buffer503.destroy()
    
    
    command_encoder601.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder5021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder601.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    buffer600.destroy()
    render_pass_encoder5010.setStencilReference(1);
    
    
    render_pass_encoder5021.pushDebugGroup("group_marker");
    buffer501.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder601.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer600,
        0
    )
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    compute_pass_encoder3010.popDebugGroup()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("internal");
    command_encoder601.resolveQuerySet(
        query603,
        0,
        32,
        buffer600,
        0
    )
    
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer600,
        0
    )
    
    command_encoder600.resolveQuerySet(
        query603,
        0,
        32,
        buffer600,
        0
    )
    render_bundle_encoder300.popDebugGroup();
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    texture301.destroy();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    buffer601.destroy()
    
    texture500.destroy();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.clearBuffer(buffer600);
    render_pass_encoder5021.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    buffer003.destroy()
    
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder5021.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder501.insertDebugMarker("marker");
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
    compute_pass_encoder6010.insertDebugMarker("marker")
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer602.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5021.popDebugGroup();
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
}