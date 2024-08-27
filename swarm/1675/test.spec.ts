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
    
    
    const array0 = new Float32Array([-0.5, -0.25, 0.5, 0.75, -0.75, -1.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -0.25, 0.0, -0.5, 0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.5, 0.25, -0.5, -1.0, 0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 0.5, 1.0, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, 1.0, 0.25, -0.75, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, -1.0, -0.25, -0.75, -0.75, 0.25, -0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, -0.5, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -0.75, 0.25, 0.25, 0.0, -1.0, -0.5, 0.5, -0.25, -1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 0.5, 0.75, ]);
    
    const array1 = new Float32Array([-0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, 0.75, 0.75, 1.0, 0.75, 0.75, 0.25, 0.75, 1.0, 0.75, -0.75, 0.0, -0.5, -0.5, 0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, 0.5, -0.75, -1.0, -0.75, 0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.0, 0.25, -0.25, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, 1.0, 0.75, -0.25, 1.0, -0.75, -0.25, -0.25, 0.5, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -0.25, -1.0, -0.5, -0.5, 1.0, 0.75, 0.5, 0.0, 0.75, -0.5, -0.5, 0.5, 1.0, -1.0, 0.5, 0.5, 0.75, -0.25, 0.5, -0.75, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.25, 1.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, 0.0, 0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, 0.0, 0.0, 0.0, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, 0.75, 1.0, -0.75, -0.5, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 1.0, -0.25, -1.0, 0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 0.5, -0.25, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, 0.25, -1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, 0.0, -0.75, 0.5, -0.75, 0.25, 1.0, -0.25, -0.25, -0.5, 0.25, 1.0, ]);
    
    
    
    
    
    const array3 = new Float32Array([-0.5, -0.5, -0.75, 1.0, 0.5, 1.0, -0.75, -0.75, -0.75, -0.25, -0.75, 1.0, 0.75, -1.0, -0.75, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, 0.5, 0.75, 0.0, 1.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, -1.0, 0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 0.75, -0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.25, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 0.75, -0.5, 0.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.75, -0.75, 0.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.0, -0.75, -0.25, 0.25, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device10.pushErrorScope("validation");
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    texture000.destroy();
    
    
    device10.pushErrorScope("internal");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    texture001.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const array4 = new Float32Array([0.0, -0.5, -0.25, 0.0, 0.5, 0.75, -0.25, 0.75, -0.25, 1.0, 0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, -0.5, 0.75, 0.75, 0.5, -0.5, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.75, 1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, 0.5, -0.5, 0.75, -0.75, 0.25, -0.25, -1.0, 0.0, 1.0, 1.0, -0.75, -0.75, 0.75, -0.5, -0.5, 0.25, 0.25, -0.25, 0.5, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.0, 0.75, -1.0, 0.5, 0.25, 0.75, 0.75, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const array5 = new Float32Array([0.0, 0.25, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.5, 1.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.25, 0.25, -1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.25, 0.75, -1.0, -0.75, 0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 0.0, 1.0, -0.25, -0.5, 0.75, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -0.5, 1.0, -0.5, 1.0, 1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, -0.75, 1.0, -0.25, -0.75, -0.5, 0.0, -0.25, -0.75, -0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 0.5, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device30.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array6 = new Float32Array([0.75, 0.75, -0.25, -0.75, 1.0, 0.5, -0.25, 0.5, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, 0.25, -0.25, -0.5, 0.0, 1.0, -0.5, 0.5, -0.75, -1.0, -0.25, 0.0, 0.75, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 1.0, -0.25, 0.0, -1.0, 0.5, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.75, -0.25, 1.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.75, 0.5, 0.0, -0.75, 0.5, 0.0, 0.0, 0.5, -0.25, -1.0, -0.5, 1.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.25, 0.0, 1.0, 1.0, -1.0, 0.25, 1.0, -0.5, ]);
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    texture100.destroy();
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder101.popDebugGroup();
    
    
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array7 = new Float32Array([0.75, 0.5, -1.0, -0.5, -1.0, -0.5, 0.0, 1.0, -0.25, 1.0, -0.75, -0.75, 0.25, -0.25, -0.75, 0.5, -0.75, 0.5, 0.25, 0.5, 0.0, 0.0, 0.75, 0.75, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, 0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.5, -0.75, 0.0, 1.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, -0.25, 1.0, 1.0, -0.5, -1.0, -0.25, -0.25, -0.5, 1.0, -0.25, 0.25, 1.0, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.75, 1.0, 0.75, 0.75, 1.0, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, 0.25, -1.0, -0.75, 1.0, -0.75, 1.0, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture200.destroy();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    texture101.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    device10.pushErrorScope("validation");
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture103.destroy();
    texture201.destroy();
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder103.insertDebugMarker("marker");
    
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    texture103.destroy();
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const array8 = new Float32Array([0.25, -0.25, -0.25, 0.25, 0.0, 0.5, -1.0, 0.75, -0.5, -1.0, -0.25, 0.75, -0.75, 0.25, 0.5, 0.75, -1.0, 0.0, 1.0, 0.25, 1.0, -0.5, -0.75, -0.75, 1.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, 1.0, -0.75, 0.5, -0.25, 0.5, -0.5, -0.5, -1.0, 0.25, -1.0, -0.5, 0.5, -0.25, 1.0, -1.0, -1.0, 0.5, 0.0, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.25, 0.75, -0.5, -0.5, 0.75, 0.0, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, -1.0, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.0, 1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -0.25, -0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 0.75, -0.5, -0.75, -0.5, 0.75, 0.0, ]);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    render_bundle_encoder103.popDebugGroup();
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device40.destroy();
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    
    device10.queue.writeTexture({ texture: texture102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    device10.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device60.destroy();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture204.destroy();
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer105, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    
    device50.pushErrorScope("internal");
    
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture205.destroy();
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder601.popDebugGroup();
    device10.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    texture202.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    
    
    
    
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    device30.pushErrorScope("internal");
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer504, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    
    device50.destroy();
    
    
    
    
    
    
    
    
    
    device20.pushErrorScope("internal");
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    render_bundle_encoder200.popDebugGroup();
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer505, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}