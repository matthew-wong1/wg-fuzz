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
    const array0 = new Float32Array([-0.5, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, -0.75, 1.0, -0.75, 0.25, 1.0, 0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -1.0, 1.0, 1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.75, 0.0, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.25, -0.75, 1.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 1.0, 0.75, -0.25, 0.5, 0.25, 0.5, -0.75, -0.75, 0.5, -0.25, -0.75, 0.25, -0.5, -1.0, 0.5, -0.5, -0.25, -0.75, -1.0, -1.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.5, 0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -0.75, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -1.0, -0.75, ]);
    const array1 = new Float32Array([-0.25, -1.0, 0.75, 0.25, 0.25, -0.25, 0.75, -1.0, -0.5, -1.0, -0.5, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, -0.25, 0.0, 1.0, -0.5, 0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, -0.75, 0.75, 0.0, 0.75, -0.25, 0.25, 1.0, 0.0, -1.0, 0.75, 0.25, 0.25, -0.75, -0.25, -0.25, -0.5, -1.0, 0.75, 0.5, 0.5, -1.0, -0.75, -0.25, 1.0, 0.5, -0.25, -1.0, -0.75, -0.75, -1.0, 0.0, 0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.25, -1.0, -0.25, -0.25, 1.0, -0.5, -0.5, 0.75, -0.5, 1.0, 1.0, 0.75, -0.75, -0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.25, 0.25, -0.75, 0.5, -1.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.75, -1.0, ]);
    const array2 = new Float32Array([0.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, -0.25, 0.25, 0.25, -1.0, 0.75, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.0, 1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 0.25, -0.25, 1.0, 1.0, 0.0, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -0.5, -0.5, -0.75, 0.0, 0.5, 1.0, 1.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, 0.0, 0.5, -1.0, 0.5, 0.25, -0.5, 0.25, 1.0, 1.0, -1.0, 0.25, 0.0, 0.0, 1.0, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, -0.25, -0.5, -0.25, 0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("out-of-memory");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.pushErrorScope("validation");
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.popDebugGroup();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder000.popDebugGroup();
    
    texture301.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query300.destroy()
    
    query300.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([1.0, 1.0, 0.0, 0.25, 1.0, -1.0, 0.25, 0.5, 0.25, 0.25, 1.0, 0.25, -0.5, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 0.25, -0.5, 0.25, -0.5, 1.0, -0.75, 0.25, 0.5, -0.75, 0.75, 0.75, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, 1.0, -0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.25, 0.25, 1.0, -0.5, -0.75, 0.25, 0.0, 0.75, 0.5, -0.5, -0.5, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, -0.75, 0.0, 0.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.75, 0.0, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, 0.0, 0.0, -0.75, 0.75, -1.0, -0.75, 0.0, 0.75, 0.25, -0.5, -0.5, 0.25, -1.0, 0.25, ]);
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    
    render_bundle_encoder300.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    texture200.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    device00.destroy();
    
    device40.pushErrorScope("validation");
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device20.destroy();
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    
    
    
    
    device30.pushErrorScope("validation");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    
    
    const array4 = new Float32Array([0.0, 0.25, -0.75, 0.25, -0.25, 0.25, -0.25, 0.0, 0.5, -0.75, -1.0, 0.25, -0.25, 0.75, -0.75, 0.5, 0.25, 0.0, -0.5, 0.0, 0.75, 0.0, -0.5, 0.5, 1.0, -0.5, -0.25, 1.0, -1.0, 0.25, -0.75, 0.5, -1.0, -1.0, -0.5, 0.75, 0.0, -0.75, 1.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.5, 0.0, 0.5, -1.0, 0.25, -0.75, 0.25, 0.75, -0.75, -1.0, -0.75, 0.5, -0.75, -1.0, 0.0, 0.25, 0.25, -0.75, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.0, 0.5, 0.25, -1.0, 0.75, 0.75, 0.25, 0.5, 1.0, -0.25, 0.5, -0.5, -0.5, 0.5, 0.75, -0.75, 0.5, 0.0, 0.75, 1.0, 0.0, -0.5, 0.25, 0.5, -1.0, -0.25, 0.75, -1.0, -1.0, -1.0, -0.5, 0.5, ]);
    query300.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture302.destroy();
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    
    
    
    
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    query400.destroy()
    
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    
    device30.destroy();
    device40.destroy();
    query401.destroy()
    render_bundle_encoder303.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query000.destroy()
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    device50.destroy();
    
    
    
    
    const array5 = new Float32Array([-1.0, -0.75, -0.75, -1.0, 0.5, 0.75, -0.5, -0.75, 0.25, -1.0, -0.5, -0.25, 0.0, 1.0, -0.25, -0.25, -0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, 0.25, 0.25, -0.25, -0.25, 0.5, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.25, 0.25, -0.5, 1.0, -0.75, 0.75, 1.0, -0.75, 0.25, -0.25, 0.75, 0.5, 0.25, 0.75, 1.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.0, 0.5, 0.75, 0.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.0, 0.25, 0.5, 0.25, 0.75, -0.25, 1.0, -0.5, 1.0, -0.25, -1.0, 1.0, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, -0.75, -1.0, 0.5, -0.25, -0.75, ]);
    
    
    const array6 = new Float32Array([0.25, 0.25, 0.0, 0.25, 0.75, 1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 1.0, 0.0, 1.0, -1.0, 1.0, -0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, -0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, -0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, 1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 0.25, -0.5, -0.5, 0.0, -0.75, -1.0, 0.75, 0.25, -0.5, -0.25, 0.0, 1.0, -0.75, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, 0.0, 0.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.25, -0.5, -1.0, 0.0, 1.0, ]);
    
    const array7 = new Float32Array([0.5, 0.75, -0.75, 0.75, 0.75, 1.0, 0.25, -0.75, -0.25, 0.25, 0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, 1.0, -1.0, 0.0, -1.0, 0.75, -1.0, 1.0, 0.0, 0.5, -0.25, 0.25, -0.5, 0.25, 1.0, 0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 1.0, -0.75, -0.75, 0.75, 1.0, -0.75, -0.25, 1.0, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 0.75, -0.25, -0.5, -0.5, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -1.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.25, ]);
    
    
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    texture101.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const array8 = new Float32Array([-0.75, -0.25, 0.0, -1.0, -0.25, 0.25, -1.0, 0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.25, -0.75, -0.25, 0.75, 0.75, 0.25, 0.25, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, -0.5, -1.0, 0.5, -1.0, -0.25, -0.25, 1.0, 0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.25, -0.75, 0.0, -0.5, 0.5, 1.0, 0.75, -1.0, 0.25, -0.25, -1.0, -0.25, -0.5, -0.25, -0.25, 1.0, -0.5, -0.25, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, -1.0, -1.0, 0.75, 0.75, -0.5, 0.25, -0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 0.0, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.75, 0.5, 0.25, ]);
    device60.destroy();
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture101.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    device80.pushErrorScope("out-of-memory");
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const array9 = new Float32Array([-1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.75, 0.0, 0.0, -0.75, 0.0, 0.0, -0.5, -0.5, -0.25, 0.5, -0.5, 0.75, 0.5, -0.25, -1.0, -0.5, 0.0, -0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.0, -0.25, 0.75, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, 0.75, 0.5, -0.25, 0.25, -0.75, -1.0, -0.25, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 0.25, -1.0, -0.5, -1.0, 0.0, 1.0, 0.25, 1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.25, -1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.25, -0.75, -0.5, 1.0, -0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.25, -0.5, 0.75, -1.0, 0.25, -1.0, ]);
    
    
    query800.destroy()
    
    texture600.destroy();
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query800.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    texture100.destroy();
    
    
    device60.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device70.destroy();
    
    const array10 = new Float32Array([-0.5, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, 0.5, 1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, 1.0, -1.0, -1.0, -0.75, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, -0.5, 0.75, -0.25, -1.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.25, 0.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.5, -0.5, -0.75, 0.75, 0.75, -0.5, -0.75, 0.25, 0.0, -0.75, 0.25, -0.25, -0.5, 1.0, 0.75, 0.25, 0.25, 0.25, -1.0, -0.25, -0.5, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.5, -0.5, -0.5, -0.75, -0.25, -0.5, 0.0, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, 1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, -0.25, -0.75, 0.5, -0.25, ]);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    query800.destroy()
    
    query401.destroy()
    
    
    query300.destroy()
    query801.destroy()
    const array11 = new Float32Array([0.75, -0.75, -0.25, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, 0.75, 1.0, 0.5, -0.5, 0.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 1.0, -0.25, 0.5, 0.75, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, 0.5, 0.0, 0.75, -0.25, 0.75, 0.5, -0.5, 0.75, 0.75, -0.75, -0.75, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.25, -0.5, 0.25, -0.5, 1.0, 0.0, -0.25, -0.75, -0.5, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, 0.0, -0.5, 0.5, 0.0, 0.75, 0.75, 0.25, -0.25, -0.5, 1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.0, -0.25, -0.25, 0.5, 0.75, ]);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query801.destroy()
    
    const array12 = new Float32Array([1.0, 0.75, 0.5, -0.5, 0.25, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 0.25, 0.75, 0.5, -1.0, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.25, 1.0, -1.0, -0.75, 0.75, 1.0, 0.25, -0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 1.0, 0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.5, -0.5, -0.5, -0.25, -0.75, -0.5, -0.5, 0.0, 0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 0.75, -0.75, -0.25, 0.5, 0.5, 0.25, 0.75, 0.0, -0.75, 0.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, 1.0, -0.25, 1.0, 0.5, -0.5, -1.0, 0.75, -1.0, 1.0, 0.75, -0.5, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    query800.destroy()
    
    query401.destroy()
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    
    
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.popDebugGroup();
    device90.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([0.0, 1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 0.5, -0.25, 0.0, 0.5, 0.25, 1.0, 0.75, 0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.75, -0.25, -0.25, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 0.25, -0.5, -0.75, 0.25, 1.0, 1.0, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, 0.5, 0.25, 0.0, 0.25, 1.0, 1.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, 0.5, -0.25, 0.5, -0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 1.0, -0.5, 0.75, -0.75, 0.5, -0.5, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, -0.75, -0.5, 0.0, ]);
    
    
    
    
    query802.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    device80.destroy();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    
    
    
    device90.queue.writeTexture({ texture: texture901 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    
    render_bundle_encoder200.popDebugGroup();
    
    
    
    
    
    
    query303.destroy()
    
    
    const array14 = new Float32Array([0.75, -0.25, 0.25, -0.5, 0.25, 0.5, 1.0, -0.25, -0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -0.75, -0.75, -0.25, 0.75, 0.0, 0.75, -1.0, 0.75, -0.75, -1.0, 1.0, -0.25, 1.0, 0.0, -0.5, -1.0, 0.0, -0.5, -1.0, -0.25, 0.25, 1.0, 0.25, 0.0, 0.0, 0.75, 0.0, 0.25, 0.5, -0.75, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.25, -0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 0.75, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, 0.0, 0.25, 0.5, -0.75, -0.75, 0.75, -0.5, -0.25, -0.5, 0.25, -0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 0.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.75, ]);
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device30.pushErrorScope("internal");
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    query001.destroy()
    
    device110.destroy();
    const array15 = new Float32Array([-0.75, 1.0, 0.0, -0.5, -0.25, -0.25, -0.5, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, 0.25, 0.25, 0.75, 0.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, -0.25, 0.75, 0.75, 1.0, 1.0, -1.0, 0.0, 1.0, 1.0, 0.25, 0.0, -0.75, -0.75, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, 0.0, -0.5, -0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -0.75, -1.0, -0.5, -0.5, 0.0, -0.25, -0.5, 0.0, -0.5, -0.25, -1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.0, -0.5, -0.75, -1.0, -0.5, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 0.0, -0.5, 0.75, -0.5, -1.0, 1.0, 0.75, 0.75, -1.0, -0.5, -1.0, ]);
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    device120.destroy();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query1001.destroy()
    device100.queue.writeTexture({ texture: texture1000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device100.queue.writeTexture({ texture: texture1000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeTexture({ texture: texture901 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.queue.writeTexture({ texture: texture1300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.destroy();
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeTexture({ texture: texture1300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
}