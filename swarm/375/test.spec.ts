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
    
    const array0 = new Float32Array([1.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.5, 1.0, 0.25, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, -1.0, 0.25, -0.25, -1.0, 0.5, -0.25, -1.0, -0.25, -1.0, -1.0, 1.0, 0.75, 0.75, -1.0, -0.75, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.25, -0.75, 0.0, 0.0, 0.25, 1.0, 0.0, 0.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.0, -0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, -0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 0.75, -0.25, 1.0, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.0, 0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -0.25, 0.75, -0.25, 0.0, -0.75, -1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, -1.0, 0.75, 1.0, 0.5, -1.0, -0.75, -0.75, 1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.25, 0.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, 0.0, -0.25, -1.0, 1.0, -0.5, 0.75, -1.0, -1.0, 0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 0.25, 0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -0.75, 1.0, -1.0, -1.0, 1.0, -1.0, 0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.75, -0.75, 0.0, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.5, 1.0, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device00.destroy();
    
    const array2 = new Float32Array([1.0, 0.0, -1.0, 0.75, -1.0, -0.5, 1.0, 0.0, -0.5, -0.25, 0.0, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, -0.75, -0.25, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, -1.0, -0.25, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, 0.75, -0.75, 1.0, -0.75, -0.25, -1.0, 0.75, -0.25, -0.5, 1.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.75, 0.5, -0.75, -1.0, 0.25, -0.75, 0.75, 0.0, -0.75, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, 0.0, -0.5, 0.0, 0.75, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.25, 0.0, 0.25, -0.25, 0.5, 0.25, 0.5, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 0.5, ]);
    const array3 = new Float32Array([0.25, -0.5, -0.25, -0.75, 0.5, -0.25, 0.5, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, -0.25, 0.0, 1.0, 1.0, -0.75, -1.0, 0.25, 0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, 1.0, -1.0, 0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 0.25, 0.5, -0.75, 1.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.5, 0.25, 0.5, 0.5, 1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 0.5, 1.0, -0.5, 0.5, -0.75, 0.5, 1.0, -1.0, -0.75, -0.5, 0.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.75, -0.5, 0.5, 0.75, 0.75, -1.0, 1.0, 0.25, 0.25, -0.5, -0.25, 1.0, -0.75, 0.75, 0.5, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, 1.0, -1.0, -1.0, -0.25, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([-0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.75, 0.75, -0.25, -0.5, 1.0, 0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.5, -0.25, 0.25, -0.75, 1.0, -0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 0.5, 0.75, 0.0, -0.25, -0.25, 1.0, 0.5, 0.0, 0.5, -1.0, 0.25, 1.0, -0.5, 0.75, 0.25, -1.0, -0.25, -0.5, -1.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.25, 0.25, 0.5, 0.0, -0.75, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array5 = new Float32Array([-0.25, -0.75, 0.0, -0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, 1.0, -0.75, -1.0, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 0.0, -0.5, -0.5, -0.5, -0.5, -0.25, 0.25, -0.5, -1.0, -1.0, 0.0, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, 0.0, -1.0, 0.5, 0.5, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 0.0, -1.0, -0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 0.75, 0.0, 1.0, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.pushErrorScope("validation");
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_buffer302 = command_encoder302.finish();
    
    
    buffer300.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const array6 = new Float32Array([-0.75, 1.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, 1.0, -0.5, 1.0, -0.5, -1.0, 0.5, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, -0.25, -0.25, 0.0, 0.0, -0.5, 0.0, 0.5, 0.0, 0.5, -0.5, -0.5, -0.75, -0.75, -0.75, -0.25, 0.5, 0.25, -0.25, 1.0, 1.0, 0.5, 0.75, 0.5, -1.0, -0.25, 0.25, -0.5, -0.25, -0.5, -0.5, -0.25, 0.75, -1.0, 0.75, -0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -0.75, -0.75, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 0.0, -0.5, 0.25, 0.0, -0.5, -0.25, 1.0, 1.0, -0.5, -1.0, -0.75, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, -0.25, 0.5, 0.75, -1.0, 1.0, -1.0, ]);
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    command_encoder303.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.pushErrorScope("out-of-memory");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    device40.destroy();
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture300.destroy();
    device20.destroy();
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
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
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture301.destroy();
    device50.pushErrorScope("validation");
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_buffer305 = command_encoder305.finish();
    
    buffer301.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    compute_pass_encoder3040.insertDebugMarker("marker")
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
    const array7 = new Float32Array([0.5, -0.75, 0.75, 0.75, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, -1.0, -0.5, -0.25, -0.5, -1.0, -0.75, 1.0, 0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, 0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, -1.0, 0.0, -0.25, -0.5, -1.0, 0.5, 0.75, -0.5, -0.75, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, -0.75, 0.75, -0.75, -0.75, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, 1.0, -1.0, 0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 1.0, -0.75, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    texture302.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer100.destroy()
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
    compute_pass_encoder3030.insertDebugMarker("marker")
    
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
    buffer302.destroy()
    device10.destroy();
    
    device30.pushErrorScope("out-of-memory");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture501.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    device50.pushErrorScope("internal");
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_buffer306 = command_encoder306.finish();
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    texture305.destroy();
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer303.destroy()
    
    texture303.destroy();
    texture500.destroy();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    texture304.destroy();
    
    device70.pushErrorScope("out-of-memory");
    compute_pass_encoder3040.insertDebugMarker("marker")
    buffer304.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    buffer600.destroy()
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    device70.pushErrorScope("internal");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder701.insertDebugMarker("mymarker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    texture700.destroy();
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const command_buffer500 = command_encoder500.finish();
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture701.destroy();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const command_buffer307 = command_encoder307.finish();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
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
    buffer305.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    buffer700.destroy()
    buffer306.destroy()
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    texture600.destroy();
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    compute_pass_encoder5030.insertDebugMarker("marker")
    device60.pushErrorScope("internal");
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture307.destroy();
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    texture502.destroy();
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    command_encoder308.insertDebugMarker("mymarker");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder3040.insertDebugMarker("marker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    buffer601.destroy()
    
    device70.pushErrorScope("out-of-memory");
    compute_pass_encoder5010.insertDebugMarker("marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
    const array8 = new Float32Array([-0.75, 0.0, -0.75, -0.25, -0.25, 0.25, 0.25, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, -0.5, -0.25, -1.0, -0.25, 0.75, -0.5, 0.5, -0.5, 0.75, -0.75, -0.75, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.5, -1.0, 0.75, 0.5, 0.25, 0.75, 0.75, 0.25, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, -0.75, 0.0, -0.75, 1.0, 0.25, -0.25, -0.75, -0.25, 0.25, -1.0, -0.75, 1.0, 1.0, -0.25, 0.25, 0.75, 0.25, 1.0, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, 0.0, -0.25, -0.25, -0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, 0.75, 0.25, ]);
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    const array9 = new Float32Array([0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.75, -0.25, 0.75, 0.0, 0.0, -1.0, -0.75, -0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.75, 0.25, -0.5, 1.0, 0.0, -0.75, -0.5, 0.5, 0.75, -1.0, 0.25, -0.25, -0.5, 1.0, 1.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.5, 1.0, -0.25, 0.75, 0.75, -0.75, -1.0, -0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 1.0, 0.5, 0.0, 1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -1.0, 0.75, -0.25, 0.25, 0.75, 0.5, 0.25, 0.25, 0.0, -0.5, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.5, 0.25, ]);
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_buffer502 = command_encoder502.finish();
    const command_buffer308 = command_encoder308.finish();
    texture306.destroy();
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device50.pushErrorScope("validation");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout501]
    });
    buffer701.destroy()
    
    buffer602.destroy()
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    
    device30.pushErrorScope("internal");
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout504]
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout503]
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    compute_pass_encoder7050.insertDebugMarker("marker")
    const command_buffer505 = command_encoder505.finish();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    buffer501.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture308.destroy();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    texture702.destroy();
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer500.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout504]
    });
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture503.destroy();
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout502]
    });
    texture309.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture3010 = device30.createTexture({
        label: "texture3010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("validation");
    const pipeline_layout5017 = device50.createPipelineLayout({ 
        label: "pipeline_layout5017",
        bindGroupLayouts: [bind_group_layout503]
    });
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder601.insertDebugMarker("mymarker");
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout503]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    const sampler3010 = device30.createSampler( { label: "sampler3010" } );
    compute_pass_encoder3040.insertDebugMarker("marker")
    const command_encoder706 = device70.createCommandEncoder({ label: "command_encoder706" });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    buffer503.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const command_encoder707 = device70.createCommandEncoder({ label: "command_encoder707" });
    const array10 = new Float32Array([0.0, 0.75, 0.75, 0.0, 1.0, -0.25, 0.75, -1.0, -0.5, 0.25, -0.25, 1.0, -1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 0.75, 0.25, 1.0, 0.25, 0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.75, 0.5, 0.75, 0.25, 0.25, -0.5, 1.0, -0.25, -0.25, -0.75, 0.25, -1.0, -0.5, -0.75, 0.25, -1.0, 0.5, 0.75, 0.0, -0.25, 0.75, -0.5, 1.0, -1.0, -0.25, 1.0, -0.5, -0.75, -0.75, -0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 1.0, 0.75, -1.0, 0.0, -0.5, 0.0, 0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, -1.0, 0.0, -1.0, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 1.0, 0.0, 0.25, 0.5, 0.25, 1.0, -0.75, 0.5, ]);
    device70.pushErrorScope("internal");
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder708 = device70.createCommandEncoder({ label: "command_encoder708" });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_buffer706 = command_encoder706.finish();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.pushErrorScope("out-of-memory");
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
    
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const sampler3011 = device30.createSampler( { label: "sampler3011" } );
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder7070 = command_encoder707.beginComputePass({ label: "compute_pass_encoder7070" });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    compute_pass_encoder7070.insertDebugMarker("marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5040.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture3011 = device30.createTexture({
        label: "texture3011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    texture705.destroy();
    command_encoder601.insertDebugMarker("mymarker");
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder7080 = command_encoder708.beginComputePass({ label: "compute_pass_encoder7080" });
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout501]
    });
    buffer505.destroy()
    
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer502.destroy()
    compute_pass_encoder7070.pushDebugGroup("group_marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    device50.pushErrorScope("internal");
    
    texture3010.destroy();
    compute_pass_encoder5040.insertDebugMarker("marker")
    
    compute_pass_encoder3030.insertDebugMarker("marker")
    compute_pass_encoder7010.insertDebugMarker("marker")
    compute_pass_encoder7080.pushDebugGroup("group_marker")
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout5021 = device50.createPipelineLayout({ 
        label: "pipeline_layout5021",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_buffer704 = command_encoder704.finish();
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    compute_pass_encoder7050.pushDebugGroup("group_marker")
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture704.destroy();
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    compute_pass_encoder7070.insertDebugMarker("marker")
    const command_encoder709 = device70.createCommandEncoder({ label: "command_encoder709" });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pass_encoder7090 = command_encoder709.beginComputePass({ label: "compute_pass_encoder7090" });
    buffer308.destroy()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer702.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer604.destroy()
    buffer307.destroy()
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder5040.insertDebugMarker("marker")
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout5022 = device50.createPipelineLayout({ 
        label: "pipeline_layout5022",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const command_buffer506 = command_encoder506.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}