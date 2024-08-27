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
        powerPreference: undefined
    });
    const array0 = new Float32Array([1.0, 0.75, 0.5, 0.0, 0.75, -1.0, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, -0.75, 0.25, -0.5, -0.25, 0.5, 0.0, 0.75, 0.75, -1.0, -0.5, 0.5, 1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -0.25, 0.25, 0.5, 0.0, 1.0, -1.0, 0.25, 1.0, 1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.0, -0.25, 0.25, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 1.0, 1.0, 0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, 0.0, -0.5, 0.0, 0.75, -1.0, 1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    device10.destroy();
    
    
    const array1 = new Float32Array([-1.0, 0.0, 0.5, -0.75, -0.25, -0.5, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, -1.0, 0.75, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, 0.5, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -0.5, 0.25, -0.25, -0.25, 1.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.5, 0.0, 0.75, 1.0, -0.25, 0.75, 1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.25, 0.0, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, 0.5, -0.5, 0.25, 0.25, -0.5, 0.25, 0.0, -0.25, -1.0, -1.0, -0.5, -0.5, -1.0, 0.0, 0.75, 0.25, 0.0, -0.5, 1.0, 0.0, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.75, -0.25, -0.75, 0.0, -0.75, 1.0, -1.0, -0.75, 0.5, -0.5, 0.0, -1.0, -0.5, -0.75, -0.25, -1.0, 0.75, 0.25, 1.0, 0.0, 0.0, -0.25, -0.5, 0.75, 0.75, 0.75, 0.5, 0.5, 0.75, 0.5, -0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.5, 0.25, -0.5, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, 0.25, -0.25, 0.0, 1.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.25, -1.0, -0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -0.75, 0.25, -0.25, 0.5, -0.25, 0.5, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, 0.5, 1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.75, 0.25, -0.25, -0.75, 0.25, 0.5, 0.0, 0.5, -0.25, -0.25, ]);
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.0, -0.25, 1.0, 0.25, 0.0, -0.25, 1.0, -0.5, -0.5, 0.0, -0.5, 0.5, -0.75, 1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.5, 1.0, -0.5, 0.0, 0.25, 1.0, 1.0, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.75, -1.0, 0.0, 1.0, 0.0, -0.75, 1.0, -0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.75, -1.0, -1.0, 1.0, 1.0, -0.5, -0.5, -1.0, 0.75, 0.5, 0.25, 0.0, -0.5, -0.5, -0.5, -1.0, -0.5, -0.75, 0.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.0, 0.75, -1.0, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder300.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder300.clearBuffer(buffer300);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.destroy();
    const array4 = new Float32Array([-0.25, -1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 1.0, -0.75, 0.75, 0.0, -1.0, -1.0, -0.25, 0.25, 1.0, -0.75, 0.5, -0.25, 0.75, -0.75, 0.5, -1.0, -0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, -0.25, -0.5, 1.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.5, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, -0.25, -0.25, -0.5, -0.75, 0.25, 0.5, -0.75, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -0.5, -0.5, 0.5, 0.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.5, -1.0, 0.25, 0.5, -0.75, -0.75, -0.5, -0.25, 0.25, -1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.75, 0.25, -0.5, -1.0, -1.0, 0.75, 1.0, -0.75, -0.5, 0.0, ]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    
    
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.25, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 0.5, -0.25, 0.5, 1.0, -0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, -0.75, 0.25, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, -0.25, 1.0, 0.0, 0.75, 1.0, 0.5, -0.25, -0.25, -0.25, 0.5, -0.75, 0.75, 0.0, 0.25, -0.25, -0.25, 0.25, 0.5, 0.5, 0.5, 0.75, 0.25, -1.0, 1.0, 1.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 0.0, -0.75, 0.0, 0.0, 0.25, -1.0, 0.75, 0.0, -0.25, -0.25, -1.0, 1.0, 0.5, -1.0, 0.75, -1.0, -0.75, 0.5, -0.5, -1.0, 0.25, ]);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder303.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder303.clearBuffer(buffer300);
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3020.insertDebugMarker("marker")
    query301.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    command_encoder303.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder300.setPipeline(render_pipeline302);
    command_encoder303.clearBuffer(buffer301);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    query300.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    texture700.destroy();
    
    query300.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array6 = new Float32Array([-0.25, 0.0, 0.0, -0.5, 0.5, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, 1.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.5, -0.75, 0.5, 0.75, -0.75, 0.5, 0.0, -1.0, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, 0.75, -0.25, -0.25, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, -0.75, 0.0, 0.5, 0.5, -0.25, 0.75, -0.5, 0.0, 0.5, -0.25, 0.75, 0.0, 1.0, 0.75, 0.75, 0.0, -0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, -0.5, 1.0, -0.5, 0.5, ]);
    device80.queue.submit([]);
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    command_encoder303.clearBuffer(buffer301);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.destroy();
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_buffer305 = command_encoder305.finish();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    device60.destroy();
    render_pass_encoder3030.executeBundles([])
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    texture301.destroy();
    render_bundle_encoder300.popDebugGroup();
    
    
    
    render_pass_encoder3030.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    buffer303.destroy()
    
    
    render_bundle_encoder702.insertDebugMarker("marker");
    
    
    
    device60.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    query300.destroy()
    const buffer800 = device80.createBuffer({
        label: "buffer800",
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
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder701.popDebugGroup();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    command_encoder800.insertDebugMarker("mymarker");
    command_encoder800.insertDebugMarker("mymarker");
    texture500.destroy();
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    render_bundle_encoder702.insertDebugMarker("marker");
    render_pass_encoder3030.setStencilReference(1);
    buffer300.destroy()
    
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device50.pushErrorScope("out-of-memory");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder702.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder702.insertDebugMarker("marker");
    
    device70.pushErrorScope("internal");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.submit([command_buffer301, ]);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer800 = command_encoder800.finish();
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3030.setStencilReference(1);
    device50.destroy();
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    command_encoder300.copyBufferToBuffer(
        buffer302,
        0,
        buffer301,
        0,
        400
    );
    
    
    
    
    
    compute_pass_encoder3040.popDebugGroup()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    
    
    
    buffer301.destroy()
    render_bundle_encoder702.popDebugGroup();
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    buffer306.destroy()
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device80.pushErrorScope("internal");
    
    query302.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder3040.insertDebugMarker("marker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query800.destroy()
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer308, 0, array5, 0, array5.length);
    
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
    
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device80.queue.submit([command_buffer800, ]);
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device30.queue.writeBuffer(buffer308, 0, array4, 0, array4.length);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder701.pushDebugGroup("group_marker");
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
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    buffer800.destroy()
    
    buffer307.destroy()
    device30.queue.writeBuffer(buffer308, 0, array3, 0, array3.length);
    
    buffer302.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer801.destroy()
    texture800.destroy();
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    buffer300.destroy()
    
    
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    
    const array7 = new Float32Array([0.25, 1.0, 0.25, -0.25, 0.0, 1.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 0.0, 0.75, 0.75, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 0.5, 0.5, 0.5, -0.75, -0.5, -0.75, 0.75, -0.75, -0.5, 0.75, -0.25, -1.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.75, -0.25, 0.75, 0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 0.25, -0.5, 0.5, 0.25, 1.0, 0.25, -0.5, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, -1.0, 1.0, -1.0, 1.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.5, -1.0, -0.25, 0.75, 1.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, -0.5, -1.0, 0.5, -0.25, -0.75, 0.25, ]);
    buffer305.destroy()
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer302,
        0
    )
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device30.queue.writeBuffer(buffer308, 0, array2, 0, array2.length);
    
    
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder304.clearBuffer(buffer308);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.25, 0.0, 1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, 0.0, 0.0, -0.25, 0.25, -0.75, -0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.5, 0.25, 0.5, 0.25, 0.0, 0.0, -0.75, 0.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, -0.25, 0.0, 0.25, -0.75, 0.5, 1.0, 0.5, 0.75, -0.5, -0.5, -1.0, 1.0, 0.5, 0.75, 0.25, 1.0, -0.5, 0.25, -0.75, 1.0, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, 0.5, -1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.5, -1.0, -0.5, 0.25, 0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.75, -0.75, 0.25, -0.75, 0.25, -0.25, 0.25, 0.5, -0.25, -0.75, 0.0, -0.75, 0.25, 0.0, -0.25, -0.5, 0.75, ]);
    device30.queue.writeBuffer(buffer308, 0, array0, 0, array0.length);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder700.popDebugGroup();
    buffer304.destroy()
    command_encoder304.clearBuffer(buffer304);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    render_pass_encoder3040.setPipeline(render_pipeline303);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer700.destroy()
    device80.destroy();
    compute_pass_encoder3020.insertDebugMarker("marker")
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array9 = new Float32Array([0.25, 0.0, -0.25, -1.0, 0.5, -0.75, 0.25, -1.0, -0.75, -1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 1.0, -0.75, 0.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -1.0, 0.5, -0.75, 0.75, 0.25, 1.0, -1.0, 0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 0.75, 0.25, 0.0, 1.0, -0.5, -0.75, 0.0, 0.0, 0.0, -1.0, 0.0, 0.25, -0.75, 1.0, 0.0, 0.75, 0.0, -0.25, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, -0.5, 0.75, 0.75, 0.25, 0.75, -0.25, -0.75, -1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, -0.25, 0.0, -1.0, 0.5, ]);
    command_encoder303.clearBuffer(buffer308);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer308.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer308.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer308.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder3040.setStencilReference(1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3040.setPipeline(compute_pipeline301);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3031.setPipeline(render_pipeline304);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder3030.popDebugGroup();
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3041 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3041" });
    texture302.destroy();
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer308, 0, array8, 0, array8.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    compute_pass_encoder3020.insertDebugMarker("marker")
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group302);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer309, 0, array2, 0, array2.length);
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder3041.setPipeline(compute_pipeline305);
    render_bundle_encoder300.setVertexBuffer(0, buffer306);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder702.setPipeline(render_pipeline700);
    command_encoder700.popDebugGroup()
    
    device30.queue.writeBuffer(buffer308, 0, array7, 0, array7.length);
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    command_encoder302.copyBufferToBuffer(
        buffer309,
        0,
        buffer309,
        0,
        400
    );
    texture000.destroy();
    
    render_pass_encoder3030.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    render_pass_encoder3030.popDebugGroup();
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query303.destroy()
    query303.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device30.queue.writeBuffer(buffer309, 0, array6, 0, array6.length);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group304);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer304,
        0
    )
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group700);
    
    
    device90.destroy();
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder701.popDebugGroup();
    query700.destroy()
    buffer701.destroy()
    render_pass_encoder3031.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    compute_pass_encoder3000.setPipeline(compute_pipeline309);
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.popDebugGroup();
    render_bundle_encoder300.setIndexBuffer(buffer304, "uint16");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    texture701.destroy();
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    compute_pass_encoder3041.dispatchWorkgroups(100);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3015, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3015, 0);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3016, 0);
    compute_pass_encoder3041.end();
    compute_pass_encoder3000.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3017, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group306);
    render_pass_encoder3030.setVertexBuffer(0, buffer308);
    device30.queue.submit([]);
    render_pass_encoder3030.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3031.setVertexBuffer(0, buffer304);
    compute_pass_encoder3040.end();
    render_pass_encoder3030.end();
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3031.drawIndirect(buffer3015, 0);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group307);
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder3040.setVertexBuffer(0, buffer3014);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group308);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder3031.end();
    render_pass_encoder3030.drawIndirect(buffer3016, 0);
    render_pass_encoder3040.draw(3);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3031.drawIndirect(buffer3026, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndexedIndirect(buffer3012, 0);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3040.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    command_encoder304.popDebugGroup()
    render_pass_encoder3030.draw(3);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer304, ]);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3031.setIndexBuffer(buffer3027, "uint16");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.end();
    render_pass_encoder3031.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3040.drawIndirect(buffer3026, 0);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3020.end();
    device30.queue.submit([command_buffer303, ]);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3020.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    device70.queue.submit([]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3031.end();
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3031.end();
    render_pass_encoder3031.drawIndirect(buffer3029, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3030, 0);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder3031.drawIndirect(buffer3017, 0);
    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3032,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3033, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3030.drawIndexedIndirect(buffer3033, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3030.drawIndirect(buffer3026, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3031.drawIndirect(buffer3030, 0);
    render_pass_encoder3031.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3040.end();
    device30.queue.submit([command_buffer305, ]);
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3011);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3036, 0);
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3041, 0);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    device20.queue.submit([]);
    compute_pass_encoder3041.end();
    render_pass_encoder3040.drawIndirect(buffer3036, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3040.end();
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder3041.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3030, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3031.end();
    render_pass_encoder3030.popDebugGroup();
}