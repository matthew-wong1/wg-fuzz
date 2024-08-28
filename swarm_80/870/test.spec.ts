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
        powerPreference: undefined
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
    device00.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.75, 0.75, 0.75, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, 1.0, -0.25, 0.75, 0.0, -1.0, -1.0, -0.75, -1.0, 0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 0.25, -0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 1.0, 1.0, -0.25, 1.0, 0.75, -1.0, 0.0, -0.5, 0.75, -0.5, -0.25, -0.5, 0.5, 0.75, -1.0, -0.5, 1.0, -0.75, 1.0, -0.5, 0.0, 0.0, 0.25, -1.0, -0.75, 1.0, 0.75, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, 0.0, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, 0.5, 0.5, 1.0, -0.75, -0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -1.0, 0.0, 0.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder000.popDebugGroup();
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const array1 = new Float32Array([0.5, -1.0, 0.0, -1.0, -0.75, -0.75, 0.75, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, 0.5, 1.0, -0.75, 1.0, -0.25, 0.25, 0.25, 0.25, -0.25, 0.25, -0.75, -1.0, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, -0.75, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.5, -0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.0, -0.25, 0.0, -0.5, -1.0, -1.0, -0.5, -0.25, 0.75, 0.5, -0.25, -0.75, 0.25, -1.0, -1.0, -0.25, 0.25, 1.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, -0.5, 0.25, 0.0, 0.5, 1.0, -1.0, 0.75, 0.5, 0.0, -1.0, 0.25, 0.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder000.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array2 = new Float32Array([-0.75, -0.5, -0.5, 0.75, -0.75, 0.75, -0.75, -1.0, -0.5, -0.25, -0.25, -1.0, 0.75, -0.25, 1.0, 1.0, -0.25, 1.0, 0.5, -0.5, -0.5, 1.0, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.25, 0.0, 0.0, 1.0, 1.0, -0.5, -0.25, 0.75, -0.25, 0.0, 0.0, 0.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.5, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, 0.0, 1.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, 0.75, -1.0, 0.0, -0.5, 1.0, 0.5, -0.5, 1.0, 0.0, -0.75, 0.5, -0.25, 0.75, 0.75, 0.0, -0.75, 0.75, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, 0.5, 0.0, 0.0, 1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -0.75, ]);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    texture001.destroy();
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    
    texture004.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    command_encoder002.popDebugGroup()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture002.destroy();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    texture102.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture100.destroy();
    
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout005]
    });
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    texture201.destroy();
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    texture204.destroy();
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer204.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    texture202.destroy();
    query100.destroy()
    query000.destroy()
    
    query001.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    texture006.destroy();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer203.destroy()
    texture103.destroy();
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query001.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer200.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query003.destroy()
    
    buffer001.destroy()
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
    texture005.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture105.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    query201.destroy()
    buffer202.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_buffer102 = command_encoder102.finish();
    query100.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture203.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout006]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const array3 = new Float32Array([0.5, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, 0.0, -1.0, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, -0.75, -1.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, 1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 0.0, 0.5, 1.0, 0.0, 0.25, 1.0, 1.0, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.5, 0.75, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, -0.25, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 0.25, 0.0, 0.0, -0.25, 0.25, -1.0, -1.0, 0.25, 0.75, 0.0, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout007]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout007]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder103.popDebugGroup()
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    query001.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    texture205.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
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
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer003.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query300.destroy()
    
    buffer002.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query201.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    
    
    query002.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    query001.destroy()
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    device10.queue.submit([command_buffer102, ]);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query202.destroy()
    texture104.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const array4 = new Float32Array([-0.25, 0.0, -0.75, -1.0, 1.0, 0.5, -0.25, -0.25, -0.5, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.25, 0.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.25, 0.25, 0.25, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 1.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 0.75, 0.75, 0.5, -0.75, -0.25, 1.0, -0.5, 0.0, 0.0, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.5, -1.0, -0.25, -1.0, 0.0, -1.0, -1.0, -0.75, 0.0, 0.25, 1.0, 0.5, 0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.75, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 0.5, ]);
    texture200.destroy();
    query101.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    command_encoder103.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query202.destroy()
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    command_encoder200.popDebugGroup()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query004.destroy()
    query105.destroy()
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    query100.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    query105.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const array5 = new Float32Array([0.25, -1.0, -1.0, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, 0.0, 0.25, -0.75, 0.5, 1.0, 0.75, -0.25, -1.0, 1.0, 1.0, -0.5, 0.5, 0.25, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, 0.25, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 0.0, 0.5, 0.75, 0.5, -0.5, 0.75, -1.0, 0.75, 0.5, 0.25, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.25, -0.25, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.0, -0.25, 0.75, 0.25, 0.75, -1.0, -0.25, 0.25, 1.0, -1.0, -0.75, -1.0, 0.5, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, 0.0, 0.5, -1.0, 1.0, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query203.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const command_buffer106 = command_encoder106.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout007]
    });
    
    query104.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query001.destroy()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
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
    texture007.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder200.popDebugGroup();
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query102.destroy()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    query203.destroy()
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout000]
    });
    device10.pushErrorScope("validation");
    query103.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder1000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    const command_buffer302 = command_encoder302.finish();
}