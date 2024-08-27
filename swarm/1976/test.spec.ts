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
    const array0 = new Float32Array([0.75, 0.5, 0.5, 0.5, 1.0, -0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, -0.75, -0.5, 0.0, -0.25, -1.0, -0.5, 0.0, -0.5, -1.0, 0.0, 0.75, -1.0, -0.25, -1.0, -1.0, 0.25, -0.25, 0.75, -1.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, -0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, -0.5, 0.75, 1.0, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 0.75, 0.25, -0.75, -0.75, 0.75, -1.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, 0.5, 0.0, -0.75, 0.5, 0.5, ]);
    const array1 = new Float32Array([-0.25, -0.5, -0.5, 0.0, 0.5, -0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 1.0, -1.0, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, 0.0, 0.25, 0.0, -0.5, 0.5, -0.25, -1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.25, 0.0, -1.0, 0.25, -0.5, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.25, -1.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.75, -0.5, -0.5, -0.75, 0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 1.0, 0.0, 1.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, -0.5, -1.0, 1.0, -0.25, -0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.25, -0.75, 1.0, -0.75, 0.5, 1.0, ]);
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const array2 = new Float32Array([0.0, -0.5, -1.0, 0.75, -0.5, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, -1.0, 0.25, -0.75, 1.0, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 0.0, -0.25, 0.5, -1.0, 0.25, -0.75, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, -0.75, 0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.75, 0.75, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 0.5, 0.25, 0.5, 0.25, 0.25, -1.0, -0.5, 0.25, -1.0, -1.0, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -1.0, 0.75, ]);
    
    texture001.destroy();
    
    
    
    
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    texture002.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    texture000.destroy();
    
    
    
    
    
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const array3 = new Float32Array([-0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -1.0, 0.75, -1.0, 1.0, -0.25, 0.5, -1.0, 0.25, 0.75, -1.0, 0.75, 1.0, -0.5, -0.75, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 0.0, 0.0, -0.5, -0.25, -1.0, -1.0, -1.0, 1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -1.0, 0.0, -0.5, -0.75, 0.25, 0.5, -0.5, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 0.75, -0.25, -0.75, 1.0, -1.0, -0.5, -0.5, -0.75, -1.0, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.5, 0.0, ]);
    device20.pushErrorScope("internal");
    
    
    
    render_bundle_encoder000.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.75, 0.0, 0.0, -0.25, 0.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.5, 1.0, -0.75, 0.25, -0.5, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, 1.0, 1.0, 0.25, 0.75, 0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.5, 1.0, 0.25, -0.25, -0.5, 0.75, 1.0, 0.5, -0.5, -0.5, -0.75, 0.5, 0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.5, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, 1.0, 0.25, 0.75, 0.5, -0.75, ]);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture004.destroy();
    
    
    
    device30.destroy();
    
    
    texture201.destroy();
    
    
    
    render_bundle_encoder201.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    texture204.destroy();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    texture003.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device40.pushErrorScope("out-of-memory");
    
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device20.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    texture005.destroy();
    
    
    
    const array5 = new Float32Array([-1.0, 0.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.5, -1.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, 1.0, 0.75, 0.75, -0.25, -0.75, 0.0, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, -1.0, -0.75, 0.5, 0.25, 0.5, -0.5, -0.5, -0.25, -0.25, 1.0, -1.0, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, -0.25, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, -0.5, -0.25, 0.75, 1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.0, -1.0, 0.75, -0.75, 0.25, 0.5, 0.25, 1.0, 1.0, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, -0.25, 0.75, 1.0, 0.5, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array6 = new Float32Array([0.25, 0.5, -1.0, 1.0, 0.25, -0.5, -0.25, 0.25, 0.25, -0.75, 0.5, -1.0, 0.0, -0.25, 0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, -0.25, -1.0, -0.75, 0.0, -0.25, 0.75, -0.5, 0.5, 1.0, -0.25, 0.5, 0.5, 1.0, 0.75, -0.25, -0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, 1.0, -0.5, 0.25, 0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.0, -1.0, -1.0, -0.75, -0.75, 1.0, -0.25, -1.0, 0.75, 0.25, 0.5, -0.75, -0.5, -0.25, -0.25, 1.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.0, -0.25, 0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const array7 = new Float32Array([-0.75, 0.5, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, 0.75, 0.25, -0.5, -0.5, 0.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.0, -0.5, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, 0.0, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, -0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, -0.5, 0.0, 0.75, -1.0, -1.0, 1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, -1.0, 0.75, 0.25, 0.0, ]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    texture400.destroy();
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    
    const array8 = new Float32Array([-0.5, 1.0, -1.0, -0.25, -1.0, 0.75, -0.5, -0.75, 0.75, 0.0, 0.0, -0.75, -0.25, 1.0, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 1.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 0.25, 1.0, 0.5, 0.75, 0.0, 0.5, 0.25, -1.0, 1.0, -0.5, 0.5, 0.0, -0.5, 0.5, -0.5, -0.25, 0.5, 1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -1.0, 0.0, -1.0, -0.75, 1.0, 0.0, -0.5, 0.75, 0.5, 1.0, -0.75, -0.75, -0.5, 0.25, -0.5, 1.0, 0.25, 0.5, -0.25, 1.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.25, ]);
    texture007.destroy();
    
    
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    texture400.destroy();
    texture008.destroy();
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    texture006.destroy();
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    const array9 = new Float32Array([-0.5, -1.0, 0.25, 0.25, 0.25, 0.5, 0.5, 0.75, -0.25, -0.25, -1.0, -1.0, -1.0, -1.0, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, 0.0, -0.75, -0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.25, -0.75, 0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.5, 0.0, 1.0, 0.25, 0.5, -1.0, -0.25, 1.0, 1.0, -0.25, -0.5, -1.0, -0.75, -0.75, -0.5, -0.75, -1.0, 0.5, 0.5, 1.0, 1.0, 0.25, 0.25, -0.75, -0.25, 1.0, 0.25, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, 0.0, 0.5, 1.0, -0.5, -1.0, -1.0, -1.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.0, 1.0, 0.5, 0.25, -0.25, -0.25, 1.0, -1.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.75, 0.25, 0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    texture003.destroy();
    
    
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const array10 = new Float32Array([-0.75, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 1.0, -0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, -0.25, -0.25, 0.25, -0.25, 0.0, -1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, 0.0, 0.25, 0.5, 0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 0.25, -0.5, 0.25, -1.0, 0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.25, -1.0, -0.5, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, -0.75, 0.0, 0.25, -0.75, 0.0, -0.25, ]);
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device00.pushErrorScope("internal");
    texture401.destroy();
    texture009.destroy();
    device10.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture0010.destroy();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.destroy();
    
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder002.popDebugGroup();
    texture0011.destroy();
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device90.pushErrorScope("out-of-memory");
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    texture0010.destroy();
    
    texture401.destroy();
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    texture0012.destroy();
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    texture000.destroy();
    
    
    
    
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    texture002.destroy();
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    texture0013.destroy();
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    
    render_bundle_encoder002.popDebugGroup();
    
    
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    texture403.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device60.destroy();
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture009.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder901.insertDebugMarker("marker");
    texture402.destroy();
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    texture401.destroy();
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    texture007.destroy();
    
    device90.queue.submit([]);
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture_view0062 = texture006.createView({ label: "texture_view0062" });
    
    
    texture200.destroy();
    
    
    
    device80.destroy();
    
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device50.queue.submit([]);
    device50.queue.submit([]);
}