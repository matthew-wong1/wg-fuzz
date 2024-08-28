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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const array0 = new Float32Array([-1.0, -0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -1.0, -0.25, -0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, -0.75, 0.5, -1.0, -0.25, 0.25, 0.0, 1.0, 0.75, -1.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.5, 0.5, 1.0, 1.0, 0.5, 0.5, -0.5, -0.25, 0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, 0.25, 0.75, 0.25, -0.5, 0.5, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.5, -0.5, -1.0, -0.25, -0.75, -0.5, 0.0, 0.5, -0.25, 0.25, -0.25, -0.75, 1.0, -0.5, -0.75, 0.25, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 0.5, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, ]);
    const array1 = new Float32Array([0.75, 1.0, -0.5, -1.0, 0.75, 0.25, -0.25, 0.0, 1.0, -0.5, -0.75, -0.75, 0.25, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, -0.25, 1.0, -0.5, 0.5, 0.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.75, 0.25, 0.75, -0.25, 0.25, -0.75, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, 0.0, 0.25, 0.0, -0.5, 0.75, -0.5, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, 0.5, 0.25, 1.0, 0.25, -0.25, -0.25, 1.0, -0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, -1.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 0.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_buffer001 = command_encoder001.finish();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("out-of-memory");
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder002.insertDebugMarker("mymarker");
    texture000.destroy();
    const array2 = new Float32Array([0.0, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, 0.75, 0.5, 1.0, -1.0, -0.75, -0.75, 0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 0.5, -1.0, 0.25, -0.25, 0.25, 0.0, 0.75, 1.0, -1.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 0.75, -0.75, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, 1.0, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, 0.5, 0.75, 0.0, -0.25, 0.5, 1.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.0, 0.5, 0.25, 0.0, 0.5, -0.75, -1.0, 0.75, 0.5, 0.75, -1.0, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer003 = command_encoder003.finish();
    command_encoder002.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_buffer002 = command_encoder002.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query002.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query003.destroy()
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    query000.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    
    texture003.destroy();
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    query003.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query000.destroy()
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    render_pass_encoder0050.popDebugGroup();
    device00.pushErrorScope("internal");
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query001.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    render_pass_encoder0070.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0070.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    query007.destroy()
    render_pass_encoder0070.insertDebugMarker("marker");
    query008.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    render_pass_encoder0070.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    query008.destroy()
    
    
    render_pass_encoder0050.setStencilReference(1);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture100.destroy();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const array3 = new Float32Array([0.5, 0.0, -0.5, 0.5, 0.0, 0.75, 0.5, 0.25, 1.0, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.25, 0.5, -0.25, 0.25, -1.0, -1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 0.75, 0.25, -0.75, -0.25, 0.0, -0.25, -0.75, 0.25, -0.75, 1.0, -0.25, -0.5, -0.75, 0.5, -0.5, 0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 1.0, -0.25, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.75, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, -0.75, -0.25, 0.0, -0.75, ]);
    query008.destroy()
    render_pass_encoder0070.insertDebugMarker("marker");
    query000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query002.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device10.pushErrorScope("out-of-memory");
    
    query008.destroy()
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.setStencilReference(1);
    
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    
    query007.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array4 = new Float32Array([0.75, 0.5, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, 0.25, 0.75, -0.25, -0.75, 1.0, 1.0, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 0.5, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, -1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 1.0, 0.25, -0.75, 0.75, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.75, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, 0.0, 0.75, -0.25, 0.25, ]);
    query001.destroy()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    query006.destroy()
    render_pass_encoder0070.insertDebugMarker("marker");
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    texture004.destroy();
    query005.destroy()
    
    
    query005.destroy()
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder0070.setStencilReference(1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    query001.destroy()
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device00.pushErrorScope("out-of-memory");
    texture005.destroy();
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query002.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    query007.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture102.destroy();
    
    texture101.destroy();
    query001.destroy()
    texture006.destroy();
    query100.destroy()
    
    
    render_pass_encoder0050.setStencilReference(1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.destroy();
    query001.destroy()
    query000.destroy()
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
    
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0070.setStencilReference(1);
    
    query008.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0050.setStencilReference(1);
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    query002.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0070.setStencilReference(1);
    const array5 = new Float32Array([-0.5, 1.0, -0.25, 0.0, -0.75, 0.5, -0.25, 0.5, 0.75, 1.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.5, -1.0, -0.25, -1.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, 1.0, -1.0, 0.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.5, 0.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, -0.5, -0.75, -0.25, -0.75, 0.5, 0.5, 1.0, -1.0, 0.5, 0.5, -1.0, -0.25, -0.25, 1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, -0.75, -0.25, 0.5, -0.75, -0.75, 1.0, 0.5, -0.75, 0.25, -0.25, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, ]);
    
    render_pass_encoder0050.popDebugGroup();
    const array6 = new Float32Array([1.0, -0.75, -0.75, -1.0, 0.25, 0.0, 0.75, 0.25, -0.5, 0.75, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 1.0, 0.0, -0.25, -0.75, -0.25, 1.0, -0.5, -0.75, 0.0, 0.25, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.25, 1.0, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, 0.0, 0.25, -0.75, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, -1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, 0.5, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, -1.0, -0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.75, -0.5, -0.75, -0.75, 0.5, -1.0, 1.0, 0.25, 0.25, 0.5, -0.5, -1.0, -0.5, ]);
    render_pass_encoder0050.setStencilReference(1);
    query002.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    render_pass_encoder0070.setStencilReference(1);
    query000.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    query001.destroy()
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    query003.destroy()
    device20.destroy();
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query008
    });
    render_pass_encoder0070.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query007
    });
    query008.destroy()
    query005.destroy()
    
    
    query007.destroy()
    render_pass_encoder0080.setStencilReference(1);
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
    device00.pushErrorScope("internal");
    render_pass_encoder0080.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    query008.destroy()
    render_pass_encoder0070.pushDebugGroup("group_marker");
    
    
    query005.destroy()
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query003
    });
    query009.destroy()
    query006.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0070.insertDebugMarker("marker");
    query006.destroy()
    render_pass_encoder00100.setStencilReference(1);
    query006.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query007.destroy()
    
    query009.destroy()
    render_pass_encoder0080.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    query000.destroy()
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
    render_pass_encoder0080.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    const array7 = new Float32Array([-0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 1.0, -1.0, 0.75, -0.5, 1.0, 0.0, 0.75, 1.0, -0.75, 0.0, -0.75, 0.75, 1.0, -1.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, -0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, -0.25, 1.0, 0.25, -1.0, -0.25, -0.5, -0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.25, 0.25, 0.25, 0.5, 0.75, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, -0.25, 0.75, -0.5, 0.0, -0.5, 0.75, 0.25, 1.0, 0.75, 1.0, 0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.75, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, -0.25, -0.5, 1.0, -0.5, -0.25, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, ]);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array8 = new Float32Array([0.0, 0.75, 0.75, 0.5, 0.0, 0.0, -0.75, -0.25, -0.75, -1.0, -0.25, 0.5, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -1.0, -0.5, 0.25, 0.0, -0.25, 0.5, -1.0, 0.5, -1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, 0.75, -1.0, -0.5, 1.0, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 0.75, 0.25, 0.25, -0.75, 1.0, 0.5, 1.0, 0.25, -1.0, 0.75, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.5, 0.75, -0.75, 1.0, 1.0, -1.0, -0.5, ]);
    query001.destroy()
    
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query008.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    query006.destroy()
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0070.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture_view0081 = texture008.createView({ label: "texture_view0081" });
    query009.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0070.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
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
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    query0010.destroy()
    query001.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query006.destroy()
    query300.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query002
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    query000.destroy()
    
    render_pass_encoder0070.setStencilReference(1);
    query005.destroy()
    query0010.destroy()
    texture301.destroy();
    render_pass_encoder0070.setStencilReference(1);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder00100.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder00110.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture_view0082 = texture008.createView({ label: "texture_view0082" });
    render_pass_encoder0050.insertDebugMarker("marker");
    query008.destroy()
    query007.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    query300.destroy()
    device00.pushErrorScope("out-of-memory");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder00100.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query0010
    });
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    query008.destroy()
    query005.destroy()
    render_pass_encoder0070.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    query002.destroy()
    query008.destroy()
    
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
    query0010.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    query008.destroy()
    texture008.destroy();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder3000.insertDebugMarker("marker");
    query005.destroy()
    render_pass_encoder00110.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder00120.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0090.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder0070.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    query005.destroy()
    
    query0010.destroy()
    render_pass_encoder0070.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const query0011 = device00.createQuerySet({
        label: "query0011",
        type: "occlusion",
        count: 32,
    });
    const sampler0013 = device00.createSampler( { label: "sampler0013" } );
    command_encoder301.insertDebugMarker("mymarker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
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
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    query300.destroy()
    render_pass_encoder00110.setStencilReference(1);
    render_pass_encoder00110.pushDebugGroup("group_marker");
    render_pass_encoder00120.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    texture009.destroy();
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    const render_pass_encoder00130 = command_encoder0013.beginRenderPass({
        label: "render_pass_encoder00130",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query009
    });
    render_pass_encoder0090.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder3010.insertDebugMarker("marker");
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    render_pass_encoder0090.insertDebugMarker("marker");
    render_pass_encoder00110.setStencilReference(1);
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder00110.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    texture300.destroy();
    
    query002.destroy()
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query0012 = device00.createQuerySet({
        label: "query0012",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder00110.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder00110.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    query008.destroy()
    render_pass_encoder00120.insertDebugMarker("marker");
    render_pass_encoder00100.setStencilReference(1);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query005.destroy()
    render_pass_encoder00110.popDebugGroup();
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder00100.setStencilReference(1);
    render_pass_encoder00110.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0070.setStencilReference(1);
    query0011.destroy()
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    render_pass_encoder0070.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder00120.pushDebugGroup("group_marker");
    const query0013 = device00.createQuerySet({
        label: "query0013",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([1.0, -0.25, 0.5, 0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 1.0, 0.5, -0.25, -0.5, 0.0, -0.5, 0.5, -0.5, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, -0.5, -0.25, 1.0, 1.0, 0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.5, 0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 0.75, 0.25, -0.25, -0.75, 0.5, -0.75, -0.5, -0.25, -0.75, -0.5, 0.25, 0.0, 0.75, -1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, 0.75, -0.25, -0.75, -0.75, 0.0, 0.0, -0.25, -0.25, 0.0, 0.75, 0.0, 0.0, ]);
    
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0080.insertDebugMarker("marker");
    const array10 = new Float32Array([1.0, -0.5, -0.75, -0.25, 0.5, 0.75, 0.5, 0.25, -0.5, -0.75, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, -0.5, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.0, -0.75, 1.0, 0.0, 0.25, 1.0, 0.0, 0.5, -0.5, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -0.75, 1.0, -0.75, -0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 0.5, 1.0, -0.5, -1.0, 0.75, -0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, 0.5, -0.75, -0.25, 1.0, 1.0, 0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.25, -0.25, 1.0, -1.0, -0.5, -0.5, 1.0, -0.75, 0.25, 0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, ]);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder00100.setStencilReference(1);
    query0013.destroy()
    render_pass_encoder00120.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder00100.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder00100.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0080.insertDebugMarker("marker");
    query007.destroy()
    const command_encoder0014 = device00.createCommandEncoder({ label: "command_encoder0014" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder00140 = command_encoder0014.beginRenderPass({
        label: "render_pass_encoder00140",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: query002
    });
    query006.destroy()
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder00120.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}