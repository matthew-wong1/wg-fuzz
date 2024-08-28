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
    const array0 = new Float32Array([-0.5, -0.5, 1.0, 0.75, 0.75, 1.0, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.5, -0.75, 0.0, -0.5, -0.75, -1.0, 0.0, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 1.0, -1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 0.5, -0.5, -0.5, 1.0, 0.75, 0.5, -0.75, -0.75, 0.0, 1.0, 0.5, -0.75, 1.0, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.5, -0.75, 0.5, 1.0, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 1.0, -0.75, 0.0, -0.5, 0.25, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, -0.75, ]);
    
    const array1 = new Float32Array([0.0, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -0.25, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, -0.5, 0.25, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, -0.75, 1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 0.75, -0.25, 1.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.5, 1.0, -0.25, 0.75, 0.5, 0.75, 0.25, 1.0, 1.0, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, -0.5, 0.75, 0.5, -1.0, -0.75, -0.5, -1.0, -0.5, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.75, -0.75, -0.25, 0.75, -0.25, ]);
    
    const array2 = new Float32Array([-0.5, -0.5, -0.75, -0.5, 0.25, -0.5, 0.75, 0.25, -0.25, -0.25, -0.75, 0.0, 0.25, 0.75, 0.5, 0.5, 1.0, 0.5, -0.5, 1.0, 1.0, -0.25, 0.5, -0.25, 0.5, 0.5, -1.0, -1.0, 0.5, -0.75, -0.75, -0.25, 0.25, 0.25, -0.5, -0.75, 0.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.25, -0.5, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -0.25, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.5, -1.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.25, ]);
    const array3 = new Float32Array([-0.75, 0.5, 0.25, 0.75, -0.25, 0.75, -0.75, 1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 0.75, -1.0, 0.75, -1.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.5, 0.5, 0.25, 0.25, 0.25, 0.0, 1.0, 0.0, 0.0, -0.75, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, 0.0, 0.25, 0.25, -0.25, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, 0.0, 1.0, -1.0, -0.25, -0.25, 0.0, 0.5, 0.5, 0.0, 0.0, -0.25, 0.0, 0.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.25, -1.0, -1.0, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, -0.5, -0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, 0.75, -0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.25, 0.0, -0.25, 0.0, -1.0, -1.0, ]);
    const array4 = new Float32Array([-1.0, -1.0, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.75, -1.0, -0.5, -0.75, -0.75, 0.5, -0.5, 0.0, 0.75, -0.5, -1.0, -1.0, -0.25, 0.75, 0.75, 0.5, -0.5, -0.5, 0.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -1.0, 0.5, -0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -1.0, 0.0, 0.25, -0.75, 1.0, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, -0.25, 0.25, -1.0, -1.0, -0.75, -1.0, 1.0, -0.25, 1.0, 0.0, -0.5, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -0.25, 0.25, -0.75, 1.0, 0.5, 0.0, 0.25, 0.0, 0.25, ]);
    const array5 = new Float32Array([0.0, 0.0, -1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -0.5, 0.75, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, -0.25, -0.25, -0.25, 0.75, 0.0, -1.0, -0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -1.0, -1.0, -0.5, 0.75, 0.0, 0.0, -0.5, -0.25, -0.5, 0.5, -0.25, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 0.75, -0.75, -0.75, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -0.75, 0.75, 0.5, -0.5, -0.5, -0.75, 0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.25, -0.75, 0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array6 = new Float32Array([-0.5, -0.75, -1.0, -0.75, -0.5, 0.75, -0.25, 0.5, -1.0, 1.0, 0.75, 0.0, 0.25, -0.5, 0.75, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, 0.25, 0.0, -0.5, 1.0, 0.5, -0.25, -0.5, -0.5, -0.75, -0.5, -0.5, 0.25, 0.0, 0.25, -0.5, -0.75, -0.75, -0.75, -0.5, 0.25, -0.25, 0.5, -1.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.75, -0.25, 0.75, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, 0.0, 0.25, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, 0.0, 1.0, -0.5, 0.0, -0.5, 1.0, 0.5, 1.0, -0.75, 0.0, 1.0, 1.0, 0.75, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, -1.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, ]);
    const array7 = new Float32Array([0.25, -0.75, 1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 1.0, -1.0, 0.5, 0.5, -0.75, -0.25, -1.0, 1.0, -0.25, -0.75, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, 0.75, 1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.25, 0.0, -0.75, -0.5, -0.75, -1.0, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.5, 0.25, -0.25, -0.75, 0.0, 0.25, -0.5, 0.0, -0.5, 0.5, 0.25, 0.25, 0.75, -1.0, 0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, -0.75, 0.5, 0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, -0.5, 0.5, 0.5, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array8 = new Float32Array([-1.0, 0.5, 0.25, 0.5, -0.75, 0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 1.0, 0.75, 0.0, 1.0, 0.0, -0.25, -0.25, 1.0, -0.25, 1.0, 1.0, -0.5, -0.75, -0.25, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.5, 0.0, 1.0, 0.0, -1.0, 0.75, -1.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 0.0, 0.25, -1.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, 0.0, -0.5, 0.0, 0.0, 1.0, 1.0, 0.5, 0.25, 0.5, -1.0, 0.5, 1.0, 0.75, ]);
    
    const array9 = new Float32Array([0.0, 1.0, -0.25, 0.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, -1.0, 0.25, -0.5, -1.0, -1.0, -1.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.0, -0.25, 0.5, 0.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.75, -0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 1.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, -0.25, 0.25, 1.0, 1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 0.0, 1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.5, 0.25, 0.75, 0.75, 0.5, -1.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("validation");
    command_encoder000.insertDebugMarker("mymarker");
    
    
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder000.insertDebugMarker("mymarker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device10.pushErrorScope("validation");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    texture101.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
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
    texture100.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder103.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    query001.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    compute_pass_encoder0000.popDebugGroup()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder102.insertDebugMarker("mymarker");
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_buffer101 = command_encoder101.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.submit([command_buffer101, ]);
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
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    device40.destroy();
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
    const array10 = new Float32Array([-0.25, 0.5, -0.25, 0.5, 1.0, -0.25, -1.0, -0.5, -1.0, -0.75, -1.0, -0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.25, 0.0, 0.75, -1.0, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, 0.0, -1.0, -1.0, -0.5, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, -0.25, -0.25, -0.25, -0.25, 0.25, -0.5, 0.5, -0.5, 0.25, -0.25, -0.25, -0.5, 0.75, -0.75, -0.75, -1.0, 0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -0.5, -0.25, -0.5, 1.0, -0.5, 0.0, -0.25, -0.5, -0.5, 1.0, 0.5, -0.5, -1.0, 0.0, -0.25, 0.0, -0.5, 0.0, -0.5, 0.75, 0.25, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    query000.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    texture102.destroy();
    query000.destroy()
    
    const command_buffer001 = command_encoder001.finish();
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    query100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer105 = command_encoder105.finish();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder004.insertDebugMarker("mymarker");
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    query100.destroy()
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture103.destroy();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.executeBundles([])
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder0040.setStencilReference(1);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1030.insertDebugMarker("marker")
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    device50.destroy();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    
    query002.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query101.destroy()
    
    render_pass_encoder0040.setStencilReference(1);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    
    compute_pass_encoder1020.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query102.destroy()
    compute_pass_encoder1040.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout105]
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder1000.insertDebugMarker("marker")
    query000.destroy()
    compute_pass_encoder1070.insertDebugMarker("marker")
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    query101.destroy()
    compute_pass_encoder1070.insertDebugMarker("marker")
    render_pass_encoder0040.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout103]
    });
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_buffer108 = command_encoder108.finish();
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setStencilReference(1);
    
    
    
    query000.destroy()
    const command_buffer109 = command_encoder109.finish();
    render_pass_encoder0040.executeBundles([])
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    query004.destroy()
    const bind_group_layout1011 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1011",
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
    query005.destroy()
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1030.popDebugGroup()
    query003.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer008, 0, array9, 0, array9.length);
    compute_pass_encoder1060.insertDebugMarker("marker")
    query004.destroy()
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.writeBuffer(buffer008, 0, array10, 0, array10.length);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const bind_group_layout1012 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1012",
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
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout109]
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0020.setStencilReference(1);
    query101.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setStencilReference(1);
    
    
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query101.destroy()
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    compute_pass_encoder1040.popDebugGroup()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    query001.destroy()
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    compute_pass_encoder1060.popDebugGroup()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder10100 = command_encoder1010.beginComputePass({ label: "compute_pass_encoder10100" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder10100.pushDebugGroup("group_marker")
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    render_pass_encoder0040.setStencilReference(1);
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    
    query004.destroy()
    render_pass_encoder0020.setStencilReference(1);
    query001.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    query001.destroy()
    query001.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    query004.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    query005.destroy()
    
    compute_pass_encoder1060.popDebugGroup()
    
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture000.destroy();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder300.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder0040.setStencilReference(1);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    query001.destroy()
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout1010]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout1012]
    });
    device10.queue.submit([command_buffer105, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.executeBundles([])
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    
    const array11 = new Float32Array([0.5, 0.5, -0.75, -0.75, 0.0, 0.5, -1.0, -0.75, -0.25, 0.75, -0.75, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, -0.75, 1.0, -1.0, 1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.5, -0.75, -0.25, -0.25, -0.5, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, -1.0, -0.75, 0.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.75, 0.0, -0.25, 0.75, -1.0, -1.0, -0.5, 0.25, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.5, -0.75, 0.25, 1.0, -1.0, 0.75, 0.0, -0.5, -0.5, 0.5, -0.75, -1.0, 0.0, -0.25, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, 0.0, 0.5, -1.0, -0.75, 0.75, -0.25, 0.5, 0.75, -0.75, ]);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const command_encoder1011 = device10.createCommandEncoder({ label: "command_encoder1011" });
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    query004.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    command_encoder300.insertDebugMarker("mymarker");
    const command_buffer1011 = command_encoder1011.finish();
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query006.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder10100.insertDebugMarker("marker")
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    query000.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query102.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    query102.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer106, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder1060.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device70.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query006.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout1010]
    });
    command_encoder302.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout103]
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
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder10100.insertDebugMarker("marker")
    query101.destroy()
    
    
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setStencilReference(1);
    query102.destroy()
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1070.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder10100.popDebugGroup()
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    device30.queue.submit([command_buffer302, ]);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([command_buffer1011, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
}