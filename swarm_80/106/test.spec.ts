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
    const array0 = new Float32Array([-0.5, 0.5, 0.0, -0.75, 0.25, -1.0, 1.0, -0.25, 0.75, 0.25, -0.5, -0.25, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 0.0, 1.0, 1.0, -0.5, 0.5, -0.5, 0.75, 0.5, 0.0, 0.75, 1.0, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, 0.0, 0.0, -0.5, -1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, 0.0, 1.0, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.5, 1.0, -0.5, -0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -0.25, -0.5, 0.25, 0.25, -0.5, 0.25, -0.75, -0.5, -1.0, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, ]);
    const array1 = new Float32Array([-0.5, -0.5, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.5, -0.75, 0.75, 0.5, 0.75, 0.75, 0.0, -0.75, 0.5, -1.0, -0.75, 0.0, 0.0, 0.25, -0.75, -0.75, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, -1.0, -0.75, -0.25, -1.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -1.0, 0.25, 0.75, -0.75, -0.75, 0.0, -0.5, 0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, 0.75, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.5, 0.0, -1.0, -1.0, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, 0.25, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("internal");
    const array2 = new Float32Array([-0.25, -1.0, 0.0, -0.75, 0.5, 0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 1.0, 0.5, -1.0, 0.5, -0.75, 0.75, 0.5, -0.5, 0.25, -0.25, -0.5, -0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, 0.25, -0.75, -0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.25, 1.0, -0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 0.0, 0.5, 0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 1.0, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, -0.5, -0.25, -0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, 0.0, -0.5, -1.0, 1.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 0.75, -1.0, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-1.0, -0.25, -0.5, 1.0, 0.5, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.5, -1.0, 1.0, -0.75, -1.0, -0.75, -0.25, -0.25, -0.25, 0.0, -0.75, 0.0, 0.75, 0.25, 0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 0.0, -0.5, 0.25, 0.25, 0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 0.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, 1.0, -0.75, 0.25, -0.25, -0.75, -0.25, 0.5, 0.75, 1.0, 0.0, 1.0, -0.75, 0.25, 0.25, -0.5, 0.75, 0.75, 0.25, -1.0, -0.25, -0.25, 0.0, -0.25, 0.5, 0.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.25, -0.75, 0.5, ]);
    
    query000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([0.5, 0.75, 0.75, -0.5, 0.5, 1.0, 0.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.0, -0.25, -0.25, -0.5, 1.0, 1.0, 1.0, 0.75, 0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, 1.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.75, 0.75, -0.75, -0.5, -0.5, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, -0.25, 1.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, 1.0, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, 1.0, -0.25, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query000.destroy()
    const array5 = new Float32Array([0.75, 0.5, 0.75, -1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 0.5, 1.0, 0.75, 0.0, 0.25, -0.75, -0.25, -1.0, -0.75, -0.25, 0.0, 0.5, -0.75, 1.0, 0.75, -0.5, 1.0, 0.75, -0.5, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, -0.75, 0.75, -1.0, -1.0, 0.25, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, -0.75, 0.5, 0.5, 1.0, 0.5, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, -1.0, -1.0, 1.0, -0.75, 0.0, -0.5, 0.0, -0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.5, -1.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, 0.0, 0.0, 0.5, -0.75, -0.5, 0.0, -0.75, -1.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.75, 0.5, -0.75, 0.25, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder000.popDebugGroup();
    command_encoder001.popDebugGroup()
    device10.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.75, 0.75, 0.75, 0.5, -0.25, -1.0, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, -0.75, -0.5, 0.75, -0.75, 1.0, 1.0, -0.5, -0.75, 0.0, 0.25, 0.0, 0.75, 0.25, 0.5, -0.75, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, 0.0, 1.0, 0.25, 0.75, 0.0, 0.25, -0.75, 0.25, -1.0, 0.5, -0.5, 0.0, 0.25, -1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, -0.75, -0.5, -0.25, -0.75, -0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.25, -0.75, -0.25, 0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.75, 0.75, 0.5, 0.5, -0.75, 0.25, 0.0, 0.75, -0.5, -0.5, 0.0, 1.0, -0.5, -0.5, -0.25, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, 1.0, -0.25, -1.0, 1.0, 0.75, ]);
    const array7 = new Float32Array([0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.75, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.75, 0.5, 0.25, 0.5, -0.75, -1.0, -0.25, 0.25, 1.0, -0.75, -0.75, 0.0, 0.0, 0.75, -0.25, 0.25, 0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.5, 0.75, 0.5, -0.75, 1.0, 1.0, 0.0, 0.75, -0.75, -1.0, 0.25, -1.0, -0.25, 0.0, -1.0, 0.5, -0.25, 0.0, 0.75, 0.5, 0.5, 0.0, -0.25, 0.0, -0.5, 0.75, 1.0, 0.0, -0.75, -0.5, -0.5, 0.0, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, 1.0, 0.0, -1.0, 0.0, 0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.25, -0.25, 1.0, 0.75, ]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query001.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query100.destroy()
    buffer101.destroy()
    
    const array8 = new Float32Array([0.25, 0.0, 1.0, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, -1.0, -0.75, -0.5, -0.75, -1.0, -1.0, 0.5, 0.5, -0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 1.0, -0.25, 0.5, -0.75, 0.0, 0.5, -0.25, 0.0, 0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 0.0, -0.5, -0.25, -1.0, 0.5, 0.25, -1.0, 0.25, -0.75, -0.5, -0.75, -0.25, 0.5, 0.75, -0.75, 0.0, 0.25, -1.0, 0.75, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, 0.5, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, -0.75, -0.75, -0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, 0.75, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 1.0, -1.0, 0.75, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([0.5, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 0.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, -1.0, 0.25, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, 1.0, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, -0.5, -0.5, -0.75, 0.75, 0.5, -0.75, -0.75, 0.0, 0.0, -0.25, 0.5, -0.25, -0.75, 0.5, 1.0, -0.5, 0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.0, 0.0, -0.25, 0.0, -0.75, 0.0, -0.75, -1.0, -1.0, -0.5, -0.5, -0.5, -0.25, 0.5, -1.0, 0.25, -0.75, 0.25, 0.25, -0.75, 0.0, -0.75, -0.75, -1.0, ]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    query101.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array10 = new Float32Array([0.0, -0.5, 0.5, 0.0, 0.75, 0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.75, 0.0, 0.0, 1.0, -0.25, -1.0, 0.75, -0.75, 0.75, -0.75, 0.25, 0.75, 0.0, 0.5, -0.5, -0.25, -0.5, 0.75, -0.75, 0.25, 1.0, -1.0, 0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.75, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, 0.25, 0.0, 1.0, -1.0, 0.75, 0.75, 0.0, -0.5, -1.0, -0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 0.0, -1.0, 0.25, -0.25, -0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.5, ]);
    buffer100.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query001.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    query000.destroy()
    query102.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query102.destroy()
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const array11 = new Float32Array([0.0, 0.0, 0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 1.0, 0.25, 0.25, -0.75, -1.0, 1.0, 0.0, -1.0, 0.25, 0.5, -0.75, -0.25, -0.25, -0.75, 0.5, 0.75, 0.25, -1.0, -0.75, 0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -1.0, 0.0, -0.25, 0.5, 0.75, -0.5, -1.0, 0.75, -0.25, 0.25, -0.75, 0.0, 1.0, 0.25, 0.5, 1.0, -1.0, 0.75, -1.0, 1.0, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, 0.0, 0.75, -0.25, -1.0, -0.5, 0.75, -0.5, 0.0, -0.25, 0.75, -0.75, 0.0, 1.0, -0.5, -0.25, -0.25, 0.5, 0.75, 1.0, 1.0, 0.25, 0.0, 0.5, 0.0, -0.25, 0.0, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, -0.5, -0.5, 0.0, 0.75, -0.25, 0.0, -0.5, 0.75, -0.25, ]);
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    render_bundle_encoder002.popDebugGroup();
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
    buffer003.destroy()
    
    query101.destroy()
    const array12 = new Float32Array([0.25, -1.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, 0.5, -0.75, 0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 0.5, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.75, 0.5, 0.75, 0.25, 0.25, -0.25, -0.75, 0.75, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, -1.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, 0.5, 1.0, -0.75, 0.0, -0.5, 1.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -0.5, 1.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.5, -0.5, -0.25, 0.25, 0.75, 0.25, 0.0, 0.25, -0.25, -0.5, -0.25, 1.0, ]);
    const array13 = new Float32Array([0.25, 0.0, -0.5, 1.0, 0.5, -0.5, 1.0, -1.0, 0.5, -0.75, -0.75, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 1.0, -1.0, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, -1.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, 0.75, -0.25, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, -0.75, 0.0, -1.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 0.0, 1.0, -0.75, -0.25, -0.5, 1.0, -0.5, 1.0, 0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 0.25, -0.75, -0.25, 0.5, 0.5, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.75, -0.25, -1.0, -1.0, 0.25, -0.25, -1.0, -0.5, -0.5, -0.25, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    buffer004.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    query000.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query101.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query100.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query101.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query002.destroy()
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    query104.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer002 = command_encoder002.finish();
    query100.destroy()
    device20.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array14 = new Float32Array([0.75, 0.25, -0.75, 1.0, -0.25, -0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 0.75, 1.0, -0.25, -1.0, 0.25, 0.75, 0.0, 0.25, 0.5, -0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.5, -0.25, -0.5, 1.0, -0.5, -0.75, 0.25, 0.75, 1.0, -0.25, -0.5, -0.5, -0.25, -0.25, 0.75, 0.5, 0.5, -0.25, 0.0, 0.75, 0.5, 0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.75, 0.25, -0.25, 0.75, 0.75, 0.0, -0.5, 0.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.25, 0.25, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -1.0, -0.25, -1.0, 0.25, 0.0, ]);
    
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder001.popDebugGroup();
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.submit([command_buffer002, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    buffer005.destroy()
    query102.destroy()
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
    query103.destroy()
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query001.destroy()
    
    
    query100.destroy()
    query003.destroy()
    
    
    
    
    query100.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    buffer102.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    device00.pushErrorScope("internal");
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query100.destroy()
    command_encoder300.pushDebugGroup("mygroupmarker")
    query105.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    query002.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    command_encoder201.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const array15 = new Float32Array([-1.0, -0.25, 0.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, -1.0, -1.0, 0.5, -0.5, -1.0, 0.25, -0.75, 0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, 0.5, 0.0, -1.0, -0.75, -0.75, 0.5, 0.75, -0.75, 1.0, -0.5, 0.5, -0.25, 1.0, -0.5, -0.25, 0.5, 0.5, -0.5, 0.75, 0.0, 1.0, -0.75, -0.75, -0.75, 0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 1.0, 0.25, 0.75, 0.25, 0.0, -0.25, 0.0, 0.25, 1.0, 0.25, 0.25, 0.25, -0.5, 0.75, -0.25, -0.75, 0.75, -0.5, -1.0, 0.75, -1.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -0.5, -0.25, -1.0, -0.75, -0.75, -0.75, -0.25, ]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query104.destroy()
    query200.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const array16 = new Float32Array([1.0, 0.5, -0.75, -1.0, 0.0, -1.0, 1.0, 0.5, 0.25, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, -0.75, 0.75, -1.0, -0.5, -1.0, 0.5, 0.0, -0.75, -0.75, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.75, -0.75, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 0.5, 0.0, -1.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.75, -0.5, -0.5, 1.0, -0.25, -0.75, -1.0, 0.25, 0.5, -1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.5, -0.25, -1.0, 0.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 0.25, ]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array13, 0, array13.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query104.destroy()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query102.destroy()
    
    buffer001.destroy()
    buffer104.destroy()
    const command_buffer201 = command_encoder201.finish();
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array17 = new Float32Array([-0.5, 0.25, 0.5, 1.0, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.25, 0.5, -0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.75, 0.75, -0.5, 0.0, -0.5, 1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, -1.0, -0.5, -0.75, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, 1.0, 0.25, -1.0, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.75, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 1.0, 1.0, 0.25, -0.25, -0.75, -0.25, -0.25, 0.25, -0.25, 0.0, -0.25, 0.25, 0.5, 0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, -1.0, 0.0, -0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 1.0, 1.0, -0.75, 1.0, -1.0, ]);
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    command_encoder300.clearBuffer(buffer300);
    query105.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer300.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query004.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query200.destroy()
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout005]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    query000.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout005]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    const command_buffer204 = command_encoder204.finish();
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query104.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer103.destroy()
    command_encoder301.popDebugGroup()
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    query200.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout003]
    });
    query300.destroy()
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder101.popDebugGroup();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query100.destroy()
    device00.queue.writeBuffer(buffer006, 0, array11, 0, array11.length);
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array16, 0, array16.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query101.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    render_bundle_encoder102.popDebugGroup();
    query003.destroy()
    query102.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query104.destroy()
    query106.destroy()
    render_bundle_encoder201.popDebugGroup();
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    query107.destroy()
    const array18 = new Float32Array([-0.5, 1.0, 0.5, 0.0, 0.5, -1.0, 0.25, 0.0, -0.5, -0.5, 0.75, -0.25, -1.0, 0.25, 0.0, -0.25, 0.5, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, 0.0, 0.75, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, 0.75, 1.0, 0.25, -1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.25, 0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.25, 0.25, 0.5, 0.25, 0.0, -0.25, -0.5, -0.5, 0.75, 1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 0.25, 0.0, -0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, 1.0, -1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 0.25, 0.0, ]);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const command_buffer004 = command_encoder004.finish();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer006, 0, array17, 0, array17.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    query001.destroy()
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    query101.destroy()
    device10.queue.writeBuffer(buffer107, 0, array15, 0, array15.length);
    device00.queue.writeBuffer(buffer006, 0, array15, 0, array15.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    buffer200.destroy()
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer006, 0, array16, 0, array16.length);
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    buffer107.destroy()
    
    query106.destroy()
    device20.pushErrorScope("validation");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device00.queue.writeBuffer(buffer006, 0, array18, 0, array18.length);
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
    query300.destroy()
    
    
    buffer201.destroy()
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_buffer500 = command_encoder500.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    buffer106.destroy()
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer108, 0, array13, 0, array13.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer108.destroy()
    query002.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    query201.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    query100.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.pushErrorScope("validation");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    query200.destroy()
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    query104.destroy()
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout005]
    });
    query101.destroy()
    render_bundle_encoder200.popDebugGroup();
    
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
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device40.pushErrorScope("out-of-memory");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query301.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device00.queue.writeBuffer(buffer006, 0, array11, 0, array11.length);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeBuffer(buffer006, 0, array17, 0, array17.length);
    device00.queue.writeBuffer(buffer006, 0, array16, 0, array16.length);
    query002.destroy()
    device50.pushErrorScope("internal");
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([command_buffer004, ]);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer101, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer201, command_buffer204, ]);
}