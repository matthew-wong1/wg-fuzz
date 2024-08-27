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
    const array0 = new Float32Array([0.5, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.75, -0.75, 0.5, 0.0, -0.5, 0.25, -0.5, 0.0, 0.75, 0.5, -1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 1.0, 1.0, -0.75, -0.75, -1.0, -0.75, -0.5, -1.0, -0.25, -0.75, -1.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.25, -0.75, 0.25, 0.25, -0.5, 0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 1.0, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, 0.5, -0.25, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, 0.25, 0.5, -1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture000.destroy();
    device00.pushErrorScope("internal");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    buffer000.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.pushErrorScope("internal");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const command_buffer000 = command_encoder000.finish();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array1 = new Float32Array([-1.0, 0.0, -1.0, -0.75, -0.25, -0.5, 0.0, -0.75, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 0.5, -1.0, 0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.25, 0.75, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.5, 1.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -0.25, -0.25, -1.0, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.25, 0.75, -1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.25, 0.25, -1.0, ]);
    buffer002.destroy()
    buffer003.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.pushErrorScope("out-of-memory");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const array2 = new Float32Array([-0.75, 0.75, -0.25, -0.25, -0.75, -0.25, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 0.25, 1.0, 0.0, 0.75, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -1.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 1.0, -0.25, 0.5, 0.25, 0.0, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.5, -1.0, -0.25, -0.75, ]);
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    query002.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    buffer100.destroy()
    
    query002.destroy()
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array3 = new Float32Array([0.0, -0.75, 0.5, 0.0, 1.0, -0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, -0.75, -0.5, 0.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.0, -0.75, -0.25, 0.25, -1.0, -0.25, -1.0, 0.75, -1.0, 0.75, 0.5, 0.5, 1.0, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.75, 1.0, 0.25, -0.5, -0.5, 0.25, -1.0, 0.75, -0.25, -0.25, -0.75, -0.75, 0.75, 1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.5, 0.25, 0.0, -0.75, 0.25, 0.0, 0.5, ]);
    texture005.destroy();
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    texture003.destroy();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder0010.executeBundles([])
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const array4 = new Float32Array([-1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.25, 0.75, -0.75, 0.0, 0.5, 0.75, 0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.25, 0.75, -0.75, -1.0, -0.25, -0.25, 0.25, 0.5, 1.0, 1.0, -0.25, 0.25, 0.5, 0.0, -0.5, 0.25, -0.5, -0.25, 0.25, 0.0, 0.25, 0.0, 0.75, 0.25, 1.0, -0.5, -0.5, 0.75, 0.25, 0.5, -0.25, -1.0, -0.75, 0.75, -0.5, 0.25, 1.0, -1.0, -0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, 0.25, -0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 0.5, -0.25, -1.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, -1.0, -0.5, -0.5, 0.25, 0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 1.0, -0.75, 0.5, 0.75, 1.0, 0.25, -0.75, -0.5, 0.0, 0.75, -1.0, ]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0010.executeBundles([])
    query002.destroy()
    texture100.destroy();
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    texture102.destroy();
    
    query100.destroy()
    
    
    texture006.destroy();
    
    
    
    
    
    texture002.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0013,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.executeBundles([])
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer004.destroy()
    texture008.destroy();
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    render_pass_encoder1000.executeBundles([])
    device10.pushErrorScope("validation");
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    query000.destroy()
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.75, 0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.5, 0.0, 0.0, 0.0, 1.0, -0.5, -0.25, -0.25, -0.75, -0.75, 0.25, 0.25, -0.75, 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.25, -0.5, -0.25, -0.5, -1.0, -0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 0.5, -0.75, 0.25, -0.5, -0.5, 0.0, 0.75, 0.75, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, -0.75, -0.5, -0.25, -0.25, -1.0, -0.25, 0.5, 0.5, -0.5, -0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 1.0, -0.25, -1.0, 0.25, 0.0, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, ]);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    query000.destroy()
    
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer101.destroy()
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    texture0010.destroy();
    texture001.destroy();
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.executeBundles([])
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0091 = texture009.createView({ label: "texture_view0091" });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device10.pushErrorScope("out-of-memory");
    buffer102.destroy()
    
    texture105.destroy();
    const array6 = new Float32Array([-0.25, 0.5, -0.5, 0.75, 0.5, 0.75, -0.75, -0.75, 0.75, -0.25, 0.25, 0.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 0.0, -0.5, -0.75, 0.75, -0.5, 1.0, 0.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, -0.25, 1.0, 0.75, 1.0, 1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.75, 0.25, -0.5, 0.75, 0.75, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, -0.5, 0.75, 0.25, 0.75, -0.75, -0.5, -1.0, 0.0, 0.25, -0.5, -1.0, 0.5, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -0.5, 0.75, ]);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query002.destroy()
    texture007.destroy();
    
    
    const texture_view00110 = texture0011.createView({ label: "texture_view00110" });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view00110,
            },
        ],
        occlusionQuerySet: query002
    });
    texture009.destroy();
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0071,
            },
        ],
        occlusionQuerySet: query002
    });
    
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture007.width / 2, texture007.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view00111 = texture0011.createView({ label: "texture_view00111" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0030.setViewport(0, 0, texture0011.width / 2, texture0011.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    texture004.destroy();
    
    texture104.destroy();
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    query001.destroy()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    
    buffer007.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    device00.pushErrorScope("validation");
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const array7 = new Float32Array([-0.75, 0.75, 0.75, 0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, -1.0, 0.25, 0.0, 0.5, 0.75, -1.0, -1.0, -0.75, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 1.0, -0.25, -1.0, 0.0, -0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.25, 0.0, -1.0, -0.25, 0.75, -1.0, 1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 0.25, -1.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.75, 0.75, -1.0, -1.0, -0.25, -0.5, 1.0, -1.0, -0.75, -1.0, 1.0, -0.25, -0.5, -1.0, 0.25, -0.5, -0.25, -0.5, 0.0, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, -0.25, 0.75, -1.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, -0.5, 0.25, 0.5, 0.5, -1.0, 0.25, -0.5, 1.0, 1.0, 0.5, 0.5, 0.75, 0.0, ]);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("internal");
    
    render_pass_encoder0040.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view00112 = texture0011.createView({ label: "texture_view00112" });
    
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0050.executeBundles([])
    query000.destroy()
    
    render_pass_encoder0040.executeBundles([])
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.executeBundles([])
    query100.destroy()
    
    
    
    
    query003.destroy()
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([-0.5, -0.25, -1.0, 0.25, 0.75, 0.5, -0.25, 0.75, -1.0, 0.75, -0.5, 0.0, -0.5, 0.75, -0.5, -1.0, 0.0, -0.5, -1.0, 0.25, -0.25, -0.5, -0.5, -0.25, -1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.75, 0.75, 0.75, 0.0, -1.0, -1.0, -0.75, -0.5, -0.75, 0.0, 0.75, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, -1.0, -0.75, 0.75, 0.25, 0.25, -0.25, 0.75, -0.75, -0.5, -0.5, 1.0, 0.25, -1.0, -1.0, 0.75, 0.75, 0.5, -0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -1.0, 0.0, -1.0, -1.0, -1.0, 0.75, -0.25, 0.5, 1.0, 0.0, 0.75, 0.5, -1.0, 0.5, 0.0, 1.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.25, -1.0, -0.5, -0.25, 0.5, ]);
    const texture_view00113 = texture0011.createView({ label: "texture_view00113" });
    
    
    const array9 = new Float32Array([0.5, 0.75, -0.25, -0.25, 0.25, -1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -0.25, -1.0, -0.25, -0.75, 0.75, -1.0, 1.0, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, 0.25, -0.25, 0.75, -0.75, 0.25, -0.25, 0.75, 0.0, -0.75, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, 0.0, 0.5, 1.0, -0.5, -0.25, -0.75, 0.0, -0.75, -1.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 0.75, 0.0, 1.0, 0.5, -0.25, -0.75, 0.25, -1.0, 0.5, -0.75, -1.0, -0.75, -0.25, -0.25, 0.25, 0.75, -0.75, -0.5, -0.25, 0.0, 0.25, 0.25, -0.25, -0.75, 0.25, 0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, 0.5, 0.75, 0.5, -1.0, -0.25, 0.25, ]);
    
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    buffer008.destroy()
    texture0011.destroy();
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0090,
            },
        ],
        occlusionQuerySet: query004
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture0011.width / 2, texture0011.height / 2);
    
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    buffer005.destroy()
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture106.destroy();
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture0011.width / 2, texture0011.height / 2);
    render_pass_encoder0060.beginOcclusionQuery(0)
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query001.destroy()
    const texture0014 = device00.createTexture({
        label: "texture0014",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    render_pass_encoder0060.setScissorRect(0, 0, texture009.width / 2, texture009.height / 2);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture0014 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-0.75, 0.75, 0.75, -0.5, -0.75, 0.0, -0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 0.0, 0.5, 0.25, -0.25, -0.5, 0.0, -0.75, 0.25, -0.5, 0.75, 0.75, 0.0, -0.75, -0.5, 1.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, 0.25, 0.5, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -0.5, -0.75, 0.75, 0.0, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, -1.0, 0.25, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, -0.25, 1.0, -1.0, 0.75, 0.5, 0.0, 0.0, 0.0, -1.0, 0.0, 0.25, -0.75, 1.0, -0.75, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, -0.75, ]);
    render_pass_encoder0060.endOcclusionQuery()
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture0014 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture0013.destroy();
    
    
    
    query003.destroy()
    
    query001.destroy()
    query000.destroy()
    
    render_pass_encoder0060.setScissorRect(0, 0, texture009.width / 2, texture009.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0010.executeBundles([])
    
    
    
    
    device00.queue.writeTexture({ texture: texture0014 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.executeBundles([])
    
    render_pass_encoder0040.setViewport(0, 0, texture007.width / 2, texture007.height / 2, 0, 1);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    device50.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture0014 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture103.destroy();
    render_pass_encoder0060.setViewport(0, 0, texture009.width / 2, texture009.height / 2, 0, 1);
    render_pass_encoder0020.executeBundles([])
    device00.queue.writeTexture({ texture: texture0014 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    query000.destroy()
    buffer006.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder0060.beginOcclusionQuery(0)
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder0030.executeBundles([])
    query102.destroy()
    device00.queue.writeTexture({ texture: texture0014 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device00.queue.writeTexture({ texture: texture0014 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture0014.destroy();
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query002.destroy()
    
    buffer103.destroy()
    
    compute_pass_encoder3010.popDebugGroup()
    
    render_pass_encoder0060.endOcclusionQuery()
    const command_buffer600 = command_encoder600.finish();
    const command_buffer302 = command_encoder302.finish();
}