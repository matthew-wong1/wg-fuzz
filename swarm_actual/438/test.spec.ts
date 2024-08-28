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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder001.insertDebugMarker("mymarker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query100.destroy()
    
    query000.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer001 = command_encoder001.finish();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder002.clearBuffer(buffer000);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query000.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const command_buffer005 = command_encoder005.finish();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
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
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    query002.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    query006.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    query001.destroy()
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("internal");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    query006.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder007.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
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
    query001.destroy()
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    query005.destroy()
    query004.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
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
    query001.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    query008.destroy()
    query007.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query007.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query009.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query005.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    
    command_encoder008.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    command_encoder200.clearBuffer(buffer202);
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder008.clearBuffer(buffer000);
    command_encoder008.clearBuffer(buffer000);
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    command_encoder008.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query007.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query008.destroy()
    
    
    query004.destroy()
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    query006.destroy()
    command_encoder007.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout005]
    });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    query000.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query001.destroy()
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout005]
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder009.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer009 = command_encoder009.finish();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    query200.destroy()
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0040.insertDebugMarker("marker")
    query004.destroy()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    query009.destroy()
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    device20.queue.submit([command_buffer200, ]);
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    query002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.submit([command_buffer009, ]);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    
    query007.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query005.destroy()
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder0070.insertDebugMarker("marker")
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout005]
    });
    query002.destroy()
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    query005.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query000.destroy()
    query008.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query009.destroy()
    query003.destroy()
    
    
    
    query009.destroy()
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    query200.destroy()
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query0012 = device00.createQuerySet({
        label: "query0012",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    command_encoder0010.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query008.destroy()
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
    query000.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const query0013 = device00.createQuerySet({
        label: "query0013",
        type: "occlusion",
        count: 32,
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder0010.copyTextureToBuffer(
        {
            texture: texture007
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    query0011.destroy()
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query0013.destroy()
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    
    
    query004.destroy()
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    query009.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    query003.destroy()
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    command_encoder201.copyBufferToBuffer(
        buffer201,
        0,
        buffer202,
        0,
        400
    );
    
    query008.destroy()
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query0012.destroy()
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    query002.destroy()
    const command_buffer201 = command_encoder201.finish();
    
    
    
    
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    query0013.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder00100.insertDebugMarker("marker")
    render_bundle_encoder002.insertDebugMarker("marker");
    query003.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture205
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    
    query000.destroy()
    query008.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_buffer202 = command_encoder202.finish();
    
    query200.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder00100.insertDebugMarker("marker")
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
}