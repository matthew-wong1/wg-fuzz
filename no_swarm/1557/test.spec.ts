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
    const array0 = new Float32Array([-0.5, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, -0.75, 0.5, 0.25, 0.25, -0.75, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -0.25, -0.25, -0.5, 0.75, -0.5, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.5, -0.75, 0.75, 0.0, -0.5, 1.0, 0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.0, 0.0, -0.5, -0.5, -1.0, -0.5, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.5, -0.75, 0.0, -0.5, 0.5, -0.75, -0.75, -0.5, -0.5, -0.5, -0.75, -0.75, 0.75, -0.5, -0.5, 0.25, -0.5, -0.25, 0.0, ]);
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.0, -1.0, 0.0, 0.25, 1.0, -0.5, 1.0, 0.75, 0.75, -1.0, 0.0, 0.0, -0.75, 0.5, 0.75, -0.75, -0.75, 1.0, 0.25, -0.5, -1.0, 0.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, 0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, -0.5, -1.0, 0.25, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.5, 0.75, 0.5, -1.0, 0.25, -0.5, -0.5, 0.5, 1.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.25, 1.0, 1.0, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, 0.5, -0.25, 1.0, 0.0, 0.25, 1.0, ]);
    const array2 = new Float32Array([0.75, -0.5, 0.5, 0.5, 0.75, -1.0, -0.25, -1.0, -0.5, 0.25, -0.25, -0.5, -1.0, 0.75, -1.0, -1.0, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, 0.25, -1.0, 0.5, 0.25, -0.5, 0.5, 0.0, 0.25, -1.0, -0.75, 0.5, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 0.0, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, -1.0, 1.0, 0.0, 0.5, -1.0, 0.0, -0.75, -0.25, -0.75, -0.5, 0.25, 0.0, -1.0, 0.25, -0.75, -1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, 0.0, 0.25, -1.0, 0.0, -0.25, 0.5, 0.75, -0.25, 1.0, 0.25, -0.75, 0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 0.5, ]);
    
    
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([1.0, -0.75, 0.25, 0.25, -0.25, 0.25, 0.5, -0.25, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, -0.25, -1.0, 1.0, -0.75, 0.5, 0.25, 0.0, -0.5, -1.0, 0.25, 0.25, 0.25, 1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.5, 1.0, -1.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.5, -0.5, -0.25, -0.75, 0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 0.5, 1.0, 0.5, 0.5, -0.5, 0.25, 0.25, -1.0, -0.75, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, -0.75, -0.5, -0.75, 0.75, 1.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, -0.75, -0.75, -0.25, 0.75, 0.0, 0.75, 0.25, -1.0, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([0.5, -1.0, 0.75, 0.0, -0.5, 0.75, 0.25, 1.0, -0.5, 0.75, 1.0, -0.5, 0.0, 0.25, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, -0.25, 0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.25, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, 0.75, -0.5, 0.0, -0.5, 0.5, -0.75, 0.5, 0.0, -0.25, 0.75, -1.0, -1.0, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -0.5, ]);
    device20.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    
    device00.destroy();
    
    
    device20.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    query300.destroy()
    const command_buffer300 = command_encoder300.finish();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture300.destroy();
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([0.75, -0.75, 0.75, -0.25, 1.0, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, 0.0, -0.5, 0.25, 0.0, 1.0, 0.5, -1.0, 1.0, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, -0.75, 0.0, 0.0, 0.0, 0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, 0.0, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, 0.0, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.75, -1.0, 0.75, 0.25, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, -0.75, -0.75, -0.75, 0.25, -0.75, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device30.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture501.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    
    
    
    
    
    
    
    device30.queue.submit([command_buffer300, ]);
    texture500.destroy();
    const command_buffer301 = command_encoder301.finish();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.pushErrorScope("validation");
    texture500.destroy();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.submit([]);
    device30.queue.submit([]);
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeTexture({ texture: texture303 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device50.pushErrorScope("validation");
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    texture301.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    command_encoder500.insertDebugMarker("mymarker");
    texture303.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    
    
    command_encoder500.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer500 = command_encoder500.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query300.destroy()
    texture302.destroy();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    device60.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture303 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer200.destroy()
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    device50.queue.submit([command_buffer500, ]);
    
    
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device50.pushErrorScope("out-of-memory");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    texture301.destroy();
    device10.queue.submit([]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_buffer600 = command_encoder600.finish();
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
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device30.queue.submit([command_buffer301, ]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer100.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query300.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer100 = command_encoder100.finish();
    
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
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
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    device10.destroy();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture502.destroy();
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    texture304.destroy();
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.popDebugGroup();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, 0.0, -0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 0.75, 0.75, -0.75, -0.5, 0.25, 0.25, 1.0, 1.0, -1.0, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, -0.25, 0.5, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.75, 0.75, 0.25, -0.75, -0.5, -0.25, 1.0, 0.5, -0.75, 0.5, -0.5, -0.75, 0.75, 0.25, -0.5, 0.5, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 1.0, 0.5, 1.0, 0.0, -0.5, -0.25, 0.0, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, -0.75, 0.25, 0.5, 0.25, 1.0, 1.0, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.0, -1.0, 0.75, -0.25, 1.0, 0.25, ]);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    buffer502.destroy()
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    query301.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    
    
    command_encoder501.copyBufferToBuffer(
        buffer500,
        0,
        buffer503,
        0,
        400
    );
    
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder501.copyBufferToTexture(
        {
            buffer: buffer503
        },
        {
            texture: texture503
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const command_buffer501 = command_encoder501.finish();
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder302.setPipeline(render_pipeline306);
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    buffer301.destroy()
    query400.destroy()
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    buffer303.destroy()
    
    
    
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
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture305.destroy();
    render_bundle_encoder301.setVertexBuffer(0, buffer303);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder303 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder303",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    render_bundle_encoder401.popDebugGroup();
    
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer503.destroy()
    texture600.destroy();
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder500.popDebugGroup();
    buffer302.destroy()
    render_bundle_encoder303.setPipeline(render_pipeline300);
    query301.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer600.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer302.destroy()
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
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
    
    texture503.destroy();
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.setIndexBuffer(buffer305, "uint16");
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    
    render_bundle_encoder302.popDebugGroup();
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    device70.pushErrorScope("out-of-memory");
    texture505.destroy();
    query600.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    query301.destroy()
    render_bundle_encoder303.pushDebugGroup("group_marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    query302.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_bundle_encoder300.setIndexBuffer(buffer301, "uint16");
    
    query300.destroy()
    render_bundle_encoder301.setIndexBuffer(buffer307, "uint16");
    
    
    
    
    buffer601.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    render_pass_encoder3020.setPipeline(render_pipeline302);
    command_encoder601.insertDebugMarker("mymarker");
    
    render_bundle_encoder301.draw(3);
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.submit([command_buffer600, ]);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    buffer504.destroy()
    device30.pushErrorScope("out-of-memory");
    device60.pushErrorScope("validation");
    texture701.destroy();
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    device80.pushErrorScope("internal");
    device60.destroy();
    
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3022,
            },
        ],
        occlusionQuerySet: query301
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    render_bundle_encoder501.setPipeline(render_pipeline502);
    
    
    
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder3030.setPipeline(render_pipeline301);
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    query303.destroy()
    render_bundle_encoder501.popDebugGroup();
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    query301.destroy()
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder500.setPipeline(render_pipeline501);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    
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
    
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    buffer700.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    buffer501.destroy()
    
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer504,
        0
    )
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    render_bundle_encoder303.popDebugGroup();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer306.destroy()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    
    buffer305.destroy()
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer501, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, ]);
    device50.queue.submit([command_buffer502, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.popDebugGroup();
    device70.queue.submit([]);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3020.setVertexBuffer(0, buffer307);
    device80.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer306, 0);
    render_pass_encoder3030.setVertexBuffer(0, buffer303);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3030.drawIndirect(buffer307, 0);
    device80.queue.submit([]);
    render_pass_encoder3030.end();
    render_pass_encoder3030.end();
    render_pass_encoder3020.end();
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    const command_buffer302 = command_encoder302.finish();
    device50.queue.submit([]);
    device80.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([]);
    render_pass_encoder3030.end();
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer501, ]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
}