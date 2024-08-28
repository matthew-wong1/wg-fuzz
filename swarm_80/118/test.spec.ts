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
    const array0 = new Float32Array([0.5, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 0.25, -0.25, 0.0, 0.75, -0.5, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, 0.5, -0.25, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.0, 0.25, 0.5, -0.5, -0.75, 1.0, 0.75, -0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -0.75, 0.0, 0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.75, 0.0, 0.25, -0.5, -1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, -1.0, 0.75, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, 0.5, 1.0, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 1.0, 0.75, -0.75, 0.5, ]);
    
    const array1 = new Float32Array([0.0, 0.75, -0.5, 0.75, -0.25, -0.75, -0.5, -1.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, -0.75, -0.25, 0.25, -0.25, 0.75, 0.25, 0.0, -0.25, 1.0, 0.75, 0.75, -0.75, 1.0, -0.75, -1.0, -0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, -0.75, 0.25, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, -0.75, -0.25, -0.5, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.75, 0.25, -1.0, -1.0, -0.5, -0.75, 1.0, 0.25, 0.25, 0.5, 1.0, -0.5, 0.5, -1.0, -0.75, 0.0, -0.75, 0.25, -0.5, 0.0, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, -1.0, -0.5, ]);
    const array2 = new Float32Array([0.25, 0.75, -1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, 0.25, 1.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -0.5, 1.0, -0.5, 0.25, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, -0.25, 0.25, 1.0, 0.5, 0.5, 0.75, 0.75, -1.0, -0.25, -0.5, 1.0, 0.0, -0.5, -0.75, 0.0, -0.5, 0.0, -0.75, 0.25, -0.5, -0.75, -0.75, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, 0.75, 0.5, 0.5, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.0, -1.0, 1.0, -0.75, 0.25, 1.0, -0.25, -1.0, 0.5, -0.75, 0.25, -0.25, 1.0, 0.0, -1.0, 0.25, -0.75, ]);
    
    
    
    const array3 = new Float32Array([0.0, -0.25, 1.0, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -1.0, -0.25, -1.0, -1.0, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.25, 0.75, -0.25, -1.0, 1.0, 0.25, -1.0, -1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.5, 0.5, -0.25, 1.0, 1.0, -0.25, -0.75, -0.5, 1.0, 0.5, -0.5, -0.5, -0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.25, 0.5, 1.0, 0.0, 0.0, 0.75, -1.0, 0.25, -0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 0.75, -0.75, 0.75, 0.25, -0.25, 1.0, -0.5, -0.5, -0.5, 0.0, 0.5, -0.5, ]);
    const array4 = new Float32Array([0.75, -1.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.5, 0.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.5, 0.5, -0.25, 0.75, 0.0, -0.5, 0.25, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, -0.5, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.0, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, 0.75, -0.75, -1.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.25, -0.75, -1.0, -0.5, -0.75, -0.25, 1.0, 0.25, -0.75, -0.25, 0.75, 0.75, 0.0, 1.0, 0.75, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
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
    device00.queue.submit([command_buffer000, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const array5 = new Float32Array([0.5, -0.25, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.5, 1.0, -0.75, -0.5, 0.0, 0.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, -0.25, -1.0, -1.0, -0.5, 1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 1.0, -1.0, 0.25, -0.75, 0.75, 1.0, -0.5, -0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.0, 0.5, -0.25, 0.0, 0.25, 0.0, -0.75, 0.25, -1.0, 0.0, -0.5, 0.0, 1.0, -1.0, 0.0, 0.75, 0.75, -0.25, -0.5, -0.75, 0.5, 0.5, -1.0, 0.0, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer001 = command_encoder001.finish();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder003.insertDebugMarker("mymarker");
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    texture000.destroy();
    const array6 = new Float32Array([0.0, 0.75, 1.0, 0.0, 0.0, -0.25, -0.25, 0.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.75, 0.25, 1.0, 0.0, 0.0, 0.75, 1.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.75, -0.75, -0.25, 1.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.75, -0.75, -0.25, 0.75, 1.0, 0.25, 0.75, -0.25, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -0.25, -0.5, 1.0, -0.25, 1.0, 1.0, 0.0, -0.75, 0.75, -0.25, -0.25, -0.25, -0.25, -0.5, 0.75, 0.0, -0.5, 0.5, -0.5, 0.5, 0.25, -0.25, 0.75, 0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    query000.destroy()
    const array7 = new Float32Array([1.0, 0.25, -1.0, 0.5, -0.25, -0.5, -1.0, -0.5, -1.0, 0.25, 1.0, -1.0, 0.5, -1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -1.0, -1.0, -0.75, -0.5, -1.0, 0.25, -0.75, 0.75, 0.0, 0.0, 0.0, 0.75, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -1.0, 0.5, -1.0, 0.5, 0.5, -0.5, -0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, 0.25, 0.75, 1.0, 0.75, 0.0, -0.5, 1.0, 0.75, -0.75, 1.0, 0.5, 0.0, 0.25, -0.5, -0.5, 0.75, -0.5, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, -0.5, -1.0, -0.5, 0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, 0.25, 0.75, 0.75, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array8 = new Float32Array([1.0, -0.5, 0.5, 0.25, 0.0, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, 0.5, 0.0, -1.0, -0.5, -0.5, 0.25, 0.75, -0.25, -0.75, 0.0, 0.75, 0.25, 0.0, 1.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, -0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -0.5, 0.0, -1.0, -0.5, -0.75, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.75, 0.25, -0.25, 0.0, -0.25, 0.75, -1.0, 0.5, 0.75, 0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, -0.25, -0.25, ]);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    texture001.destroy();
    query000.destroy()
    query000.destroy()
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder003.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("internal");
    
    query000.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture100.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer001.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const array9 = new Float32Array([0.75, 0.0, 0.25, -0.75, 0.5, 0.5, 0.5, -0.75, 0.0, 0.25, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, -0.75, -0.25, -0.5, -0.5, -0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, 0.5, 0.75, 0.25, 0.0, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -0.25, -1.0, -0.5, -0.25, -0.5, -0.5, -1.0, 1.0, 1.0, -0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, -0.5, -0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 0.5, 0.0, 1.0, -0.5, ]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    buffer000.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const array10 = new Float32Array([1.0, 0.5, 0.5, -0.5, -0.25, 0.25, -0.25, -1.0, -0.25, 1.0, -1.0, -1.0, 0.0, 1.0, 0.0, -0.25, -0.25, 0.0, -1.0, -0.5, 0.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, 0.25, -0.5, 0.25, -0.25, -0.25, -1.0, -0.25, 0.25, -0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -1.0, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.25, 1.0, 0.25, 0.5, -0.75, 0.25, 0.75, 0.0, 0.0, -1.0, 0.5, -0.75, -0.25, 0.75, -0.75, 0.5, 0.75, 0.25, 0.25, 1.0, 1.0, 0.25, -0.25, -1.0, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 1.0, 0.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device20.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device30.destroy();
    const command_buffer101 = command_encoder101.finish();
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer100.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.submit([command_buffer001, ]);
    buffer004.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    query200.destroy()
    query201.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.popDebugGroup()
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer003.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    texture003.destroy();
    
    
    texture002.destroy();
    device10.queue.writeTexture({ texture: texture102 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("validation");
    
    buffer002.destroy()
    
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture102.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query201.destroy()
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.popDebugGroup();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1020.popDebugGroup()
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    query202.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    query200.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer101.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture103.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.popDebugGroup();
    
    buffer200.destroy()
    
    command_encoder103.insertDebugMarker("mymarker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1020.popDebugGroup()
    
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    query201.destroy()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    query000.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    buffer102.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture004 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    query201.destroy()
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device20.pushErrorScope("out-of-memory");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture004 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    query200.destroy()
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    texture200.destroy();
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder400.popDebugGroup();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    buffer103.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query205.destroy()
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query001.destroy()
    
    compute_pass_encoder1030.popDebugGroup()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture106.destroy();
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
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout003]
    });
    device10.queue.writeBuffer(buffer104, 0, array10, 0, array10.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer203 = command_encoder203.finish();
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture004.destroy();
    query202.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture400.destroy();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    const array11 = new Float32Array([0.25, 0.0, 0.75, 1.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, -0.5, -0.75, 0.75, -0.5, -1.0, 0.25, -0.25, -0.25, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.75, 0.75, 0.75, -0.75, 0.0, 0.0, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, 0.0, -0.25, -0.5, -1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.75, 0.5, 0.0, 0.0, -0.5, 1.0, -0.75, 0.25, 0.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, 1.0, -0.25, 0.5, 0.75, 0.25, 0.0, 0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.5, -0.5, 0.75, -0.5, -0.25, -0.25, -0.5, -0.5, -0.75, -0.5, -0.5, ]);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture105.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    const array12 = new Float32Array([0.5, 0.5, 1.0, 0.25, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, -0.75, 0.5, -0.5, 1.0, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, 0.75, -0.5, -0.25, 1.0, 1.0, -0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -0.5, 0.0, 0.75, 0.0, -0.5, -0.5, -0.75, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, 0.5, 0.0, 0.0, 0.25, 0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 0.25, -0.5, -0.25, 0.0, -0.25, -0.75, -0.5, 1.0, -0.25, -1.0, -0.25, 0.75, 0.75, 0.25, -0.25, 0.75, 1.0, 0.5, 0.75, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, 1.0, -0.75, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, ]);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    render_bundle_encoder100.popDebugGroup();
    
    query003.destroy()
    query202.destroy()
    device20.queue.writeTexture({ texture: texture205 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    query202.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder201.popDebugGroup();
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    texture204.destroy();
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture202.destroy();
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    query200.destroy()
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer201.destroy()
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer005.destroy()
    const array13 = new Float32Array([-1.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, 0.0, -0.5, 0.5, 0.25, 0.25, 0.75, -1.0, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.5, -0.75, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -0.25, -0.5, 0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.25, -0.75, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 0.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.5, 0.25, 0.5, 0.5, -0.25, 0.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.5, 0.5, -0.25, 1.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.5, 0.0, -0.5, 0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 0.25, ]);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder1040.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer006.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
}