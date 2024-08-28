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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array0 = new Float32Array([0.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -0.25, 0.5, 0.0, 0.75, -0.25, 0.0, 0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 0.75, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, 0.0, -0.5, 0.75, -1.0, 0.5, -1.0, -0.5, -1.0, 0.75, 0.0, 1.0, 0.25, 0.5, -0.25, 0.0, -0.25, 0.0, 0.5, 0.75, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.5, -0.75, -0.75, -0.25, 0.5, 0.0, 0.5, 1.0, -0.25, -1.0, 0.5, 0.75, -0.5, 0.5, -0.25, -0.25, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, 1.0, -0.75, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, 0.5, 0.0, 0.5, 0.25, 0.75, 0.5, -0.75, -0.25, 0.0, 0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array1 = new Float32Array([0.75, -0.25, 0.5, 0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.5, -0.75, -1.0, 1.0, 1.0, 0.0, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.25, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, -0.5, 0.75, 1.0, 0.75, 0.0, 0.25, 0.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.25, -0.75, -0.25, 0.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.5, 0.75, 1.0, 0.0, 0.75, -0.75, 1.0, ]);
    device00.pushErrorScope("out-of-memory");
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query001.destroy()
    
    const array2 = new Float32Array([-0.25, 0.75, 0.0, 0.75, -0.5, -0.25, 0.25, -0.75, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.25, 0.0, 1.0, 0.0, 0.25, 0.0, -0.25, -0.75, -1.0, 0.0, -1.0, -0.25, -1.0, -0.25, 1.0, -0.5, -0.25, -1.0, -0.75, 0.0, 0.75, -1.0, 0.75, 0.5, 1.0, 0.75, 1.0, -0.5, -0.75, -0.75, -0.25, -0.75, 0.25, 0.25, 0.5, 0.5, -0.25, -0.75, -0.25, -1.0, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.5, 0.25, 0.75, 0.75, -1.0, 0.25, -1.0, -0.5, 1.0, ]);
    
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_buffer001 = command_encoder001.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device20.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([-0.5, -1.0, 0.5, -0.75, -0.75, 0.5, -0.25, 1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -0.75, 0.25, -0.25, 1.0, -0.5, -0.75, 0.25, -1.0, 0.25, -0.75, 0.5, 0.0, -0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.5, -0.75, 0.0, -1.0, 0.5, -1.0, 0.0, 0.25, 0.25, -0.5, -0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 0.0, -1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.5, 0.0, -1.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.0, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.5, 0.0, 0.75, 0.5, 0.75, 1.0, -0.5, -0.5, -0.25, -0.5, -0.25, -0.75, 0.0, -0.25, 0.25, -0.75, 0.0, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, ]);
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
    const array4 = new Float32Array([0.75, -0.75, -0.75, -1.0, -1.0, 0.75, 0.5, 1.0, -1.0, -0.5, -0.75, 0.0, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, 1.0, 0.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.75, -1.0, -0.25, -0.25, -1.0, -0.25, 0.25, 0.5, -0.5, -0.25, -0.5, 0.75, -0.5, 0.25, -0.75, 0.0, -0.25, 0.25, 1.0, -0.75, -0.25, 0.75, 0.75, 0.25, 0.0, -1.0, 0.0, -0.25, 1.0, 1.0, -0.75, -0.5, 0.5, -0.75, 1.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.0, 0.5, 0.0, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, 0.25, 0.25, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.5, 0.25, 1.0, 0.75, -0.5, 1.0, 0.0, -0.25, 0.25, 0.25, -0.25, 0.0, -0.5, ]);
    buffer000.destroy()
    const array5 = new Float32Array([-0.5, -0.75, -1.0, 0.5, -0.25, -0.25, 1.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, -1.0, 0.5, 0.25, -0.75, 0.5, 0.0, -0.75, 0.75, 0.5, -0.5, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, 1.0, 0.5, -0.25, -0.5, 1.0, 0.75, 1.0, -0.25, -0.5, -0.25, -0.5, -1.0, 1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.0, -0.5, 1.0, 0.0, -1.0, -1.0, -0.75, -0.5, -0.25, 0.75, 0.0, -0.5, -0.25, 1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 1.0, -0.75, 1.0, -0.25, -0.75, 0.5, 0.0, 0.25, -1.0, 0.75, 1.0, -1.0, 0.5, -0.75, -0.25, 0.75, -0.25, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    query002.destroy()
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer300.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("internal");
    command_encoder300.clearBuffer(buffer301);
    device00.queue.submit([command_buffer001, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
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
        occlusionQuerySet: query000
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    device30.pushErrorScope("validation");
    buffer301.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query002
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query003.destroy()
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder301.pushDebugGroup("mygroupmarker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setStencilReference(1);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    buffer001.destroy()
    
    query300.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
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
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.popDebugGroup();
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder301.popDebugGroup()
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    render_pass_encoder0030.executeBundles([])
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const command_buffer300 = command_encoder300.finish();
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    query002.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer302.destroy()
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder0030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder0030.setStencilReference(1);
    
    const array6 = new Float32Array([0.0, 1.0, 0.75, -0.75, -0.5, -1.0, 0.25, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, 0.5, -1.0, 1.0, -0.75, -0.25, -0.25, 0.5, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, 0.25, -0.5, 0.5, 0.25, -0.25, -0.5, 0.25, 1.0, -0.5, 0.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.25, 1.0, -0.75, -1.0, 1.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.5, 0.0, 0.5, -0.25, 0.0, 0.75, 0.75, -0.5, -1.0, -1.0, 0.75, -0.75, -1.0, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.25, -0.75, 0.5, 0.75, 0.25, -0.25, ]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder101.insertDebugMarker("mymarker");
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const array7 = new Float32Array([-0.5, 0.0, -0.5, 1.0, 0.25, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, -0.25, -1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.5, -0.5, 0.75, 0.75, 1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.75, 0.0, -0.25, -0.75, 0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 0.5, -0.75, -0.5, 0.0, 0.5, -0.25, -1.0, -0.5, -1.0, -0.25, 0.75, 0.0, 1.0, 0.5, 0.5, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 1.0, -0.25, -0.5, 0.5, 0.75, -0.75, 0.75, 0.0, -1.0, -0.25, ]);
    render_pass_encoder0030.executeBundles([])
    query001.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder0020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_buffer301 = command_encoder301.finish();
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    render_pass_encoder0020.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1010.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const array8 = new Float32Array([0.75, 0.25, 1.0, -0.25, 1.0, -0.75, 0.25, -0.5, 0.5, 0.75, -0.75, -1.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, -0.75, 0.75, 0.25, -0.5, 1.0, -0.25, 1.0, -0.75, -0.25, -0.75, -1.0, 0.25, 0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 0.75, -0.75, 0.75, 0.5, -0.5, 0.25, 0.0, -0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, -0.25, 0.25, -0.75, -1.0, 0.25, 0.5, 1.0, 0.75, -0.25, ]);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0004,
            },
        ],
        occlusionQuerySet: query002
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    render_pass_encoder0040.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder0040.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0030.setStencilReference(1);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0030.setStencilReference(1);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    query003.destroy()
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query003.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer100.destroy()
    query003.destroy()
    const texture_view0007 = texture000.createView({ label: "texture_view0007" });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    render_pass_encoder0020.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder0040.setStencilReference(1);
    query302.destroy()
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0040.executeBundles([])
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    
    query300.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    command_encoder005.pushDebugGroup("mygroupmarker")
    command_encoder005.popDebugGroup()
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder0040.executeBundles([])
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    render_pass_encoder1010.setStencilReference(1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query004.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder3020.setStencilReference(1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_buffer303 = command_encoder303.finish();
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
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0040.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    render_pass_encoder0030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder5020.insertDebugMarker("marker")
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
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    query001.destroy()
    buffer305.destroy()
    
    
    command_encoder500.popDebugGroup()
    
    buffer400.destroy()
    render_pass_encoder0060.setStencilReference(1);
    query001.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    
    
    
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const texture_view0008 = texture000.createView({ label: "texture_view0008" });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_pass_encoder3020.popDebugGroup();
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_pass_encoder1010.executeBundles([])
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    buffer500.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder3020.insertDebugMarker("marker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query002.destroy()
    buffer101.destroy()
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.insertDebugMarker("marker");
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder3020.setStencilReference(1);
    query500.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const array9 = new Float32Array([0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 0.0, -1.0, 0.0, 0.25, -0.25, -1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.5, -1.0, -1.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.75, -0.25, 0.75, -0.75, -0.25, -1.0, 0.25, 0.25, 0.25, -1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -0.25, 0.75, -0.75, 0.25, -0.5, -0.75, 0.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.5, 1.0, -0.5, -1.0, 0.5, 0.0, 0.25, -0.25, 0.5, 0.5, 0.75, 0.25, -0.75, -0.75, 0.25, -1.0, 0.75, 0.5, -0.75, -0.25, ]);
    render_pass_encoder1010.setStencilReference(1);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.setStencilReference(1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    
    buffer304.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.setStencilReference(1);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0020.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer301, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
}