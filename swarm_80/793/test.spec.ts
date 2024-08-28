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
    const array0 = new Float32Array([0.25, -0.5, 1.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.25, 0.5, -1.0, 0.25, 0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 0.5, 0.5, -0.25, -1.0, -1.0, -0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 0.0, -0.25, -0.25, -0.25, 0.0, -0.5, -0.25, 0.5, 1.0, -0.75, -0.25, 0.0, 0.5, 1.0, 1.0, 0.25, 0.5, 0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, -0.75, 0.5, 1.0, 0.25, 0.75, 0.75, 0.0, -0.75, 0.0, -0.25, -0.75, -0.25, 1.0, -1.0, 1.0, -1.0, 0.5, 0.0, -0.75, -0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-0.75, -0.5, -0.75, -0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -1.0, 1.0, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, -0.75, 0.5, -0.25, 0.75, -0.75, -0.75, 0.0, -0.5, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, 0.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, -0.75, -0.75, 0.0, -0.5, 0.75, -0.25, 0.25, 0.75, 0.0, 0.5, -0.25, -1.0, 0.25, 0.75, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, 1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.75, -1.0, 0.25, 0.25, 0.0, -0.25, -1.0, 0.25, 0.75, 0.0, 0.25, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -1.0, -0.25, -0.5, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
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
    
    
    const array2 = new Float32Array([-1.0, -1.0, 1.0, -0.25, 0.25, 0.5, -1.0, -0.75, 0.0, -1.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.75, 0.75, -0.75, -0.75, 0.5, -1.0, -0.25, 1.0, -0.25, -0.5, 0.0, 1.0, 1.0, -0.25, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, -0.75, -1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.0, -0.75, 0.75, 0.0, 0.5, -0.75, -1.0, -0.5, -0.5, 0.0, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, -0.25, -1.0, -0.75, 0.25, 0.25, -0.25, 0.25, -0.5, 0.25, -1.0, 0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 1.0, -1.0, 0.5, ]);
    
    const array3 = new Float32Array([0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.25, -0.5, 0.75, 0.25, 1.0, -1.0, -0.25, -1.0, -0.75, 0.0, 1.0, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, 0.75, -0.5, -0.25, 1.0, -1.0, 0.75, -0.5, 1.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.75, 0.75, 0.0, 1.0, 0.0, 0.25, 0.75, -0.75, 0.25, 0.0, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, 1.0, -0.5, 0.5, -0.25, -0.5, -0.25, 0.75, 1.0, -0.75, -0.25, 0.0, 1.0, 0.0, -0.75, 0.5, -0.25, 0.75, 0.5, -1.0, 0.75, -0.75, 0.25, 0.75, -0.75, 0.5, -1.0, -0.25, 0.75, 1.0, 0.5, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.75, 0.0, -0.75, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array4 = new Float32Array([0.5, -0.25, 1.0, -0.25, -0.25, -0.5, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, 0.0, 1.0, -0.5, 1.0, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, 0.25, 0.0, -0.5, 0.25, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 0.25, 0.0, -1.0, 0.75, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -0.25, -0.5, 1.0, 0.5, 1.0, 0.5, 0.0, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, -0.5, -1.0, 0.5, -0.25, 0.75, -0.75, 0.75, -0.5, 0.0, -0.75, -1.0, -1.0, -0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, 1.0, -0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, 0.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -0.75, -0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer100.destroy()
    const array5 = new Float32Array([0.75, 0.25, 0.75, 0.5, 0.25, 0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, 1.0, 1.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.5, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -0.5, -0.25, 0.5, -1.0, 1.0, 0.0, -0.25, 0.75, 1.0, 0.0, 0.75, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -1.0, 0.5, 1.0, -0.5, -0.75, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, 0.25, 0.0, 0.5, -0.75, 0.0, -0.75, -0.25, 0.5, -1.0, 0.25, -1.0, -0.75, -1.0, 1.0, 1.0, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 0.75, 1.0, -0.75, -0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -0.75, 0.0, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, 0.25, 1.0, -0.5, 0.0, -0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, -1.0, 0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -1.0, -1.0, 0.75, -0.75, 0.75, 0.5, -0.25, -0.25, 0.25, 0.75, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, -0.5, -0.25, ]);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    buffer102.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.executeBundles([])
    query100.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const array7 = new Float32Array([0.0, -1.0, 0.25, -0.75, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.0, 1.0, 1.0, -0.75, -0.5, -0.25, 0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -0.25, -0.75, 0.25, 0.0, 0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.5, -0.75, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, 0.75, 0.5, 1.0, -0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 0.25, 1.0, -1.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.75, 1.0, 0.25, -0.75, -0.5, 0.25, -0.25, -0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 0.25, 0.0, -1.0, 0.75, 0.25, 0.75, 0.5, -0.25, 0.75, -0.75, -0.5, -0.25, -1.0, 1.0, 0.75, 0.5, 0.25, ]);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    render_pass_encoder1010.executeBundles([])
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    query101.destroy()
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    render_pass_encoder1010.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    command_encoder102.clearBuffer(buffer103);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    const array8 = new Float32Array([-0.25, -0.75, -1.0, 0.5, -0.25, -0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 0.0, 1.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, 0.25, 0.5, 0.75, -0.75, -0.75, 0.25, -1.0, 0.75, -0.25, 1.0, -0.75, -1.0, -0.75, -0.75, 0.0, -0.5, 0.25, -0.25, -0.75, 0.25, -1.0, 0.25, 0.5, 0.75, 0.5, -0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -1.0, -0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.75, 0.0, -0.75, -1.0, 0.25, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 1.0, -0.5, 0.75, -0.25, -0.25, -1.0, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, 0.75, -0.75, 0.5, ]);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    render_pass_encoder1020.setStencilReference(1);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    buffer104.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    query101.destroy()
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1020.executeBundles([])
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    buffer101.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    const array9 = new Float32Array([0.5, 0.5, -0.5, 0.5, -0.5, -0.75, 0.0, 1.0, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, -0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.25, 0.25, -0.25, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.75, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.5, -1.0, 0.0, 1.0, 0.5, -0.25, -0.25, -0.25, 1.0, -0.5, -0.25, 0.25, 1.0, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.25, 0.75, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query104.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query102.destroy()
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    render_pass_encoder1030.setStencilReference(1);
    
    buffer103.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder1010.executeBundles([])
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const array10 = new Float32Array([0.25, 0.25, 0.25, 0.75, -1.0, -0.25, 0.25, 0.75, 0.0, -0.75, 0.75, 0.0, -1.0, 0.5, 1.0, 1.0, 1.0, 0.25, 0.75, 0.5, 0.0, -0.5, -0.25, 0.5, -0.75, -0.75, -1.0, -1.0, 1.0, -0.5, -1.0, 0.25, -0.75, 0.5, -0.25, -0.75, 0.5, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 0.75, -0.75, -0.75, 1.0, 0.0, -0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.5, -0.5, -0.5, 0.25, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.5, -0.25, 0.0, 0.0, -1.0, -0.25, 0.0, 0.0, -0.5, -0.25, 1.0, 0.5, -0.25, 0.25, -0.25, -0.5, -0.75, 0.25, 1.0, -0.5, ]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query105.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.destroy();
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.25, -0.5, 1.0, 0.75, 1.0, 0.75, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.0, 0.25, -0.5, -1.0, 1.0, -1.0, 1.0, 1.0, -0.5, -1.0, 0.0, 0.5, -0.75, -0.75, 1.0, 0.0, -0.5, -0.25, 0.5, -0.5, -0.75, -0.75, -0.75, 0.5, -0.25, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, 0.0, -0.75, 0.0, 1.0, 0.5, -0.25, -0.25, 0.0, -0.25, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, 0.75, 0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.5, -0.25, 0.25, -0.75, -0.5, -0.25, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, -0.75, 0.0, 0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.25, 0.25, 0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, ]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1030.executeBundles([])
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    query104.destroy()
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query106
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    
    
    query101.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query106.destroy()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query107.destroy()
    query101.destroy()
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    
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
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
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
    query100.destroy()
    render_pass_encoder1000.executeBundles([])
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    render_pass_encoder1000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query108.destroy()
    device30.pushErrorScope("internal");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array12 = new Float32Array([-0.25, -1.0, 1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, 0.0, 0.25, -0.75, 1.0, -1.0, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 0.5, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, -0.5, -0.5, 1.0, -1.0, -1.0, 0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 0.75, 1.0, -0.75, 0.75, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, -0.75, -0.25, 0.5, 0.75, 1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 1.0, 0.75, -0.75, 1.0, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -1.0, 0.75, 1.0, ]);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setStencilReference(1);
    query105.destroy()
    render_pass_encoder1000.executeBundles([])
    
    query106.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1010.executeBundles([])
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer105.destroy()
    query101.destroy()
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    query104.destroy()
    const array13 = new Float32Array([0.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -1.0, 0.5, 0.5, 1.0, 0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, -0.5, -0.5, 0.5, -0.25, -0.25, -0.25, 0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -0.75, -1.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.25, -0.25, 1.0, -0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 0.0, -0.75, 0.0, 0.5, 0.25, 0.75, -0.25, -0.5, 0.25, 0.75, -1.0, -1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 0.0, 0.75, ]);
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query107.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1000.executeBundles([])
    query105.destroy()
    
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
}