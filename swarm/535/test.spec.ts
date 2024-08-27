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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([-0.5, -1.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 0.25, 0.75, -0.25, 0.25, 0.25, 1.0, 0.75, 0.75, -0.5, 1.0, 0.75, 0.25, 0.0, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, 0.5, -0.5, 0.75, -0.5, 0.75, 0.25, -0.25, -0.75, 1.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, -0.25, 0.5, -0.25, 0.75, -0.75, 0.75, 0.5, 0.0, 0.75, -0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.75, 0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 1.0, -1.0, -0.5, 1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    const array1 = new Float32Array([-0.5, 1.0, -0.25, -1.0, -0.25, 0.5, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, 0.75, -0.5, 0.5, -0.75, -0.25, 0.0, 0.0, 0.75, -0.5, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 0.25, -0.75, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -0.25, -0.5, 0.0, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -0.75, 0.5, 0.0, -0.75, 0.75, 1.0, 0.25, -0.25, 0.5, -0.25, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -1.0, 1.0, 0.75, -0.75, -0.5, 0.5, 0.25, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.5, -0.25, 1.0, 0.75, -1.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.25, 0.25, 1.0, 0.75, 0.75, -0.5, 0.75, -0.75, ]);
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.pushErrorScope("out-of-memory");
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer100.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query300.destroy()
    device30.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const array2 = new Float32Array([0.0, 0.25, 0.0, 0.0, -0.75, 1.0, 0.75, 0.0, 0.75, 0.5, 1.0, 0.5, -1.0, 0.5, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, -0.5, 0.5, -0.75, -0.25, 1.0, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, -0.25, -0.5, -0.5, -0.5, -1.0, 0.0, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, -1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.0, -0.75, 0.5, 0.75, 0.5, 0.25, 0.0, -1.0, -1.0, -0.25, 0.25, -1.0, -1.0, -1.0, -0.5, -0.75, 0.5, 0.25, 0.75, -1.0, -0.5, -0.75, 0.25, 0.5, 0.25, -0.25, -0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.0, 0.25, -0.75, -0.5, 0.5, 0.25, 0.75, -1.0, 0.75, -0.25, 0.75, -0.75, ]);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([1.0, 0.25, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, -0.5, 0.75, 0.75, 0.25, -0.5, -0.75, 0.0, 1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 1.0, 1.0, 0.5, 0.75, -0.5, 0.5, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, -0.5, -0.5, 0.0, -1.0, -0.75, -0.75, -0.25, 1.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.75, -0.25, 0.5, 1.0, 0.0, 0.25, -0.25, 0.75, -0.25, 0.5, 1.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.5, -1.0, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.0, 0.5, -1.0, 0.5, 0.75, 0.0, 0.5, -0.5, -0.25, 0.5, -1.0, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, -0.5, -0.5, ]);
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query102.destroy()
    buffer000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder000.popDebugGroup()
    command_encoder102.popDebugGroup()
    
    query101.destroy()
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    query001.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.popDebugGroup()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    query102.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer103.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    buffer400.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder001.popDebugGroup()
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
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    
    query100.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer002.destroy()
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const array4 = new Float32Array([1.0, 0.75, 0.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 1.0, 0.0, 0.5, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 0.25, -0.25, 0.75, 0.5, 0.75, -1.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.5, 0.0, 0.0, 1.0, -0.25, 0.0, -0.75, -0.75, -1.0, -0.5, 0.5, 1.0, -0.5, -1.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 0.5, 0.75, -1.0, -0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 0.25, 0.25, 0.0, 0.5, 0.0, 0.25, 0.0, 0.25, -0.75, -0.25, -0.5, -1.0, 1.0, -0.75, 1.0, 0.25, -1.0, -1.0, 1.0, -1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.5, 0.25, 0.5, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    device10.pushErrorScope("out-of-memory");
    device00.queue.submit([command_buffer000, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query104.destroy()
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
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_buffer001 = command_encoder001.finish();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1030.setStencilReference(1);
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1030.setStencilReference(1);
    query102.destroy()
    query002.destroy()
    
    render_bundle_encoder101.popDebugGroup();
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    query400.destroy()
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    buffer104.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const array5 = new Float32Array([-1.0, -0.25, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, -0.75, -0.5, -0.25, -1.0, 0.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.25, -0.25, -0.5, 0.25, -0.25, -0.25, -0.5, -0.25, -0.25, -0.5, -0.75, 0.25, 0.25, -0.5, -0.25, -0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.25, -0.75, 0.25, 1.0, 0.75, 1.0, 0.5, -0.75, -0.5, 1.0, 0.0, 0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, -1.0, -0.5, 0.5, 0.25, 1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.5, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    device40.pushErrorScope("internal");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
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
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder100.popDebugGroup();
    texture100.destroy();
    query101.destroy()
    const array6 = new Float32Array([-0.5, 1.0, -1.0, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, -0.25, 0.75, -0.5, -0.25, 1.0, 0.0, -0.25, -0.75, -0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -0.5, 0.0, 0.0, -0.25, -0.5, -0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.75, -0.75, 0.75, 1.0, 0.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, -0.75, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, 1.0, 0.25, 0.0, -0.25, -0.75, 1.0, -1.0, 0.25, -0.5, 0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.5, -1.0, -0.5, 0.25, 0.5, 0.0, 0.25, -1.0, 0.5, -0.5, ]);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    render_pass_encoder1030.setStencilReference(1);
    query103.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    query101.destroy()
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.pushErrorScope("out-of-memory");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_buffer003 = command_encoder003.finish();
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer104 = command_encoder104.finish();
    render_bundle_encoder002.popDebugGroup();
    
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
    query401.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    buffer005.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    query106.destroy()
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer104, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    query003.destroy()
    buffer401.destroy()
    query106.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    texture400.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    query401.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    query101.destroy()
    device10.pushErrorScope("internal");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    
    render_pass_encoder0040.setStencilReference(1);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture105.destroy();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder1030.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture001.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1050.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture002.destroy();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.popDebugGroup()
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_pass_encoder1030.setStencilReference(1);
    query103.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    compute_pass_encoder1020.popDebugGroup()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture101.destroy();
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder1060.popDebugGroup();
    query001.destroy()
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1050.setStencilReference(1);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    buffer004.destroy()
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0040.popDebugGroup();
    
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0040.executeBundles([])
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_pass_encoder1050.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query102.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    query103.destroy()
    render_pass_encoder1070.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    render_pass_encoder1070.executeBundles([])
    query002.destroy()
    render_bundle_encoder400.popDebugGroup();
    const array7 = new Float32Array([0.5, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, -1.0, -0.25, -0.5, -0.25, 1.0, -0.25, -0.75, -1.0, -0.5, -1.0, 0.75, -0.25, -0.75, -1.0, 0.25, 1.0, -0.75, -0.5, -0.5, -0.25, -1.0, -1.0, -1.0, 0.0, 0.5, -0.25, 0.25, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, 0.0, -1.0, -0.25, -0.25, -0.75, 0.0, 0.5, 1.0, 0.75, 1.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.5, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, -0.75, 1.0, -1.0, -1.0, 0.0, 0.0, 0.25, 0.75, 0.0, 0.75, -0.75, 0.25, 0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 0.25, 0.25, 0.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.75, 0.75, -0.25, 1.0, ]);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}