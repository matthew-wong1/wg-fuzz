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
    const array0 = new Float32Array([0.5, 0.0, 1.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 0.0, 0.0, -1.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.0, -0.5, -1.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, 0.75, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, -0.5, -0.5, -1.0, -0.5, -0.75, -0.25, 0.5, -0.25, -0.75, -1.0, 1.0, -0.75, -0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, -1.0, 0.75, 0.75, -0.5, 0.0, 0.75, -1.0, -0.75, 0.5, 0.0, 1.0, 1.0, 0.5, -1.0, -1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 0.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.75, 1.0, 0.5, 1.0, 1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.25, -0.25, -0.25, 0.0, 1.0, -0.5, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, -0.25, -1.0, 0.75, -1.0, 0.0, 0.25, 0.25, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -1.0, 0.75, 1.0, -1.0, -1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, -1.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.25, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 0.0, 0.75, 1.0, 0.0, -0.75, -0.75, -1.0, -1.0, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, -0.75, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 0.0, ]);
    buffer000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array2 = new Float32Array([-0.25, -0.25, -0.75, 0.0, 1.0, -0.75, 1.0, 0.75, 1.0, -0.5, -0.75, -0.25, -0.5, 0.25, 0.0, 0.5, 1.0, -0.5, -0.75, -0.25, -0.75, 0.75, 0.75, 0.75, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, -1.0, -0.25, -0.5, -1.0, -0.5, -0.75, -0.75, 0.25, 0.0, 1.0, -1.0, 0.75, 0.0, -0.5, -1.0, -1.0, 0.5, 0.5, -1.0, 0.0, -0.25, 0.0, 0.0, 0.75, 1.0, 0.25, -0.25, -0.75, 0.5, -0.5, -0.5, -0.25, 0.5, 0.0, 0.0, 0.25, -0.75, -0.25, 0.25, -1.0, -0.75, -0.5, -0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -0.75, 0.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.0, 0.0, ]);
    buffer000.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const array3 = new Float32Array([0.0, 0.75, 0.0, -0.75, -0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 1.0, 0.75, 0.5, 0.25, 0.0, -0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, -0.25, -0.25, -0.75, 0.0, 0.75, 0.5, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.5, -1.0, -1.0, 0.25, 0.0, -0.5, 0.75, -0.5, -0.5, -0.75, -0.25, -1.0, -0.25, 1.0, -0.75, 1.0, -0.25, -0.25, -0.75, -0.75, -1.0, 0.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.5, 0.25, 0.75, -0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.5, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -0.25, 0.0, -0.25, 0.25, -0.25, 0.25, -0.25, -1.0, ]);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array4 = new Float32Array([0.5, -1.0, 0.5, 0.75, 0.75, 0.5, -1.0, -1.0, -0.25, 0.0, 0.0, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, 0.0, 0.75, 0.5, 1.0, -0.75, 0.75, -1.0, -0.25, -1.0, -0.5, 0.5, -1.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.25, -1.0, 1.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.25, -0.75, -0.5, -1.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, -0.5, 0.5, 0.5, 0.75, 0.5, 0.25, -1.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.0, 0.75, 1.0, -0.75, 0.75, 0.75, -0.5, 0.25, -0.25, 0.0, 1.0, 0.5, -0.75, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, 0.25, 0.25, -0.25, 0.25, -0.25, 0.75, 1.0, -1.0, -0.25, -1.0, 0.75, 0.5, -0.5, 0.75, ]);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer001.destroy()
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture004 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.destroy();
    const array5 = new Float32Array([0.5, 0.5, -0.25, -0.75, -0.25, 0.5, -0.5, 0.75, 1.0, 1.0, -0.75, 0.25, 0.0, 0.25, -0.75, -0.5, -0.5, 0.5, -0.25, 0.0, 0.75, -1.0, -0.25, -0.75, 1.0, -0.75, -0.75, -0.5, -1.0, -0.25, -1.0, 0.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.5, 0.0, 0.25, -0.25, 1.0, -0.5, 0.5, -0.75, -1.0, 1.0, 0.5, -1.0, 0.75, 0.0, 0.5, 0.75, -0.5, 0.5, 0.25, 0.5, -0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 1.0, 0.25, -1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 0.5, -0.25, 0.75, 0.0, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    query400.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    device30.destroy();
    query400.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    query401.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([-0.5, 0.5, -0.75, 0.25, -1.0, -0.25, -0.5, 0.0, 0.75, 0.5, 1.0, -0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, 1.0, -0.5, -0.5, -0.5, 0.5, 0.0, 0.5, 1.0, 0.0, 1.0, 0.25, 0.75, 0.25, 1.0, 1.0, 0.5, -1.0, 0.75, 0.5, -0.75, 0.25, 0.0, -0.25, 0.75, -1.0, -0.5, 0.25, 1.0, 0.5, 1.0, 0.75, 0.75, 1.0, -0.25, 0.0, 0.25, 0.5, 0.0, 0.75, 0.25, -1.0, -0.25, 1.0, -0.75, 0.0, 0.5, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 0.25, 0.0, 1.0, -0.25, -0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 0.5, 0.75, 0.5, -0.5, -0.75, -1.0, 0.0, 0.75, 0.25, ]);
    
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-0.5, -0.5, -0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.25, 0.0, -1.0, 0.5, -0.75, -1.0, 0.0, -1.0, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.5, -1.0, -0.5, 0.75, -0.5, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, 1.0, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.5, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 0.5, 0.75, -1.0, 0.75, 0.0, 1.0, 0.0, 0.5, 0.0, 1.0, -0.5, 0.25, 0.5, 0.5, -1.0, 0.5, 0.25, 0.75, 0.5, 0.25, -1.0, -1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 1.0, -0.25, 0.25, ]);
    
    const array8 = new Float32Array([-1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, 0.0, -0.75, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 0.5, -1.0, -0.75, -1.0, 0.0, 1.0, 0.5, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, -0.75, 0.5, 0.5, 0.25, 0.25, -1.0, -0.5, 0.25, -1.0, 1.0, 0.25, -0.25, -0.25, -1.0, 0.75, -0.5, 0.25, -0.25, -0.75, 0.75, -0.5, 0.5, 0.5, 1.0, 0.75, 0.0, -0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 0.25, 0.0, 0.25, 1.0, -0.75, 0.75, 1.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.75, -0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.5, -0.75, 0.0, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, ]);
    
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array9 = new Float32Array([-0.5, -0.25, 0.75, 0.25, 0.75, 0.75, 0.75, 0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.25, 0.25, -0.25, -0.75, 0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 0.5, -0.25, 0.5, 0.5, 0.5, -0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.25, -0.5, 0.75, 0.0, -0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 0.25, 0.0, 0.25, 0.0, 1.0, -0.75, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 1.0, -0.25, -0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -0.5, -0.75, 1.0, 0.75, 0.75, 0.0, -0.25, -0.75, ]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device20.destroy();
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.destroy();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer502.destroy()
    query600.destroy()
    buffer300.destroy()
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device60.destroy();
    
    
    
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer501.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    device00.queue.writeTexture({ texture: texture004 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    query601.destroy()
    device70.destroy();
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([-1.0, 1.0, -0.75, 1.0, -0.5, -0.75, -0.25, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, -0.5, 0.25, -1.0, 0.5, 0.25, 0.25, 1.0, -0.25, -0.75, 1.0, 0.25, 1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 1.0, -1.0, 0.75, 0.0, 0.0, 0.0, -0.25, -1.0, 0.25, 0.5, -0.75, -0.5, 0.25, -0.25, -0.5, -0.5, -1.0, -1.0, 0.0, 0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, -1.0, 0.0, 0.25, 0.0, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, -1.0, ]);
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
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
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const array11 = new Float32Array([0.5, 0.75, -0.5, 1.0, -1.0, 0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 1.0, -1.0, 0.0, -1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.25, 0.0, -0.5, 0.0, 0.5, -0.5, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 0.75, -0.25, 0.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, -0.75, -1.0, 1.0, 0.75, 1.0, 0.0, 0.75, 0.0, -0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -0.5, -0.25, -0.75, 0.5, 0.25, -1.0, 1.0, 0.5, 1.0, -0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.25, -0.25, -1.0, 1.0, -1.0, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
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
    device00.queue.writeTexture({ texture: texture004 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device00.queue.writeTexture({ texture: texture004 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    
    
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    const array12 = new Float32Array([1.0, -0.75, -1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, 0.25, -0.25, 0.25, 0.0, 0.25, 0.0, 1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, -0.75, 0.0, 0.25, 0.25, 0.5, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 0.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.75, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.25, 0.75, -1.0, -0.75, -0.25, -0.75, 0.0, 0.0, 0.5, 1.0, -0.75, 0.0, -0.25, -0.5, 0.0, 0.0, 0.75, -0.5, 0.25, -1.0, 1.0, -1.0, 0.0, 0.0, -0.75, 0.5, -0.5, 0.5, 0.75, -0.5, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.75, -0.5, ]);
    
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module900,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    render_bundle_encoder900.popDebugGroup();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    buffer100.destroy()
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    
    
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer900.destroy()
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer800.destroy()
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module906,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module906,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    device60.destroy();
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    
    device80.destroy();
    device90.destroy();
    
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module905,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module905,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    
    device70.queue.writeTexture({ texture: texture700 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const texture_view5014 = texture501.createView({ label: "texture_view5014" });
    
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device110.destroy();
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    device100.destroy();
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    buffer002.destroy()
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device120.destroy();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    query1100.destroy()
}