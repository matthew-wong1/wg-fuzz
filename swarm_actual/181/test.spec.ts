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
    const array0 = new Float32Array([-0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 0.0, 0.0, 0.5, -1.0, 0.25, -1.0, 0.75, 0.25, 1.0, -0.75, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -0.75, 0.0, -0.25, 0.25, -0.5, 0.0, 0.25, 0.75, -0.75, -1.0, 0.25, -1.0, -0.5, 0.25, -0.5, 0.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.5, 0.5, -0.5, -1.0, -1.0, -0.25, 1.0, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.5, 0.75, 0.25, 0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.0, -0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 0.75, 0.75, 0.75, ]);
    
    const array1 = new Float32Array([0.25, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.25, 1.0, 0.5, 0.5, -0.25, 1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 1.0, -0.75, -0.25, 1.0, 1.0, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, 0.25, 0.25, 0.75, 1.0, 1.0, 0.25, -0.25, -1.0, 1.0, -0.5, -0.5, 1.0, -0.75, -0.5, -0.5, 0.5, 0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.5, 0.25, -0.75, -0.25, -0.75, -1.0, 0.75, -0.75, 0.0, -1.0, -1.0, 0.25, -1.0, 0.5, -0.75, 0.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.25, -1.0, -0.5, 0.75, 0.25, 0.75, 0.0, -0.75, -1.0, 0.25, 0.25, -0.75, 0.5, ]);
    
    const array2 = new Float32Array([1.0, 1.0, 0.25, -0.5, 0.75, 0.75, -0.75, -0.75, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, -1.0, 0.5, -0.5, -0.25, -0.25, 0.0, 0.25, -1.0, -0.25, -0.75, 0.0, -0.25, 0.75, -0.75, 0.5, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, 0.25, 0.75, -0.75, 0.25, 0.25, -1.0, 0.0, 0.5, 0.25, -0.75, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.25, 0.5, -0.25, -0.75, 0.25, -1.0, -0.25, 0.0, -1.0, -0.5, 0.0, 0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, 0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.25, 0.5, 0.5, 0.75, 0.75, 0.0, 0.75, -0.25, -1.0, 0.0, 0.25, 0.0, 0.25, -0.75, 0.5, 1.0, ]);
    const array3 = new Float32Array([0.5, 0.5, -0.5, 0.25, 0.75, -0.5, -0.5, 0.75, 1.0, 0.5, 1.0, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, 0.5, -0.75, 0.0, -0.25, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, 0.75, -0.75, 0.75, 0.75, 0.75, 0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.5, 0.0, 0.75, 1.0, 0.75, 0.25, -1.0, 0.5, 0.0, 0.5, 1.0, -0.75, -0.5, -0.75, 0.5, 0.0, -0.5, 1.0, -0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, 0.25, -0.75, -1.0, -0.75, -0.25, -0.75, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([0.0, 0.0, -0.25, -0.5, 0.25, -0.25, 0.75, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, -1.0, 0.75, -0.5, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, 0.25, 0.75, 0.0, -1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.5, -1.0, 0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -0.75, 0.75, -0.75, 0.0, -1.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, 0.25, -0.5, 0.5, -0.5, 1.0, 0.5, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, 0.25, -0.75, -0.5, 1.0, -0.25, 1.0, 0.5, 0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer101.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    device10.destroy();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query002.destroy()
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.25, -0.25, 0.0, -0.75, 0.5, 0.5, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.25, -0.25, 0.5, -0.25, 1.0, -0.75, 0.25, -0.5, 0.0, 1.0, 0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 0.25, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, 0.25, -0.5, -0.75, -0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 1.0, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, -0.25, 1.0, 1.0, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.75, 1.0, -0.75, 1.0, -0.75, 0.5, 1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.5, 0.0, -0.25, -0.25, 0.25, -0.75, 0.75, 1.0, 0.75, ]);
    device40.destroy();
    buffer001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("internal");
    
    query002.destroy()
    
    
    
    
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    query200.destroy()
    
    query200.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer000.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    query204.destroy()
    const array6 = new Float32Array([-0.75, -0.25, -0.75, 0.75, 0.75, 0.0, -0.25, 1.0, -0.5, -1.0, 0.75, -1.0, 0.75, 0.5, 0.75, -1.0, -0.25, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 0.5, 0.5, 0.25, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 0.0, 1.0, 0.0, -1.0, 1.0, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.0, 0.75, -0.75, -1.0, -0.25, -0.75, -0.25, -1.0, -0.25, -1.0, 1.0, 1.0, -1.0, 0.5, 0.75, -0.25, 0.0, -0.5, -1.0, 0.5, -0.25, 0.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.75, 1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 1.0, 0.25, -0.75, 0.0, 0.25, -0.75, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer202.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query204.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    query201.destroy()
    
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
    query001.destroy()
    query002.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query000.destroy()
    buffer200.destroy()
    query000.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query000.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    query205.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    query205.destroy()
    query002.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const array7 = new Float32Array([-0.75, 0.25, 1.0, 0.5, -0.75, 0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, -0.25, -0.75, 0.25, -1.0, -1.0, -1.0, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, -0.5, -0.75, -1.0, -0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, -0.5, -0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.5, -0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.5, 0.0, -0.25, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.0, -1.0, 0.5, -1.0, -0.5, -0.5, 1.0, 1.0, ]);
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query002.destroy()
    query201.destroy()
    
    
    
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array8 = new Float32Array([-0.25, 0.25, -0.5, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.5, -0.75, -0.5, -0.25, -1.0, 0.5, 0.75, -0.75, -0.25, -0.5, 0.5, 0.75, -0.25, -0.75, 1.0, -1.0, 0.25, -0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 1.0, 1.0, -1.0, 1.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, -0.75, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, -0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 1.0, -0.5, 0.25, 0.5, -1.0, -0.5, 0.0, -0.75, 0.25, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.75, 0.0, -1.0, -0.25, -1.0, -0.5, 0.5, -1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.25, 0.5, 0.25, -0.75, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array9 = new Float32Array([-0.25, -0.25, -1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 0.0, 0.0, -1.0, 0.0, -0.25, 0.25, 0.25, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, -1.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.0, 0.5, -0.75, -1.0, -0.75, 0.0, 0.75, -1.0, -1.0, 0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -1.0, -1.0, 0.5, 0.25, 0.25, -0.5, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, -0.25, 0.25, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, 0.0, -0.25, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, -0.25, -0.25, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, 0.25, 0.0, ]);
    
    
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    
    
    query202.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    command_encoder203.insertDebugMarker("mymarker");
    
    buffer004.destroy()
    buffer003.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    query003.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    query003.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    const array10 = new Float32Array([0.5, 1.0, 1.0, 0.25, -0.75, 0.25, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, 0.0, 0.0, -0.75, -0.25, 0.5, -1.0, -0.5, -0.25, -0.5, 0.0, 0.75, -0.75, -0.25, -0.75, 0.75, -0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 1.0, 1.0, -0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -0.5, 0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, 1.0, -1.0, 0.5, -0.5, 0.0, 0.0, 0.25, 0.5, 0.0, 0.25, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.0, 0.0, 0.25, 0.75, ]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query004.destroy()
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    
    
    query004.destroy()
    query002.destroy()
    command_encoder202.popDebugGroup()
    query001.destroy()
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    const array11 = new Float32Array([1.0, -0.75, 1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.25, 0.25, 1.0, 0.25, 1.0, 1.0, -1.0, -1.0, -0.5, 1.0, 1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.75, 0.75, -0.75, 0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 0.25, 0.25, -0.75, 1.0, 1.0, 0.75, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.25, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 1.0, 0.25, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, 0.25, 0.0, -0.75, -1.0, -0.75, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, ]);
    
    command_encoder202.insertDebugMarker("mymarker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query208.destroy()
    query205.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    const array12 = new Float32Array([-0.5, 0.5, -0.75, 0.75, -0.75, 1.0, -0.75, 0.25, 1.0, -1.0, -0.5, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 1.0, 0.25, 0.5, 0.5, 0.5, -0.25, -1.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.75, -0.5, 0.75, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 0.25, 0.5, 0.75, 0.25, -0.25, 0.0, 0.5, -0.25, 1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 0.25, 0.25, 0.0, -1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.0, -0.25, 0.75, 0.25, 0.5, -0.25, -0.75, 0.75, 0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    query200.destroy()
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query209.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const query2011 = device20.createQuerySet({
        label: "query2011",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder203.popDebugGroup()
    
    
    query205.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query207.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query208.destroy()
    
    const array13 = new Float32Array([-0.25, -0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -1.0, 1.0, 0.75, 0.5, 0.75, -0.25, 0.75, -0.5, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -0.5, -0.5, 0.5, 1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.25, 0.5, 1.0, 1.0, -1.0, 0.75, 0.0, -0.5, 1.0, 0.75, 0.25, 0.5, -0.5, -1.0, 0.0, 0.25, -0.75, -0.25, 0.75, 0.75, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.5, 1.0, -0.5, 0.25, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, 1.0, -1.0, -0.75, -1.0, -0.25, 0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -0.25, -0.25, ]);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    buffer006.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    query002.destroy()
    query004.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query200.destroy()
    query206.destroy()
    query208.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    query003.destroy()
    
    const query2012 = device20.createQuerySet({
        label: "query2012",
        type: "occlusion",
        count: 32,
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    query006.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    query205.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query204.destroy()
    query003.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    
    query003.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    buffer007.destroy()
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    
    
    query205.destroy()
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    query201.destroy()
    query2011.destroy()
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer005.destroy()
    
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder004.insertDebugMarker("mymarker");
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    query200.destroy()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query208.destroy()
    query2011.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query206.destroy()
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    query2010.destroy()
    
    device50.pushErrorScope("out-of-memory");
    
    query209.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    query003.destroy()
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
    
    query203.destroy()
    
    query007.destroy()
    
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    query2011.destroy()
    query2012.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    
    query000.destroy()
    command_encoder004.popDebugGroup()
    
    
    command_encoder004.insertDebugMarker("mymarker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query2010.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture2010 = device20.createTexture({
        label: "texture2010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    command_encoder004.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query202.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query005.destroy()
    
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer205.destroy()
    
    command_encoder500.insertDebugMarker("mymarker");
    query208.destroy()
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    query2010.destroy()
    
    
    query006.destroy()
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    query201.destroy()
    
    query204.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    query001.destroy()
    
    query500.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder500.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query208.destroy()
    query002.destroy()
    query209.destroy()
    query206.destroy()
    
    query208.destroy()
    const texture2011 = device20.createTexture({
        label: "texture2011",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query006.destroy()
    query203.destroy()
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.pushErrorScope("validation");
    
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
    
    query207.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder500.popDebugGroup()
}