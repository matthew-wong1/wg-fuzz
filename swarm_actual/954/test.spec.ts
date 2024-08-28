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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    command_encoder001.insertDebugMarker("mymarker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query001.destroy()
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
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
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    query000.destroy()
    query000.destroy()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    command_encoder002.insertDebugMarker("mymarker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.insertDebugMarker("mymarker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
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
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
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
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    query100.destroy()
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
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
    command_encoder100.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query101.destroy()
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    query000.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    query001.destroy()
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    command_encoder100.insertDebugMarker("mymarker");
    query100.destroy()
    query100.destroy()
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.insertDebugMarker("mymarker");
    
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query003.destroy()
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    query102.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    query101.destroy()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    query003.destroy()
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
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
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    query003.destroy()
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    query001.destroy()
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
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
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
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
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
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
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
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
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    query004.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout006]
    });
    query101.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder008.pushDebugGroup("mygroupmarker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
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
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    command_encoder007.pushDebugGroup("mygroupmarker")
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.insertDebugMarker("mymarker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    query101.destroy()
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout005]
    });
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder005.insertDebugMarker("mymarker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    query100.destroy()
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
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
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    query003.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder007.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer004,
        0
    )
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer004,
        0
    )
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
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
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    command_encoder008.insertDebugMarker("mymarker");
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer0010,
        0
    )
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    command_encoder009.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder007.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    command_encoder009.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer0010,
        0
    )
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder009.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer005,
        0
    )
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
}