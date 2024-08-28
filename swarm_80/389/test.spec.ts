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
    const array0 = new Float32Array([1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, 0.5, 0.5, -1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, 0.25, 0.5, -0.75, -0.75, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, 1.0, -0.75, 0.25, -0.75, -0.25, -0.75, -0.75, 0.5, 0.0, -1.0, 0.75, 1.0, 0.0, 0.0, -0.25, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, 0.5, 0.25, 0.5, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.75, 0.25, 0.75, -0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, -0.25, 0.25, 0.25, 0.75, -0.25, -0.75, ]);
    
    
    const array1 = new Float32Array([-0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.25, 0.5, -0.75, 0.75, -0.5, -0.5, 1.0, 0.0, -0.25, 0.25, -0.75, 0.5, 0.25, 0.75, -0.75, -0.5, 0.75, -0.75, 0.25, 0.75, 0.25, 0.75, 1.0, 0.25, 0.25, 0.0, -0.75, -0.25, 0.5, 0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -1.0, -0.75, 0.25, -0.5, 1.0, -0.75, -0.75, -0.5, -0.5, 0.75, 0.25, -0.75, 0.5, 1.0, -0.25, 0.25, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, -0.25, 0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.75, 0.75, ]);
    const array2 = new Float32Array([-1.0, 0.25, 0.25, -1.0, 1.0, -0.5, 0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.75, -0.75, 0.25, -0.75, 0.75, -0.25, -0.5, 0.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, -1.0, -0.75, -0.75, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 0.25, -1.0, 0.5, 0.75, -1.0, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, 0.25, -1.0, 0.5, -0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 1.0, 0.0, 1.0, 0.75, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, 0.25, 0.5, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, -0.75, 1.0, 0.5, 0.25, -1.0, ]);
    
    const array3 = new Float32Array([0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -0.5, 0.5, 0.25, -0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.75, 0.0, 0.5, -0.5, -0.75, -1.0, 0.25, 1.0, 0.0, -0.25, -0.25, -0.5, -1.0, 0.0, -0.5, 0.0, 0.75, 0.25, 0.5, -1.0, -0.75, 0.25, -0.75, -1.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.0, -0.5, 0.5, -1.0, 0.5, 0.5, 0.25, 0.25, -0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 1.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.5, 0.5, -0.25, 0.75, 0.75, 0.5, -0.5, 0.5, 0.5, -1.0, 1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 0.0, 0.0, 0.75, -0.5, 0.25, ]);
    const array4 = new Float32Array([0.75, -1.0, -0.25, 0.5, -0.75, -0.75, 0.75, 0.0, 1.0, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.75, 0.5, 0.25, -1.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.25, 0.5, -1.0, 0.75, -0.25, -0.5, -0.25, -1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.25, -0.25, 1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 1.0, -0.5, -1.0, -0.5, -0.5, -1.0, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, -0.5, -0.75, -0.25, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 0.25, 0.0, 0.5, 0.5, 1.0, 0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.75, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, -0.5, 0.25, -0.5, -0.75, 0.25, 0.75, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0000.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array5 = new Float32Array([0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.5, -0.75, -0.75, -0.5, -0.5, -0.75, -0.5, 0.75, -0.75, -0.75, 0.5, 0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 0.75, 0.75, -1.0, -1.0, -0.25, -1.0, -1.0, -0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.25, 0.0, 1.0, 0.25, 0.5, 0.5, -0.25, 1.0, -0.75, 0.75, -1.0, 0.75, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, 0.25, 0.0, -0.5, 0.0, 1.0, 0.5, 0.5, -0.5, 0.25, 0.25, 1.0, 0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.25, 0.25, 0.75, -1.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer001.destroy()
    buffer002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([1.0, 0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.5, 1.0, 0.75, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, -0.5, 0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.5, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -1.0, -0.5, 0.0, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.25, 0.5, -0.75, -0.5, -1.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.25, -0.25, -0.75, 0.75, 0.75, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 0.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -0.5, 1.0, 0.5, 0.5, -0.75, 1.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.5, 0.75, -0.25, 0.0, -0.75, -1.0, -1.0, ]);
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    const array7 = new Float32Array([-1.0, -0.75, 0.0, -0.25, -0.25, 1.0, 0.75, -0.25, 0.75, -1.0, 0.25, -1.0, -0.5, 1.0, 1.0, -0.5, 0.25, 0.75, -0.75, -0.25, 0.25, -1.0, -0.75, 0.75, -0.25, 0.25, -0.5, 0.25, 0.5, -0.5, 1.0, -1.0, 1.0, -0.75, 0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 1.0, 0.75, 0.25, 0.75, 0.0, 0.5, 1.0, 1.0, 0.75, 1.0, -0.5, -0.75, -0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -0.5, 0.25, 0.75, 0.5, -0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, -0.25, 0.5, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.25, 0.25, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture000.destroy();
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.destroy();
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer003.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        occlusionQuerySet: undefined
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    buffer000.destroy()
    const array8 = new Float32Array([1.0, -0.25, 0.5, -1.0, 0.25, 0.25, 1.0, 0.5, -1.0, -0.75, -0.25, 0.75, -1.0, -0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.5, 0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 0.0, -0.25, -0.75, 0.5, -0.75, 1.0, -0.25, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, -0.75, 0.25, -0.5, -0.25, 0.75, 0.0, 0.25, -0.5, -0.5, -0.5, 0.25, 0.75, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, -0.75, -1.0, 1.0, -0.5, -0.25, -1.0, -0.5, 0.5, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.25, -1.0, 0.0, 0.5, 1.0, 0.25, -0.5, -0.75, -1.0, 0.0, ]);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const array9 = new Float32Array([0.25, 0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, 0.75, 0.25, -1.0, 0.0, 1.0, -0.5, 0.75, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, 0.0, 0.5, 0.75, -0.5, -0.75, -0.5, 0.75, -0.5, -1.0, 0.0, -1.0, -0.5, -0.25, 0.5, 0.0, -0.25, -1.0, 0.5, -0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, -0.5, 0.25, 0.25, -0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -0.25, -0.75, 1.0, -0.5, -0.75, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, -1.0, -0.75, 0.5, 0.5, -0.5, -0.25, 0.5, 0.75, -0.5, ]);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder0020.popDebugGroup();
    
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array10 = new Float32Array([0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.0, -0.75, -0.25, -0.25, -1.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.25, -0.25, -0.25, -0.5, -1.0, -1.0, -0.75, 0.75, -0.75, -0.5, 0.25, -0.25, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.75, -0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, 0.25, -0.5, -1.0, 0.75, 0.0, 0.75, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 0.5, 0.25, -1.0, 0.0, 0.75, -0.75, ]);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0030.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.pushErrorScope("validation");
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    texture001.destroy();
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    
    buffer005.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder0020.executeBundles([])
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_pass_encoder0020.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.pushErrorScope("validation");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder3000.popDebugGroup()
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    device00.pushErrorScope("out-of-memory");
    
    
    const command_buffer302 = command_encoder302.finish();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    compute_pass_encoder0040.popDebugGroup()
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder0020.popDebugGroup();
    
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    device00.pushErrorScope("out-of-memory");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    render_pass_encoder0020.executeBundles([])
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0030.executeBundles([])
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    render_pass_encoder0060.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    
    
    
    buffer007.destroy()
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    buffer006.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.pushErrorScope("validation");
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer008.destroy()
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0030.executeBundles([])
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    compute_pass_encoder0040.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    device00.pushErrorScope("out-of-memory");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder0060.executeBundles([])
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0030.popDebugGroup();
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    
    render_pass_encoder0070.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0040.popDebugGroup()
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0080.insertDebugMarker("marker")
    
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder0060.executeBundles([])
    device50.pushErrorScope("out-of-memory");
    
    command_encoder009.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    command_encoder009.copyBufferToTexture(
        {
            buffer: buffer0010
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/shader_module0015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    command_encoder009.copyBufferToTexture(
        {
            buffer: buffer0010
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder304.popDebugGroup()
    
    
    texture002.destroy();
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    
    const compute_pass_encoder00100 = command_encoder0010.beginComputePass({ label: "compute_pass_encoder00100" });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    render_pass_encoder0060.popDebugGroup();
    
    
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture003.destroy();
    render_pass_encoder0050.insertDebugMarker("marker");
    
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder0030.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer304, ]);
    device50.queue.submit([command_buffer500, ]);
}