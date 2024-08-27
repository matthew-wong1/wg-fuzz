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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const array0 = new Float32Array([-0.5, -0.75, 1.0, 0.5, -0.25, 0.75, -0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.75, -0.5, 0.5, 1.0, 0.75, -0.5, 0.75, -0.25, -1.0, 0.5, 0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 0.5, -0.75, -1.0, -0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, 0.25, -0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, -0.5, 0.25, 1.0, -0.25, -0.75, 1.0, 0.0, -0.25, -0.75, 0.0, -0.25, -1.0, -0.25, -0.75, -0.75, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, 0.75, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, 0.25, 0.75, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, -0.5, ]);
    const array1 = new Float32Array([-1.0, 0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 1.0, -0.75, 0.75, 0.75, -1.0, -0.5, -0.75, -0.5, 0.25, 0.5, 0.75, 0.75, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, -1.0, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.25, 0.5, 0.0, 1.0, 0.5, 0.5, 0.0, 1.0, 1.0, -1.0, 1.0, 0.25, 0.0, 0.5, 1.0, -1.0, -0.25, -0.5, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, 1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -1.0, 0.75, -1.0, 1.0, 1.0, -1.0, 0.0, ]);
    
    
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.pushErrorScope("internal");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture000.destroy();
    
    
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([0.25, 0.5, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, 0.25, 1.0, 1.0, 0.5, 0.25, 0.75, 0.75, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, -0.25, -0.25, -0.5, 0.75, -0.25, 0.25, -0.25, -0.5, -0.5, 0.5, 0.75, 1.0, 0.5, 0.5, -0.25, -0.5, 0.0, 0.0, -0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.0, 1.0, -1.0, -1.0, 0.5, -0.25, 0.25, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, -0.5, -1.0, -0.5, -0.25, -0.25, -0.25, 0.0, -0.5, 0.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, -0.25, -0.5, 0.25, 0.25, -0.25, 0.25, -0.5, 0.25, -0.25, 0.5, -0.75, -0.5, 1.0, 1.0, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -0.25, -0.75, ]);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    
    
    
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array3 = new Float32Array([0.25, 0.5, 0.0, 0.5, 1.0, -0.25, 1.0, -0.5, 0.5, 0.75, 1.0, -0.25, -0.75, -0.25, -0.75, -0.75, 0.25, 0.25, 0.0, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.0, 0.75, -1.0, -0.25, -0.25, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -1.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, 0.75, 0.5, 0.0, 0.75, 0.5, -0.5, -1.0, -0.75, 0.25, 0.75, 0.25, 0.25, -1.0, -0.25, -0.5, 1.0, 0.0, 0.75, 0.5, 0.5, -0.25, -1.0, 0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.75, -0.75, -0.5, 0.5, 0.75, -0.75, -1.0, -0.5, -1.0, -0.75, -0.75, 0.25, 0.75, 0.75, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, ]);
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    texture002.destroy();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const array4 = new Float32Array([0.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.5, 0.0, -0.5, 1.0, 0.5, -0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, 0.25, 0.0, 0.25, -0.25, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 0.0, 0.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, 0.25, 1.0, 1.0, -0.75, 0.0, 0.0, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, 0.25, -0.25, 0.25, -0.5, 0.75, -0.5, -0.75, -0.25, -0.25, 0.75, -1.0, 0.75, -0.25, -0.75, -0.5, 0.25, -1.0, ]);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.clearBuffer(buffer001);
    query001.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    command_encoder000.clearBuffer(buffer001);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    device20.destroy();
    const command_buffer001 = command_encoder001.finish();
    
    command_encoder000.insertDebugMarker("mymarker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    device00.queue.submit([command_buffer001, ]);
    
    
    
    
    command_encoder000.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    texture003.destroy();
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    query002.destroy()
    
    query002.destroy()
    
    const array5 = new Float32Array([-0.25, 0.0, -0.75, 0.0, 1.0, 1.0, -0.5, -1.0, 0.75, -0.75, -0.25, 0.0, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, -0.5, 0.5, -0.75, -0.5, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.5, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, 0.5, -0.25, -0.75, -0.25, -1.0, -1.0, 0.5, -0.25, 0.5, 0.0, -0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 0.25, 1.0, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, -0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, -1.0, 0.75, -0.75, 0.75, -0.5, -0.5, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.5, 1.0, 0.0, 0.75, -0.75, -1.0, 0.75, -0.75, -0.5, ]);
    
    query000.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    query000.destroy()
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query000.destroy()
    
    command_encoder000.clearBuffer(buffer001);
    
    
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    texture100.destroy();
    
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
    
    
    
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder000.clearBuffer(buffer001);
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    command_encoder000.clearBuffer(buffer001);
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    const command_buffer100 = command_encoder100.finish();
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    query003.destroy()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.popDebugGroup()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.clearBuffer(buffer001);
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const command_buffer101 = command_encoder101.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    query001.destroy()
    const array6 = new Float32Array([-1.0, -0.5, -0.75, 0.75, -0.5, -0.5, -0.5, -0.5, -0.75, -0.25, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, -0.5, -1.0, -1.0, -0.75, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.25, 0.0, -0.5, 0.5, 0.25, -0.75, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, 0.0, 0.75, -1.0, 0.0, 0.5, 1.0, 0.75, -0.5, 0.75, 0.5, 0.0, -0.25, -1.0, -1.0, 0.25, -1.0, -0.75, 0.25, 0.75, 0.75, 0.75, 0.25, -0.25, 0.75, 1.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 1.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.clearBuffer(buffer001);
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer102 = command_encoder102.finish();
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    
    
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.submit([command_buffer101, ]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    texture005.destroy();
    query004.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([0.25, -0.75, -0.25, -1.0, 0.0, 0.75, -0.5, -1.0, 0.0, -0.25, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, -1.0, -0.5, -0.25, 0.0, 0.25, 0.75, -0.25, -0.25, -0.75, 1.0, -0.25, 1.0, -1.0, 0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 0.25, -0.25, -1.0, -0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.75, -0.5, 0.75, -0.75, -0.75, 0.5, -0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, -0.25, -0.75, 0.25, 0.5, 0.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, 1.0, -0.25, -0.75, 0.0, 0.75, 0.75, 0.75, 0.0, 0.0, -0.75, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, ]);
    
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query003.destroy()
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    query003.destroy()
    
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    command_encoder003.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    command_encoder003.clearBuffer(buffer001);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    command_encoder000.clearBuffer(buffer001);
    
    command_encoder000.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module0018_code = "";
    try {
        shader_module0018_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0018.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0018 = await device00.createShaderModule({ label: "shader_module0018", code: shader_module0018_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder300.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder104.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query100.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    
    const command_buffer104 = command_encoder104.finish();
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query002.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder105.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder003.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    const command_buffer002 = command_encoder002.finish();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer005 = command_encoder005.finish();
    device10.queue.submit([command_buffer103, ]);
    command_encoder105.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer300 = command_encoder300.finish();
    device00.queue.submit([command_buffer005, ]);
    command_encoder000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer004, ]);
    const command_buffer000 = command_encoder000.finish();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer003 = command_encoder003.finish();
}