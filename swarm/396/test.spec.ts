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
    const array0 = new Float32Array([-0.75, 0.75, 0.75, -0.5, 0.5, 0.25, -0.25, -0.25, -0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.0, -0.25, 0.5, 1.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, 1.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.0, 0.75, -0.75, -0.25, 0.25, -0.75, -0.25, 0.25, 1.0, -0.5, 0.75, -1.0, 0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 0.5, 0.0, 0.25, -0.5, 0.0, 0.0, -0.75, 0.25, 0.0, -0.5, -0.5, 0.0, -1.0, 1.0, 1.0, ]);
    const array1 = new Float32Array([0.25, 0.5, 0.5, 0.25, 1.0, -0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, -0.5, 0.5, 0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.75, -0.25, 0.25, -0.25, -0.75, 0.75, 1.0, -1.0, -0.5, 0.5, -0.5, 1.0, -0.5, 0.75, 0.25, -0.5, 0.75, 0.0, 0.5, -0.25, 0.75, -0.75, 0.25, 0.0, 0.0, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, 0.5, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, -0.5, 0.0, 1.0, -0.75, 0.0, 0.75, -0.75, -0.75, -0.75, -0.75, 0.0, -0.75, -0.75, -0.25, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    device10.pushErrorScope("validation");
    const array2 = new Float32Array([-0.25, 0.75, -0.5, 0.75, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 1.0, 0.75, 0.5, 1.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.5, 0.25, 0.25, -0.75, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.25, -1.0, -0.75, 0.5, 0.25, -1.0, -0.75, 0.25, -0.25, -0.25, -0.5, -0.5, 0.5, 0.5, 0.25, -0.5, 0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.75, -0.75, -1.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.25, 0.0, -0.75, -1.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 0.75, 0.25, 0.25, 0.5, -0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array3 = new Float32Array([0.0, 0.25, -1.0, -0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, 1.0, -0.75, 0.75, 0.75, 0.0, -1.0, -0.75, -1.0, 1.0, 0.0, 1.0, 0.25, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, -1.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, -0.25, 0.0, -0.75, 0.75, 0.75, -0.25, 0.0, -0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, -0.25, 0.5, 0.25, 0.0, -1.0, -0.25, 1.0, -0.5, 1.0, -1.0, -0.75, 0.25, 0.5, 0.0, -1.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_buffer100 = command_encoder100.finish();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array4 = new Float32Array([-0.75, -0.75, -1.0, -0.75, -1.0, 0.5, 0.0, 0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 0.5, 1.0, 1.0, 1.0, -0.25, 0.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.25, -1.0, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.75, -0.75, 0.5, 0.0, -0.25, -1.0, -1.0, 0.5, -0.75, 1.0, -1.0, -0.75, 0.25, 0.75, -0.75, 1.0, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, 0.25, -0.25, 0.25, 0.25, -0.5, -0.5, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 0.5, -0.75, -0.75, -0.5, -0.5, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, -0.75, 1.0, 1.0, 0.75, 0.5, -0.5, 0.0, -0.5, 0.0, -0.5, -0.75, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, ]);
    device10.queue.submit([command_buffer100, ]);
    buffer100.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-0.5, 0.5, -0.5, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 0.25, 0.75, -1.0, -1.0, 1.0, -0.75, -0.75, -0.25, 0.0, 0.75, -0.25, -0.75, -0.5, 1.0, -0.25, 0.0, 0.0, 0.5, 1.0, -0.75, 0.5, -0.75, 0.25, 0.75, -0.5, -0.25, -1.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.5, -0.25, -0.25, -1.0, 0.5, 0.75, 1.0, 0.0, 0.5, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, -0.75, 0.5, 0.5, -0.25, -0.75, -0.75, 0.5, -0.5, -0.5, -1.0, 1.0, -0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.5, -0.75, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.5, 1.0, ]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1010.popDebugGroup()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    command_encoder105.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([-0.75, -0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, -0.75, -0.25, 1.0, 1.0, -0.75, 1.0, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.25, 0.25, 0.25, 0.5, 1.0, -1.0, 1.0, -0.5, -0.75, 0.0, -0.75, 1.0, -1.0, -0.5, -0.75, -0.75, -0.75, 0.25, -0.25, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, -1.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.0, 1.0, 0.5, 1.0, -0.5, -0.5, -0.25, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.5, -0.75, 0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 0.75, -0.5, -1.0, 0.5, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder105.popDebugGroup()
    query102.destroy()
    device10.queue.submit([command_buffer104, ]);
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
    const command_buffer105 = command_encoder105.finish();
    query100.destroy()
    const array7 = new Float32Array([1.0, 0.25, -0.5, 0.0, -0.25, -1.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, 0.5, -0.25, 0.25, -0.75, 0.25, 0.25, -1.0, 0.5, 0.0, 1.0, 0.0, -1.0, -0.25, -1.0, -0.5, -0.75, 0.5, 1.0, -0.25, -0.5, -1.0, 0.75, -0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.25, -0.25, 0.5, -0.75, -1.0, 1.0, -0.25, -0.75, 1.0, -0.25, -0.5, -0.5, -0.5, -1.0, 0.0, 1.0, 0.25, 0.5, 0.5, -0.5, 0.0, 0.5, -1.0, 0.0, -0.75, 0.5, 1.0, 0.5, -0.5, -0.25, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, -0.25, 0.0, 0.0, 1.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer101.destroy()
    query100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const array8 = new Float32Array([-0.25, 0.0, -0.75, -1.0, -0.5, -1.0, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, -0.75, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 0.25, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 1.0, -0.5, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.25, 0.5, 0.75, -0.25, 1.0, 0.25, 0.25, 0.5, 0.0, 1.0, 0.25, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, 0.75, 0.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.75, -0.75, 1.0, 0.75, -0.5, -1.0, ]);
    
    device10.pushErrorScope("validation");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    query102.destroy()
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_bundle_encoder100.popDebugGroup();
    query100.destroy()
    const array9 = new Float32Array([-1.0, 1.0, 0.5, -1.0, 0.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.75, 0.5, -0.25, 0.5, 0.25, 0.0, 0.0, 0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.25, -0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -1.0, 1.0, -0.5, -0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -0.75, 0.5, -1.0, 0.75, -1.0, 1.0, 0.75, 1.0, 0.0, -0.5, -0.25, -0.5, 1.0, 1.0, -0.75, 1.0, -0.5, 0.25, -0.25, 0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 1.0, 0.0, -1.0, -0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -1.0, 0.5, 0.0, 0.75, -1.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.25, ]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.popDebugGroup();
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder107.insertDebugMarker("mymarker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    query100.destroy()
    query103.destroy()
    device10.pushErrorScope("internal");
    
    device10.queue.submit([command_buffer105, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("out-of-memory");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder107.insertDebugMarker("mymarker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query104.destroy()
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    query103.destroy()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    query104.destroy()
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    query101.destroy()
    command_encoder300.insertDebugMarker("mymarker");
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    query103.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array10 = new Float32Array([1.0, 0.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.0, -0.5, 0.0, -1.0, -0.75, 0.25, -0.5, -1.0, 0.25, -1.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.25, -0.75, 0.0, 0.5, -0.5, 0.5, -0.25, -0.75, 0.25, -1.0, -1.0, 1.0, -0.5, 0.25, 0.5, 0.0, 0.0, -1.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.75, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, -0.5, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, -0.5, 0.0, -1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.25, 1.0, 1.0, 0.0, 0.5, 0.0, 0.25, 0.25, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 1.0, 1.0, -0.25, 0.25, -0.5, -0.5, 0.5, 1.0, -0.5, 0.0, 0.0, 0.75, -0.75, 0.5, ]);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    device30.pushErrorScope("internal");
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1080.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    query103.destroy()
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
    query300.destroy()
    render_bundle_encoder302.popDebugGroup();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder300.popDebugGroup()
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder500.popDebugGroup()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder300.popDebugGroup();
    
    const command_buffer300 = command_encoder300.finish();
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
    query105.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.75, 0.5, 0.5, 0.5, 0.75, -0.75, -0.75, 0.5, -1.0, -1.0, -0.5, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, 0.75, -0.25, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, 1.0, 0.5, 0.25, -0.25, 0.5, 0.5, 1.0, -0.5, 0.75, 1.0, -0.5, 0.75, -0.75, -1.0, 0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 1.0, 0.75, 1.0, 1.0, -0.25, 0.5, -0.5, -0.75, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.5, 0.0, 0.0, 0.5, 1.0, 1.0, 0.75, 0.25, 0.75, 0.75, -1.0, -0.25, ]);
    command_encoder501.pushDebugGroup("mygroupmarker")
    buffer500.destroy()
    query100.destroy()
    
    buffer300.destroy()
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query103.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1070.popDebugGroup()
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    buffer503.destroy()
    
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query300.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.popDebugGroup()
    buffer301.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query104.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_buffer501 = command_encoder501.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1060.popDebugGroup()
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    
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
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    query103.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query105.destroy()
    query104.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder100.popDebugGroup();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    query103.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    compute_pass_encoder1080.popDebugGroup()
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
    
    device50.queue.writeBuffer(buffer504, 0, array11, 0, array11.length);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder501.popDebugGroup();
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1060.popDebugGroup()
    
    compute_pass_encoder1070.popDebugGroup()
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    buffer600.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    query601.destroy()
    device50.queue.writeBuffer(buffer504, 0, array2, 0, array2.length);
    query300.destroy()
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
    command_encoder500.popDebugGroup()
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
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
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query100.destroy()
    
    device50.queue.writeBuffer(buffer504, 0, array11, 0, array11.length);
    buffer103.destroy()
    query105.destroy()
    query600.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder302.popDebugGroup()
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    query107.destroy()
    buffer502.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    query107.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    device50.queue.writeBuffer(buffer504, 0, array0, 0, array0.length);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query302.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_bundle_encoder501.popDebugGroup();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1080.popDebugGroup()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.destroy();
    query107.destroy()
    render_bundle_encoder502.popDebugGroup();
    query302.destroy()
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    buffer504.destroy()
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout105]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query102.destroy()
    const array12 = new Float32Array([-0.75, 0.5, 0.25, 0.0, 0.75, -0.25, 0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 1.0, -0.75, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, 0.0, 0.75, 0.5, 0.0, 0.0, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.75, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, 0.25, -0.25, -0.75, 0.5, 0.75, -0.5, -0.25, 0.25, -1.0, -1.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.5, -1.0, -1.0, -0.5, -0.5, 0.25, -0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 1.0, 0.75, 1.0, -1.0, -1.0, -1.0, -0.25, -1.0, 1.0, 1.0, 0.75, ]);
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1010.popDebugGroup()
    query302.destroy()
    device30.pushErrorScope("internal");
    
    
    command_encoder302.insertDebugMarker("mymarker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    query107.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    query302.destroy()
    query105.destroy()
    query100.destroy()
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    const command_buffer303 = command_encoder303.finish();
    query100.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1080.pushDebugGroup("group_marker")
    
    query107.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query101.destroy()
    buffer303.destroy()
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.pushErrorScope("validation");
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query103.destroy()
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    const command_buffer109 = command_encoder109.finish();
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    query104.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device10.pushErrorScope("validation");
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    query301.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    device80.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.submit([command_buffer501, ]);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query303.destroy()
    compute_pass_encoder1080.popDebugGroup()
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder102.popDebugGroup();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    buffer400.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query104.destroy()
    query303.destroy()
    query303.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    query107.destroy()
    
    device10.queue.submit([command_buffer109, ]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query305.destroy()
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    render_bundle_encoder301.popDebugGroup();
    query300.destroy()
    render_bundle_encoder500.popDebugGroup();
    
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.pushErrorScope("out-of-memory");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array13 = new Float32Array([0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -1.0, 0.0, 0.5, -0.5, 0.5, 0.25, 0.5, 1.0, 0.25, 0.5, -1.0, -0.5, -1.0, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 0.75, -1.0, 0.25, -0.75, 0.5, -0.5, -0.25, -1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 0.25, 0.75, 0.25, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, -0.75, -0.25, 0.5, 0.25, -1.0, 0.0, 0.5, -0.5, 0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -0.25, -0.75, -0.25, -0.75, 0.5, -1.0, -0.75, 0.75, -0.25, -0.75, -0.5, 1.0, -0.5, 0.25, -0.75, 0.0, 0.5, 0.75, 0.25, -0.75, -0.5, 1.0, -0.25, -0.75, 0.75, -0.25, -1.0, -0.25, ]);
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    query300.destroy()
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    query104.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query108.destroy()
    query303.destroy()
    
    render_bundle_encoder100.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1060.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    command_encoder500.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    const command_buffer500 = command_encoder500.finish();
    command_encoder302.popDebugGroup()
    compute_pass_encoder1070.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder1020.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
}