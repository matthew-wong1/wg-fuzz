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
    const array0 = new Float32Array([0.5, -1.0, 0.5, 1.0, -1.0, 1.0, 0.25, -0.25, 0.25, -0.5, 1.0, -1.0, 0.25, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, 0.25, -0.25, 0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -0.25, -0.25, 0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -0.25, -0.75, 0.0, 0.75, -0.25, -0.75, -0.75, 0.0, -0.5, 0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.75, 0.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.0, 0.5, 1.0, 0.75, 1.0, 1.0, -1.0, -1.0, 0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 1.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.5, -0.5, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.75, -0.75, 0.5, 0.0, 0.5, -0.5, 0.25, 0.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, 0.25, -0.75, 0.75, 0.25, 0.5, 1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -1.0, -1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 1.0, -1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.75, 0.25, 0.25, -0.75, -0.25, 0.25, -0.25, -0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 0.75, 1.0, 1.0, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 0.0, 1.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.25, -0.5, -1.0, -1.0, -0.75, 0.75, -0.75, 1.0, 0.25, -1.0, 0.0, -0.25, 0.25, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer000 = command_encoder000.finish();
    const command_buffer001 = command_encoder001.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.submit([command_buffer001, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.75, -1.0, 1.0, -0.75, -1.0, 0.0, 0.5, -0.25, 1.0, -1.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 0.0, 0.75, 0.75, -0.75, 0.75, 1.0, 0.5, 1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 0.25, -0.75, -0.5, 0.0, -1.0, -0.75, -0.25, 1.0, 0.75, 0.75, 0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, -0.5, -0.25, -0.5, 0.25, 0.25, -1.0, 0.25, 0.75, 0.75, 0.25, -1.0, -0.5, -0.5, 1.0, -0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.0, 1.0, -1.0, -0.5, 0.0, 0.75, -0.25, 1.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, -0.75, 1.0, -0.75, 0.0, -0.25, 1.0, 0.25, ]);
    const array3 = new Float32Array([0.5, -1.0, 0.5, -1.0, -0.5, -0.75, 0.0, -0.25, -1.0, 0.5, -0.25, 0.0, 1.0, -0.25, 0.0, 0.25, -0.5, 1.0, -0.75, -0.25, -1.0, 0.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -0.25, 0.5, 0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.0, 0.75, 0.0, 0.5, -0.25, -0.5, 0.5, 0.25, 0.5, 0.5, 0.25, 0.0, 1.0, 0.75, -1.0, 0.75, 0.0, -0.5, -0.25, -1.0, -0.5, 0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 0.5, -0.75, -0.75, -1.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.0, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, 1.0, 0.5, -0.25, 0.75, 0.75, -0.5, -0.25, 0.0, -0.25, -0.5, -1.0, -0.5, 0.5, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query000.destroy()
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
        occlusionQuerySet: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.submit([command_buffer000, ]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const array4 = new Float32Array([-1.0, 1.0, -0.75, 0.5, 0.5, 0.25, 0.0, 1.0, 0.5, 0.5, -1.0, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 0.25, -0.5, 0.0, -0.5, -1.0, -1.0, -0.25, 0.25, 0.75, -0.5, 0.0, 0.75, 0.5, 1.0, -0.75, 0.5, 0.75, -0.25, 0.25, 0.5, 0.25, 0.75, -1.0, -0.5, 0.0, -0.5, 0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.75, -0.25, 0.75, 0.75, -0.25, 0.75, 0.5, -0.75, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 1.0, 0.0, 0.25, 1.0, -1.0, -0.75, -1.0, ]);
    query002.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    query000.destroy()
    const array5 = new Float32Array([-1.0, 0.25, -0.5, 0.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 1.0, 0.5, 0.0, 0.75, -0.25, -0.5, 0.25, -0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -0.5, -0.75, -0.75, 0.75, 0.75, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 0.0, 0.0, -1.0, 0.0, -0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.25, -0.5, -0.5, -1.0, -0.25, 0.75, 1.0, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, -1.0, 1.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.75, 0.0, -0.5, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query001.destroy()
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    query002.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query003.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array6 = new Float32Array([-0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, -0.25, -0.5, -1.0, -1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 1.0, 0.25, 0.25, 0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, 0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.75, -0.5, -0.25, 1.0, 1.0, 0.75, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.75, -0.5, 1.0, -0.75, -0.75, 0.25, -0.5, -0.75, 0.0, 1.0, 0.75, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.25, 0.25, 0.75, ]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query001
    });
    const array7 = new Float32Array([0.0, -0.25, 0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.0, -0.75, -1.0, -1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 1.0, -0.5, 0.0, -1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -0.75, 0.0, 1.0, -1.0, 0.75, -0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 0.0, -0.75, 0.25, -0.75, -0.25, 0.0, -0.25, 0.0, -1.0, -0.75, -0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 0.25, -0.5, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.75, 0.0, 1.0, -0.25, 1.0, 0.25, -0.25, -1.0, 0.0, 0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, 0.5, -0.5, 1.0, -0.25, -0.5, 0.0, 0.75, 0.75, -0.25, -0.25, 1.0, -0.25, 0.5, 0.25, ]);
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    query003.destroy()
    query004.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    query005.destroy()
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    
    query000.destroy()
    query004.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query002.destroy()
    query000.destroy()
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    query005.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query003.destroy()
    query001.destroy()
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    query003.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query005.destroy()
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query004.destroy()
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
        occlusionQuerySet: query001
    });
    device10.pushErrorScope("internal");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    query006.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query006.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    const array8 = new Float32Array([-0.75, -0.5, 0.75, 0.0, -0.5, 0.5, -0.25, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, -0.25, -0.25, -0.75, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, 0.25, 0.75, 0.75, -0.5, 0.75, -0.75, 0.25, 0.0, 0.75, 0.5, -0.5, -0.25, 0.0, -0.75, 0.25, 0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 1.0, 0.75, -0.5, 0.25, 0.0, -0.75, -1.0, -1.0, -0.75, 0.0, -0.5, -0.75, ]);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.25, -1.0, 0.25, 0.5, -0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 1.0, 0.25, -0.75, -0.5, 0.25, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, -0.5, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 1.0, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, 0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, -1.0, -1.0, -1.0, -0.5, -0.75, -0.75, ]);
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    query100.destroy()
    
    
    render_pass_encoder0070.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query008.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query005.destroy()
    
    query006.destroy()
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query003.destroy()
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query006.destroy()
    query006.destroy()
    device00.queue.writeTexture({ texture: texture009 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query003.destroy()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query007.destroy()
    device00.queue.writeTexture({ texture: texture009 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array10 = new Float32Array([-0.25, -1.0, 1.0, 0.5, 0.5, 0.5, 0.0, 0.0, -0.25, 0.25, 1.0, 0.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.5, 0.75, -0.5, -0.25, -0.75, -0.25, 0.5, 0.25, -0.75, 1.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, 0.5, 0.25, 0.75, -0.25, 0.5, -0.75, -0.25, 0.75, -0.25, 0.0, -0.75, -1.0, 0.5, 0.0, -1.0, 0.5, 1.0, -0.25, -0.25, 0.0, 1.0, -1.0, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, 0.25, 1.0, 1.0, 1.0, -0.75, 0.0, 0.75, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 0.75, 0.5, -1.0, -1.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.75, -0.5, 0.25, 0.0, 0.25, ]);
    query002.destroy()
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_buffer100 = command_encoder100.finish();
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer100, ]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0090.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query008.destroy()
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device00.queue.writeTexture({ texture: texture006 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    query000.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array11 = new Float32Array([0.75, -1.0, 0.25, -0.75, 0.5, 0.75, -0.5, 0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.5, 0.0, 0.5, -0.25, 1.0, -1.0, -0.5, 0.5, -0.25, 0.5, 1.0, -1.0, -0.75, 1.0, 0.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, -0.75, 1.0, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, 0.75, -0.75, 0.75, 0.25, 1.0, 0.0, -0.5, -1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -0.25, -0.75, 0.25, 0.75, -0.5, 0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -1.0, -0.25, 0.0, 0.75, 0.25, 0.5, -0.5, 1.0, 0.75, -0.5, 1.0, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, ]);
    
    
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query100
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture006 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view00100 = texture0010.createView({ label: "texture_view00100" });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query003.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query101.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    device00.queue.writeTexture({ texture: texture009 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query005
    });
    render_pass_encoder00100.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture105 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder00100.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device50.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query002.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.pushErrorScope("validation");
    query501.destroy()
    
    
    device00.queue.writeTexture({ texture: texture006 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const texture_view00101 = texture0010.createView({ label: "texture_view00101" });
    device00.queue.writeTexture({ texture: texture009 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder00100.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query005.destroy()
    
    query003.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder00100.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query500.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query006.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    device00.queue.writeTexture({ texture: texture009 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    query500.destroy()
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    query101.destroy()
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder00110.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view00102 = texture0010.createView({ label: "texture_view00102" });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device00.queue.writeTexture({ texture: texture009 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device00.queue.writeTexture({ texture: texture009 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0080.insertDebugMarker("marker")
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture009 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    device00.queue.writeTexture({ texture: texture009 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([-0.25, 0.75, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -0.25, -0.75, 0.25, 1.0, 0.25, -0.25, -0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.5, 0.75, 1.0, 0.0, -0.5, 0.75, 0.25, 0.75, -0.25, 0.5, 0.25, 0.75, 0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.0, -0.25, -0.75, 1.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -1.0, -0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.75, -0.75, -1.0, 0.75, 0.5, -0.25, -0.5, -0.75, 0.0, -0.25, 0.5, 0.0, -0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, ]);
    query000.destroy()
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder00100.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view00103 = texture0010.createView({ label: "texture_view00103" });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture009 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view1062 = texture106.createView({ label: "texture_view1062" });
    query100.destroy()
    
    query106.destroy()
    device00.queue.writeTexture({ texture: texture006 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query501.destroy()
    
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device00.queue.writeTexture({ texture: texture009 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1023,
            },
        ],
        occlusionQuerySet: query105
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    device00.queue.writeTexture({ texture: texture003 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture009 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeTexture({ texture: texture009 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query005.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_buffer502 = command_encoder502.finish();
    const command_buffer500 = command_encoder500.finish();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer300 = command_encoder300.finish();
}