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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array0 = new Float32Array([-1.0, -1.0, 0.0, -0.25, 1.0, -0.25, -1.0, 0.0, 1.0, -0.75, 0.0, 0.75, 0.75, 1.0, 0.25, 0.75, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, -0.75, 0.5, 0.75, 0.75, -1.0, 0.0, -0.25, -1.0, -1.0, 0.25, 0.25, -1.0, -1.0, -0.5, -0.75, 1.0, -1.0, 0.5, 0.0, 0.0, -0.25, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, -1.0, -1.0, -0.25, -1.0, -0.75, -0.5, 0.75, -0.5, -1.0, -0.5, -0.25, 1.0, -0.25, -0.5, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, -0.5, -1.0, -0.5, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, -0.25, 0.0, -1.0, -0.5, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, -0.75, -0.25, -0.75, ]);
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([-0.5, -0.5, -1.0, -1.0, 1.0, 0.75, 0.0, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.5, 0.0, -0.5, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.25, -0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 0.25, 1.0, 1.0, 0.0, -1.0, 0.5, -0.25, 0.25, -0.25, -0.75, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, 0.0, -1.0, -0.5, 0.25, -0.5, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.25, -0.5, -1.0, -0.5, -1.0, 0.5, 1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 0.75, -1.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    const array2 = new Float32Array([0.75, 0.0, 0.25, 0.5, -1.0, 0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.0, 0.75, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, 0.5, 1.0, 0.0, -0.5, -0.5, -0.75, 0.0, -1.0, -0.25, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 1.0, 0.75, 0.5, 0.5, 0.0, -1.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.25, -0.25, 0.25, 1.0, -1.0, 0.5, 0.0, 0.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.75, 0.75, -0.25, -1.0, 0.75, -0.75, 1.0, 0.0, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, 0.0, 0.25, -0.5, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query001.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const array3 = new Float32Array([0.75, 0.5, -0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.5, 1.0, -0.75, -0.75, 0.5, 0.0, -0.5, -0.25, 1.0, -0.75, -0.5, 0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.75, 1.0, 0.5, 0.75, 0.75, -0.25, -0.25, 0.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.75, 0.75, 0.0, -1.0, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, 0.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, -0.25, -0.25, 0.25, ]);
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture200.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    query001.destroy()
    
    
    
    query001.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture300.destroy();
    texture202.destroy();
    device00.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const array4 = new Float32Array([-0.75, -0.25, 0.75, -1.0, 0.25, -1.0, -1.0, 0.75, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 1.0, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, 0.25, 0.0, -1.0, -0.5, -1.0, 0.75, -0.5, -1.0, -0.5, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, 0.0, -0.25, 0.25, -1.0, 0.25, 0.25, -0.25, -1.0, -0.75, 0.75, 1.0, 1.0, 0.0, 0.5, -0.25, -1.0, -0.5, -1.0, -1.0, -0.75, 1.0, 0.5, -0.25, 0.25, 0.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.25, 0.25, 1.0, 1.0, -0.25, 0.0, -1.0, -0.75, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, -1.0, -0.25, 1.0, 1.0, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    texture301.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query301.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    texture201.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array5 = new Float32Array([0.75, -0.5, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, -0.5, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 0.5, 0.5, -1.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 1.0, -0.5, -0.25, -1.0, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, -0.25, -0.75, 0.25, -0.5, 1.0, -0.75, -1.0, 0.75, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, 0.75, 0.75, -0.5, -0.25, -0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, -0.75, 0.75, 1.0, 1.0, -0.5, -0.75, 1.0, -0.25, 0.5, 0.5, -0.75, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, 0.5, 0.0, 1.0, 0.5, -0.75, 0.75, ]);
    
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    texture203.destroy();
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query201.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const array6 = new Float32Array([-0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 1.0, -0.25, 0.75, -0.75, 0.25, -0.75, -0.5, -1.0, 0.0, -0.25, 0.25, -1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.25, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, 1.0, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, -0.5, -0.5, -0.5, -1.0, 0.0, -0.25, 0.0, -0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, -0.75, 1.0, 0.0, -1.0, 0.75, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, 0.75, -0.25, -0.75, 0.5, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, -1.0, 0.0, 0.5, 0.5, -0.75, 0.25, 0.25, ]);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device50.destroy();
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([1.0, -0.5, 0.75, 0.25, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 0.25, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 1.0, -0.25, 0.75, -0.75, -0.25, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 0.0, 0.75, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.5, 0.25, 0.5, -0.75, 0.75, 0.0, -0.25, -0.75, 0.0, 1.0, -0.75, -0.5, 0.25, 0.0, 1.0, -0.5, 0.5, -0.5, 0.5, 0.25, -1.0, 0.25, -0.25, -1.0, -0.5, -1.0, -0.25, 0.5, -0.75, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    
    
    
    texture401.destroy();
    query401.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer401.destroy()
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const array8 = new Float32Array([-1.0, -0.75, -0.75, -0.5, -0.5, 1.0, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.0, 1.0, -0.5, -1.0, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, -1.0, 0.25, -1.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.5, 1.0, 1.0, 0.25, 0.75, 0.75, 0.25, -0.5, 1.0, 0.75, 1.0, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.0, 1.0, 0.0, -0.5, 0.75, -0.5, 0.5, -0.25, -0.5, -0.75, 0.0, 0.75, -0.25, -0.5, -1.0, -0.75, 1.0, 1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.25, -1.0, -0.75, -0.75, -0.25, 0.75, ]);
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    query401.destroy()
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    query402.destroy()
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    query400.destroy()
    
    query402.destroy()
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    query401.destroy()
    
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query401.destroy()
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    
    
    query401.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    texture403.destroy();
    const array9 = new Float32Array([0.0, 0.25, -1.0, 0.0, -0.25, 1.0, 0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -0.75, 0.75, 1.0, 1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 0.25, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, 1.0, 0.25, -0.75, -1.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, -0.75, 0.75, 0.0, 0.25, 0.75, 0.25, 0.25, 0.75, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 0.25, -0.25, -0.75, -0.5, 0.0, 0.5, 0.5, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, -0.5, -0.25, -0.25, 0.5, -0.25, -0.75, 0.75, -0.5, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, 0.25, -0.5, 0.5, ]);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    query400.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array10 = new Float32Array([-0.75, -0.25, 1.0, 1.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, -1.0, 0.0, 0.0, 0.5, 0.0, -0.75, 0.5, -0.25, -1.0, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, -0.5, 1.0, -1.0, -0.75, 0.25, -0.75, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, 1.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 1.0, 0.75, 0.25, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.0, -0.75, -0.5, 0.25, -0.75, 1.0, 0.5, 0.75, 1.0, -1.0, 0.0, -1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.0, 0.0, 0.75, -0.25, ]);
    
    query400.destroy()
    
    
    
    device40.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array11 = new Float32Array([0.75, -0.75, -0.25, 0.5, -0.75, 0.0, 0.25, 0.75, -0.5, -1.0, -1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, -0.75, -0.75, -1.0, -0.75, 0.5, -0.25, 1.0, -0.25, -0.25, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, 0.75, -1.0, 0.75, -0.75, -1.0, -0.25, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 0.0, -0.5, -0.25, 1.0, 0.25, -0.5, 1.0, 0.0, 0.25, 0.25, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.5, 0.5, -0.75, ]);
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query800.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    texture900.destroy();
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const array12 = new Float32Array([-1.0, 1.0, -0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.75, 0.75, -1.0, 0.75, 0.25, -1.0, -0.25, 0.25, -0.75, 0.0, 1.0, 0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.25, 0.75, 0.25, -0.5, -0.25, -1.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.5, -1.0, -1.0, 1.0, -1.0, 0.25, 0.75, 0.25, -1.0, 1.0, 0.0, -1.0, 0.75, 0.0, -0.5, 1.0, 0.0, 1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, -1.0, -0.75, -0.5, -0.75, 1.0, -1.0, -0.75, -1.0, 1.0, -0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -1.0, 0.5, 0.75, 0.25, -0.75, 1.0, -0.75, -0.75, 0.25, 0.5, 0.25, ]);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array12, 0, array12.length);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const array13 = new Float32Array([1.0, -1.0, 1.0, -1.0, 0.0, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, 0.25, -1.0, -0.25, 0.5, -0.5, 0.0, 0.0, 0.5, 1.0, -1.0, -1.0, 1.0, -0.75, -1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.0, 0.75, -0.25, -0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, -1.0, -0.25, -0.25, 0.75, 1.0, -0.25, -0.5, 0.0, -0.25, 0.0, -0.25, 0.5, 0.25, -0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.75, -1.0, 0.0, -0.25, -0.25, 0.0, 0.0, -0.5, -0.25, -0.75, 0.25, -0.75, 0.0, -0.75, 1.0, -0.5, 0.75, -0.5, -1.0, 0.25, -0.5, -1.0, -0.25, 0.25, 1.0, -0.25, -0.75, 0.25, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, -0.25, -0.25, ]);
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    texture700.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query800.destroy()
    buffer700.destroy()
    device70.destroy();
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.destroy();
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array14 = new Float32Array([-0.75, -0.75, -0.5, -0.25, 0.75, 1.0, -0.25, 0.5, -0.25, 0.0, 0.75, 0.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, -0.5, -0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.25, 0.5, -1.0, 0.25, -1.0, 0.25, 0.0, -0.5, -0.5, -0.75, -1.0, 0.75, 0.0, -0.75, 0.5, -0.75, 0.75, 0.0, 0.5, 0.0, -0.5, 0.5, 0.25, 0.0, -1.0, 0.25, 0.5, 1.0, 1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, 0.5, 0.75, 0.5, 0.5, 0.75, -0.5, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, -0.25, -0.75, 0.0, -0.25, -0.25, -0.5, 0.75, 1.0, 0.75, 0.75, -0.5, 1.0, ]);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device110.destroy();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device80.queue.writeTexture({ texture: texture803 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query800.destroy()
    device80.queue.writeTexture({ texture: texture803 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeBuffer(buffer1000, 0, array9, 0, array9.length);
    const array15 = new Float32Array([0.0, 0.5, 1.0, -0.5, -0.75, -0.75, 0.5, 0.75, -0.25, 0.5, -0.5, 0.5, 0.0, 0.5, 0.5, 1.0, -1.0, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.5, 0.75, 0.5, -0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 0.5, -1.0, -0.75, -1.0, 0.75, -0.5, 0.25, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, 0.75, 0.25, 0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -1.0, -1.0, 0.5, -0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 1.0, -0.5, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -0.5, 0.0, 0.25, 0.0, 0.75, 1.0, 1.0, -0.75, -1.0, ]);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    device80.destroy();
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query1000.destroy()
    device100.queue.writeBuffer(buffer1000, 0, array3, 0, array3.length);
    buffer1000.destroy()
    device60.destroy();
    
    
    
    
    
    
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
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    texture1001.destroy();
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const array16 = new Float32Array([-0.25, -0.5, 0.75, -0.5, 0.25, 1.0, -1.0, -0.75, -0.75, -1.0, 0.75, 1.0, 0.5, 1.0, -0.5, 0.0, -0.25, 1.0, -1.0, -0.5, 1.0, -0.25, 1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 1.0, 0.75, 0.75, -1.0, 0.5, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, -0.25, 0.0, -1.0, -0.5, 0.75, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, -0.5, 0.25, -0.5, 0.0, -0.75, 0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, -0.5, 0.5, -0.25, 0.75, -0.75, -1.0, -0.75, -0.75, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 0.75, ]);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const array17 = new Float32Array([1.0, 0.75, 0.75, 1.0, 0.75, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, -0.75, -1.0, -0.75, 0.0, 0.0, 0.75, -0.5, 0.75, 0.75, -0.75, -0.75, -1.0, -0.25, 0.5, 0.0, 0.5, 0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 0.5, -0.75, -0.5, 0.0, 0.75, -0.25, 0.5, -0.75, 0.0, -0.25, 0.5, -0.75, -0.25, 0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, 1.0, -1.0, 0.5, -0.5, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, -0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, -1.0, 0.0, 1.0, 0.0, -0.75, -1.0, -0.25, 1.0, ]);
    texture1000.destroy();
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    query1001.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    render_bundle_encoder1001.insertDebugMarker("marker");
    query1000.destroy()
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    texture1002.destroy();
    
    query1000.destroy()
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    query1002.destroy()
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device100.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    buffer1200.destroy()
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    
    
    
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const array18 = new Float32Array([-0.5, 1.0, 0.0, -0.5, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, 0.5, -0.5, 1.0, 0.25, 0.5, 0.5, -1.0, 0.75, -1.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.5, 0.5, 1.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.0, -0.5, -0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.75, -1.0, 0.5, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.25, -0.75, -0.5, 0.25, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, 0.5, -1.0, -0.75, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, 1.0, 0.0, 0.25, 0.5, 0.75, 0.0, -0.75, 1.0, -0.5, -0.25, 1.0, ]);
    render_bundle_encoder1200.insertDebugMarker("marker");
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
}