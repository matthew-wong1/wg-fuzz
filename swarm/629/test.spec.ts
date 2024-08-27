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
    
    
    
    
    
    const array0 = new Float32Array([-0.75, -0.5, 0.25, -0.25, 0.5, -0.5, 0.25, -0.75, 0.5, -0.5, 0.0, 0.25, -0.5, -0.25, -0.5, 0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.75, -1.0, -0.75, 1.0, 1.0, -0.5, -1.0, 0.75, -0.75, 0.5, 1.0, -0.25, -1.0, 1.0, -0.75, -0.5, -0.75, -0.75, 0.75, 0.75, -1.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 0.0, 0.25, 0.25, 0.0, 0.75, 0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 0.5, 0.25, -1.0, 0.5, -0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 1.0, -1.0, -1.0, 0.25, 1.0, -0.25, 1.0, 0.0, 0.5, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const array1 = new Float32Array([-0.75, -0.5, -1.0, 0.0, 0.5, 0.25, 0.5, 0.25, -0.5, 0.0, 0.5, -0.5, 0.0, 0.75, -0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 1.0, 0.75, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, 0.25, 1.0, -0.5, -0.25, 0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, 0.25, -0.75, -1.0, 1.0, -0.25, 0.0, 0.25, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, 0.0, 0.25, 1.0, 0.75, 0.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, 0.25, 0.5, 0.75, -1.0, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, -0.75, 0.25, -0.75, 0.25, 0.75, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device20.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([-0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -1.0, 0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, 1.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, 0.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, -0.5, 0.5, -0.75, -0.25, -0.75, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, -0.5, -0.25, -0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, -1.0, 0.0, 0.75, -0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -0.75, 1.0, -0.75, -0.5, 0.75, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.75, ]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array3 = new Float32Array([0.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, 1.0, -0.5, 0.25, -1.0, 0.75, 1.0, -0.25, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, 0.25, -0.75, 0.0, -0.5, -0.25, 1.0, 0.5, -0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 0.5, 0.5, 0.75, 0.0, -1.0, -1.0, 1.0, 1.0, -0.25, 0.0, 0.5, 0.75, -0.75, 0.5, 0.5, -0.75, 0.75, 0.75, -1.0, -0.25, 0.25, -0.25, 0.25, 0.5, 1.0, 0.25, -0.75, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, 0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 1.0, -0.25, 1.0, -0.75, -0.75, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array4 = new Float32Array([-1.0, 0.0, -1.0, 0.25, -0.75, 0.75, -0.5, 1.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, 0.0, 1.0, 0.5, 1.0, -1.0, -1.0, 1.0, -0.75, -0.25, -0.75, -0.75, 0.75, 0.0, 0.75, -0.75, 1.0, 0.25, 0.5, 1.0, 0.0, -0.75, 1.0, -0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 1.0, 0.25, -0.25, -0.75, -1.0, -0.25, -0.25, -0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, 0.25, 0.5, -0.5, -0.25, 0.0, 1.0, -0.75, 0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, -1.0, 0.0, 0.5, 1.0, 1.0, 0.0, 0.5, 0.25, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, 0.0, -0.75, -0.75, -0.5, -1.0, 0.25, 0.0, -0.75, 0.5, 1.0, 1.0, 0.0, -0.25, ]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    device60.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    buffer500.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    device50.destroy();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    buffer400.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device90.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device80.destroy();
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const array5 = new Float32Array([-0.25, 0.25, -0.5, 0.75, 0.0, 0.0, 0.25, 0.5, -1.0, -0.75, -0.25, 0.5, -1.0, -0.25, -1.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.5, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, -1.0, 0.0, 0.25, -0.5, 1.0, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.25, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.25, 0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -0.5, 1.0, -0.25, -0.25, -0.5, 0.5, -0.5, 1.0, -1.0, -0.75, ]);
    const array6 = new Float32Array([0.5, -1.0, 0.5, 0.5, -0.75, 0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.75, 0.0, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 0.75, -1.0, -0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 0.25, -1.0, -0.75, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, -0.5, -0.75, 1.0, -0.25, 0.75, 0.0, 0.75, 0.75, 0.5, 0.25, -0.5, 0.75, 0.25, 0.5, -0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 1.0, 0.75, 0.25, -0.25, -0.5, -0.75, -1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.75, 0.75, -0.25, -0.75, -0.25, 0.5, -0.75, -0.5, -0.75, -0.5, 0.25, ]);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array7 = new Float32Array([0.75, 1.0, 0.5, 0.5, 0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -0.5, 1.0, 0.75, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.25, 0.5, 1.0, 0.5, -0.25, 0.75, 0.75, 0.0, -1.0, 0.75, -0.5, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, 0.5, 0.25, -0.75, 0.75, 0.75, 0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 0.25, -0.5, 1.0, 0.0, -0.75, -0.5, 0.75, 0.25, -0.75, 0.75, 0.5, -0.5, -1.0, 1.0, 0.0, 0.75, 0.5, 1.0, -0.75, -1.0, 0.0, -0.5, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.0, -0.5, 0.0, 0.0, ]);
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device40.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    buffer1000.destroy()
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    device110.destroy();
    const array8 = new Float32Array([0.75, 0.5, -1.0, -0.5, 1.0, -1.0, 0.5, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 0.5, -0.25, -0.25, -0.25, 1.0, 0.5, 0.5, 0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 0.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.0, -0.25, 0.0, -0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 0.75, -0.25, -0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, 0.0, -0.75, 1.0, -0.25, 0.5, 1.0, 0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.0, -0.25, ]);
    
    
    buffer1001.destroy()
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    
    
    const array9 = new Float32Array([0.0, 0.0, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 0.75, 0.25, -0.5, 1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 0.75, 0.5, 0.25, 0.5, -1.0, -0.25, 0.75, -0.5, -1.0, 0.25, 0.25, -1.0, -0.25, -0.5, 0.75, 0.5, -0.25, 0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -1.0, -0.5, -0.25, 1.0, -0.5, -1.0, -0.75, 0.5, 0.0, -0.75, 1.0, 1.0, -1.0, 0.25, -0.5, 1.0, -0.25, -0.25, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.5, ]);
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1002, 0, array4, 0, array4.length);
    buffer1002.destroy()
    
    var shader_module1006_code = "";
    try {
        shader_module1006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1006 = await device100.createShaderModule({ label: "shader_module1006", code: shader_module1006_code })
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array10 = new Float32Array([-1.0, -0.25, -0.5, -0.5, 1.0, 0.25, -0.5, 1.0, -0.5, 0.5, -0.25, 1.0, 0.5, 0.25, -0.25, -0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, 0.0, -0.5, 1.0, 1.0, 0.0, -1.0, 0.25, 0.0, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.5, -1.0, 0.25, 0.5, 0.5, 1.0, 0.75, 0.25, 0.25, -0.25, -0.75, -0.5, -0.5, 0.25, -1.0, -0.75, -0.75, -1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.5, -0.75, -0.75, -0.5, -1.0, 0.0, 0.25, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, 1.0, 1.0, 1.0, 0.25, 0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 0.25, 0.5, ]);
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device100.queue.writeTexture({ texture: texture1000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1300.destroy()
    
    device100.queue.writeTexture({ texture: texture1000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    
    device100.queue.writeTexture({ texture: texture1000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.destroy();
    
    device100.queue.writeTexture({ texture: texture1000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1007_code = "";
    try {
        shader_module1007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1007 = await device100.createShaderModule({ label: "shader_module1007", code: shader_module1007_code })
    
    
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device100.destroy();
    const array11 = new Float32Array([0.75, -0.5, -0.5, 0.0, -0.5, 0.0, 0.75, 0.0, 0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, -1.0, 0.5, -0.25, -0.75, 0.75, 0.0, 0.5, -0.75, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -0.5, -0.25, 1.0, -1.0, 1.0, -0.5, -0.5, -0.25, 0.75, -1.0, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, -0.25, -0.75, -0.5, 0.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, 0.5, -0.25, -0.25, -0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.25, 1.0, 0.5, -1.0, 1.0, -0.5, -0.25, -0.25, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, -1.0, 0.25, 0.5, -0.25, 0.0, 0.5, 0.25, 0.75, -0.5, -0.75, 0.25, -1.0, ]);
    const array12 = new Float32Array([-0.5, -0.25, 0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.0, 0.5, 0.75, -0.5, 0.5, 0.75, 1.0, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, -1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, -1.0, -0.5, -0.75, -0.75, -1.0, -0.25, -1.0, 0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, 0.75, -0.25, -0.25, -0.5, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 1.0, 0.5, ]);
    
    const array13 = new Float32Array([1.0, 1.0, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, 0.25, 1.0, 0.0, 0.5, 0.5, -0.75, 1.0, -1.0, -1.0, 0.25, -0.5, 0.25, 0.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.5, 0.5, -0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 0.0, 0.75, 0.0, -0.25, 0.25, 1.0, 0.75, -0.5, 0.5, 0.75, 0.5, -0.5, 1.0, 0.0, -0.25, 0.0, -0.5, 0.0, 0.5, 0.0, 0.0, -0.75, 0.5, -0.75, 0.0, 0.25, -0.75, -0.5, 0.5, -1.0, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, 1.0, -0.75, -0.75, 0.75, 1.0, 0.75, 0.75, 0.0, -0.25, -0.25, 0.75, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, 0.0, ]);
    const array14 = new Float32Array([0.5, -0.75, 0.0, -0.25, 1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -0.75, -0.25, -0.25, -0.5, -0.5, 0.0, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.75, -0.75, -0.75, 1.0, 0.0, -0.5, -0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.75, -0.75, -0.75, -0.75, -0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.75, 0.0, -0.75, -0.25, 0.5, 0.0, -0.5, -0.5, 0.0, -0.75, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, -1.0, -0.25, -1.0, -0.5, -0.25, -1.0, 0.25, -0.5, 0.5, -0.75, 0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.25, -0.5, -1.0, 0.0, 0.0, 0.0, 0.75, 1.0, -0.5, -0.75, -0.25, -0.75, 0.0, ]);
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const array15 = new Float32Array([-0.5, -0.5, 0.5, 0.5, -1.0, -1.0, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, -0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 0.0, 0.5, 0.75, 1.0, 1.0, -0.25, 0.0, -1.0, -0.75, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.0, -0.75, 0.0, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.5, -0.75, 1.0, 0.75, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, -0.75, 1.0, -1.0, 0.5, 0.0, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -0.75, ]);
    device120.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device140.destroy();
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder1601.insertDebugMarker("marker");
    render_bundle_encoder1500.insertDebugMarker("marker");
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    const texture_view16001 = texture1600.createView({ label: "texture_view16001" });
    device170.destroy();
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    device150.destroy();
    
    const render_bundle_encoder1602 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1602",
        colorFormats: ["bgra8unorm"]
    });
    buffer1600.destroy()
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view16002 = texture1600.createView({ label: "texture_view16002" });
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder1602.insertDebugMarker("marker");
    
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    const texture_view16011 = texture1601.createView({ label: "texture_view16011" });
    
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    device160.destroy();
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    var shader_module1900_code = "";
    try {
        shader_module1900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1900 = await device190.createShaderModule({ label: "shader_module1900", code: shader_module1900_code })
    const texture1900 = device190.createTexture({
        label: "texture1900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    const texture2000 = device200.createTexture({
        label: "texture2000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture1901 = device190.createTexture({
        label: "texture1901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device180.destroy();
    device190.queue.writeTexture({ texture: texture1901 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device190.queue.writeTexture({ texture: texture1901 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device190.queue.writeTexture({ texture: texture1901 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const texture1902 = device190.createTexture({
        label: "texture1902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device190.queue.writeTexture({ texture: texture1901 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device200.destroy();
    device190.queue.writeTexture({ texture: texture1901 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1900 = device190.createRenderBundleEncoder({
        label: "render_bundle_encoder1900",
        colorFormats: ["bgra8unorm"]
    });
    device190.destroy();
    
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer2102 = device210.createBuffer({
        label: "buffer2102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer2102.destroy()
    buffer2101.destroy()
    
    const buffer2103 = device210.createBuffer({
        label: "buffer2103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device210.destroy();
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    const array16 = new Float32Array([-1.0, 1.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, -0.75, -1.0, -0.5, -1.0, -0.75, -0.5, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, -0.25, -0.75, -0.75, -0.5, 0.75, 0.75, 0.75, 0.0, 0.0, 0.25, -0.75, 0.5, -0.5, -0.25, -0.75, 0.5, 0.75, 1.0, 0.75, 0.25, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.0, 0.75, -0.5, -0.75, 0.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.25, 0.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.75, 1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 0.0, -0.75, 0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 0.25, ]);
    const sampler2200 = device220.createSampler( { label: "sampler2200" } );
    
    const buffer2200 = device220.createBuffer({
        label: "buffer2200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module2300_code = "";
    try {
        shader_module2300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module2300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2300 = await device230.createShaderModule({ label: "shader_module2300", code: shader_module2300_code })
    
    
    buffer2200.destroy()
    const render_bundle_encoder2300 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2300",
        colorFormats: ["bgra8unorm"]
    });
    device220.destroy();
    
    render_bundle_encoder2300.pushDebugGroup("group_marker");
    
    
    const array17 = new Float32Array([0.75, -1.0, -0.5, 0.75, 0.75, 0.25, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, -0.5, 0.5, -0.75, 0.5, 0.0, -0.25, -0.5, 0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -1.0, -0.5, 1.0, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, 0.25, -0.25, 0.5, -0.25, 1.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.5, 0.75, 0.5, -0.5, 0.25, -0.5, -1.0, 0.25, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, -0.5, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.75, -1.0, -0.5, -0.5, -0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, -0.25, -0.5, -1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.5, 0.5, ]);
    
    
    const texture2300 = device230.createTexture({
        label: "texture2300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view23000 = texture2300.createView({ label: "texture_view23000" });
    device230.queue.writeTexture({ texture: texture2300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer2300 = device230.createBuffer({
        label: "buffer2300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device230.queue.writeBuffer(buffer2300, 0, array3, 0, array3.length);
    device230.queue.writeTexture({ texture: texture2300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array15, 0, array15.length);
    device230.queue.writeBuffer(buffer2300, 0, array8, 0, array8.length);
    device230.queue.writeTexture({ texture: texture2300 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array13, 0, array13.length);
    device230.queue.writeBuffer(buffer2300, 0, array15, 0, array15.length);
    device230.queue.writeTexture({ texture: texture2300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device230.queue.writeBuffer(buffer2300, 0, array17, 0, array17.length);
    device230.queue.writeTexture({ texture: texture2300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer2301 = device230.createBuffer({
        label: "buffer2301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    {
        await buffer2300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2300.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder2301 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2301",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer2300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2300.unmap();
        console.log(new Float32Array(data));
    }
    device230.queue.writeBuffer(buffer2300, 0, array12, 0, array12.length);
    device230.queue.writeBuffer(buffer2300, 0, array13, 0, array13.length);
    
    const array18 = new Float32Array([1.0, 0.5, 0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, 0.75, 0.75, -0.5, 0.5, 0.75, 1.0, -0.5, 0.75, -1.0, 0.5, 1.0, -0.25, -0.25, 0.5, -0.75, -0.25, 0.75, -0.75, 0.0, 1.0, -0.75, 0.0, 0.5, 0.0, -0.5, -0.5, -0.5, -0.25, -1.0, -0.5, 0.5, -0.5, 1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.25, -0.5, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, 0.25, -0.25, 0.0, 0.0, -0.75, 0.5, 1.0, 0.75, 0.0, 0.25, 0.5, 0.25, 1.0, 0.5, -0.75, 0.5, 0.0, 0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -1.0, -0.5, -0.75, 0.25, 0.75, 1.0, 0.75, 0.0, 1.0, 0.0, -0.25, 0.0, -1.0, 0.5, ]);
    device230.queue.writeBuffer(buffer2300, 0, array6, 0, array6.length);
    render_bundle_encoder2301.insertDebugMarker("marker");
    device230.queue.writeBuffer(buffer2300, 0, array16, 0, array16.length);
    device230.queue.writeTexture({ texture: texture2300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device230.queue.writeBuffer(buffer2300, 0, array14, 0, array14.length);
    device230.queue.writeBuffer(buffer2300, 0, array1, 0, array1.length);
    device230.queue.writeBuffer(buffer2300, 0, array10, 0, array10.length);
    render_bundle_encoder2301.pushDebugGroup("group_marker");
    const render_bundle_encoder2302 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2302",
        colorFormats: ["bgra8unorm"]
    });
    device230.queue.writeTexture({ texture: texture2300 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array18, 0, array18.length);
    device230.queue.writeBuffer(buffer2300, 0, array3, 0, array3.length);
    device230.queue.writeTexture({ texture: texture2300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array3, 0, array3.length);
    device230.queue.writeTexture({ texture: texture2300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device230.queue.writeBuffer(buffer2300, 0, array5, 0, array5.length);
    device230.queue.writeBuffer(buffer2300, 0, array16, 0, array16.length);
    device230.queue.writeTexture({ texture: texture2300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture2301 = device230.createTexture({
        label: "texture2301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device230.queue.writeTexture({ texture: texture2301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array17, 0, array17.length);
    device230.queue.writeTexture({ texture: texture2301 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array4, 0, array4.length);
    buffer2301.destroy()
    device230.queue.writeTexture({ texture: texture2300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array3, 0, array3.length);
    device230.queue.writeTexture({ texture: texture2301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array9, 0, array9.length);
    device230.queue.writeBuffer(buffer2300, 0, array13, 0, array13.length);
    device230.queue.writeTexture({ texture: texture2300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeTexture({ texture: texture2301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array4, 0, array4.length);
    device230.queue.writeTexture({ texture: texture2300 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device230.queue.writeBuffer(buffer2300, 0, array14, 0, array14.length);
    
    device230.queue.writeTexture({ texture: texture2300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler2300 = device230.createSampler( { label: "sampler2300" } );
}