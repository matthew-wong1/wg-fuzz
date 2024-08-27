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
    
    const array0 = new Float32Array([-0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, 1.0, 0.5, 0.25, 0.25, -0.5, 1.0, -0.5, -0.25, 0.0, -0.75, 0.25, -0.5, 1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 0.5, -0.25, 0.0, -0.5, 1.0, -0.75, 0.0, 0.0, -1.0, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.5, 0.0, -0.75, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 0.5, -0.75, -0.25, 0.0, 1.0, 1.0, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 1.0, 1.0, 1.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.5, 0.25, -1.0, -0.25, 1.0, 0.0, -1.0, -0.25, -0.25, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.25, -0.5, 0.5, 0.5, -0.5, 0.25, 0.5, 0.0, -0.75, 0.0, -0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -0.75, 0.0, -1.0, -1.0, 0.5, 0.0, 0.0, -0.5, -0.75, -1.0, 1.0, -1.0, -0.75, 0.5, 0.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -0.25, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.0, -0.75, -1.0, 0.0, 0.75, 0.25, -0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.25, 0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -0.5, 0.25, 1.0, -0.25, -0.25, -0.25, -0.25, -1.0, -0.25, -0.5, -0.5, -0.5, -0.75, 0.25, 0.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, -0.75, 0.5, -1.0, -0.75, 1.0, 0.25, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 0.75, 0.75, -1.0, -0.5, 1.0, 0.5, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, -1.0, 0.25, 0.25, 0.5, 0.0, -0.5, 0.0, -1.0, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, 0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -0.75, -1.0, -0.75, 0.5, 0.75, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, 0.75, -0.75, 0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, 0.0, 0.0, 0.5, -1.0, -0.25, -0.25, 1.0, 0.0, 0.75, 0.75, -0.5, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.75, -1.0, 0.0, 0.0, ]);
    const array3 = new Float32Array([1.0, 0.5, -1.0, 1.0, 0.0, -0.75, -0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, -0.5, 0.75, 0.75, -0.25, -0.5, 0.25, -1.0, 0.0, -1.0, -0.75, -0.75, 0.25, 0.5, -0.75, 0.75, -0.75, 1.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.5, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, -0.5, 0.75, -1.0, -0.5, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.5, 0.75, 0.5, -0.25, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 0.25, 0.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.5, 0.0, -0.75, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, 0.25, 0.75, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const array4 = new Float32Array([0.75, 0.0, -1.0, -0.5, 0.75, -1.0, -0.75, -0.5, 0.5, 0.5, -0.25, 0.5, -0.75, 0.5, 0.25, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.25, 0.75, -1.0, -0.75, 1.0, -1.0, -1.0, -0.75, 0.75, 0.0, 1.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.75, 0.25, -0.75, 0.5, -0.5, 0.25, -0.75, -0.75, -0.5, -0.25, 0.25, 0.0, 0.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 1.0, -0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.75, 0.75, 0.25, 0.0, 0.25, 0.0, -0.25, 0.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, -0.75, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, -0.75, 0.25, 0.75, -0.25, -0.5, 1.0, -0.25, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -0.25, -0.25, 0.25, 0.75, -0.75, 0.5, -0.75, 0.0, 0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 0.5, -0.75, -1.0, 0.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.25, -1.0, 1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -0.75, 1.0, -0.25, 0.25, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, 0.25, -0.5, -1.0, 0.75, 0.25, 0.25, 0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -1.0, 0.5, 0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.25, 0.75, 1.0, -0.25, 0.25, 0.25, -0.5, 0.75, 0.0, -0.75, -0.75, -1.0, 0.0, 0.5, 0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 0.5, -0.25, -0.5, -0.25, -0.5, 1.0, -1.0, 0.25, -1.0, 0.75, 0.5, 0.75, 0.5, -0.25, -0.5, -0.75, -0.5, 0.25, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.0, 0.75, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 0.0, -0.75, 0.0, 0.0, 0.5, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 1.0, 0.0, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, 0.0, 1.0, 0.5, 0.5, -0.25, ]);
    device10.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([-0.25, -0.75, -0.5, -1.0, 0.5, -1.0, 0.75, -1.0, -0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -1.0, -0.75, -0.25, -0.75, 0.25, 0.0, -0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.75, -0.75, 0.75, -0.75, -0.5, 0.25, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, 0.0, -0.5, -0.75, -0.5, -1.0, -1.0, -0.75, 0.25, 0.25, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -0.25, -0.5, -0.5, 0.75, -0.25, -0.25, 1.0, 0.25, -0.25, 0.25, 0.0, -0.25, 0.0, 0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.25, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device40.pushErrorScope("out-of-memory");
    device10.pushErrorScope("internal");
    device40.queue.submit([]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device40.queue.submit([]);
    device40.destroy();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    
    
    device20.destroy();
    
    device10.queue.submit([]);
    
    render_bundle_encoder300.popDebugGroup();
    const array8 = new Float32Array([0.5, -0.25, -0.75, 0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 0.25, 0.25, 0.25, 0.75, -1.0, 1.0, 0.0, 0.0, 0.0, -0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, -0.25, 0.75, 0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.5, 0.25, -1.0, -0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, 0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -0.5, 0.75, 0.0, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, 1.0, 0.0, -0.25, -0.5, 0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 0.0, 0.0, 1.0, -0.5, -0.5, -0.75, ]);
    device20.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    
    
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder300.popDebugGroup();
    
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
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
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
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.beginOcclusionQuery(0)
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder302.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    texture500.destroy();
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_buffer501 = command_encoder501.finish();
    render_bundle_encoder301.setVertexBuffer(0, buffer303);
    buffer302.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
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
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder302.insertDebugMarker("marker");
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    device30.queue.writeBuffer(buffer304, 0, array6, 0, array6.length);
    render_bundle_encoder302.setVertexBuffer(0, buffer301);
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_bundle_encoder300.drawIndirect(buffer308, 0);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer3010.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer309, 0, array4, 0, array4.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder5000.insertDebugMarker("marker")
    buffer307.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder300.copyBufferToBuffer(
        buffer307,
        0,
        buffer304,
        0,
        400
    );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group304);
    compute_pass_encoder3020.insertDebugMarker("marker")
    query500.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder300.popDebugGroup();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder301.drawIndirect(buffer308, 0);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    query301.destroy()
    render_pass_encoder3001.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device30.queue.writeBuffer(buffer3010, 0, array2, 0, array2.length);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    texture301.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.25, 0.5, -0.75, -1.0, -1.0, 1.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 0.0, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, 0.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 0.75, -0.25, -0.25, -1.0, 0.0, -0.25, 0.25, 0.5, 0.0, -0.5, -0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.5, 0.0, 1.0, -1.0, -0.5, 0.75, -0.25, -0.75, 0.5, -1.0, 1.0, 0.5, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.25, 0.0, -0.25, 0.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -0.5, ]);
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    render_pass_encoder3001.beginOcclusionQuery(0)
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    buffer304.destroy()
    render_bundle_encoder301.drawIndirect(buffer300, 0);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_bundle_encoder302.setIndexBuffer(buffer306, "uint16");
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3001.setPipeline(render_pipeline302);
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.submit([]);
    render_pass_encoder3010.draw(3);
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.endOcclusionQuery()
    
    render_pass_encoder3000.beginOcclusionQuery(1)
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setVertexBuffer(0, buffer3012);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder302.drawIndexedIndirect(buffer3012, 0);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    render_pass_encoder3021.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder3020.executeBundles([])
    
    
    buffer309.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    render_pass_encoder3001.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_pass_encoder3020.executeBundles([])
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_pass_encoder3021.insertDebugMarker("marker");
    
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_bundle_encoder700.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    render_bundle_encoder300.popDebugGroup();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3021.executeBundles([])
    buffer700.destroy()
    compute_pass_encoder3001.popDebugGroup()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device70.queue.writeTexture({ texture: texture700 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const render_pass_encoder3002 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3002",
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
    render_pass_encoder3002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture303.destroy();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    
    device30.queue.writeBuffer(buffer308, 0, array5, 0, array5.length);
    render_pass_encoder3002.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3020.setPipeline(render_pipeline302);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    query301.destroy()
    texture500.destroy();
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    
    render_pass_encoder3021.executeBundles([])
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3001.insertDebugMarker("marker")
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer503.destroy()
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3021.pushDebugGroup("group_marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query500.destroy()
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    render_pass_encoder3010.setIndexBuffer(buffer301, "uint16");
    
    render_pass_encoder3021.executeBundles([])
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer305.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    render_pass_encoder3021.pushDebugGroup("group_marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer309.destroy()
    render_pass_encoder3020.beginOcclusionQuery(2)
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3002.executeBundles([])
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder3001.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder302.resolveQuerySet(
        query301,
        0,
        32,
        buffer3010,
        0
    )
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder302.copyTextureToTexture(
        {
            texture: texture302
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    device30.queue.writeBuffer(buffer3011, 0, array2, 0, array2.length);
    render_pass_encoder3002.setPipeline(render_pipeline302);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3000.setStencilReference(1);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    command_encoder301.clearBuffer(buffer301);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.finish();
    device30.queue.writeBuffer(buffer3011, 0, array2, 0, array2.length);
    render_pass_encoder3021.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer501.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    query302.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3011.setStencilReference(1);
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3020.popDebugGroup();
    device30.pushErrorScope("internal");
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3000.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer3012, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.popDebugGroup();
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3021.setPipeline(render_pipeline301);
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
    device70.pushErrorScope("validation");
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    
    render_pass_encoder3000.endOcclusionQuery()
    render_bundle_encoder302.finish();
    render_pass_encoder3011.executeBundles([render_bundle_encoder300, render_bundle_encoder302, ])
    device60.queue.submit([command_buffer600, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder3021.popDebugGroup();
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group305);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    render_pass_encoder3002.setBindGroup(0, bind_group306);
    render_pass_encoder3000.popDebugGroup();
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder3021.setVertexBuffer(0, buffer300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.end();
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder3021.drawIndirect(buffer308, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3010.end();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group307);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3020.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device70.queue.submit([]);
    render_pass_encoder3002.setVertexBuffer(0, buffer3012);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3002.setIndexBuffer(buffer3018, "uint16");
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group308);
    render_pass_encoder3002.drawIndirect(buffer308, 0);
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group309);
    compute_pass_encoder5000.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    render_pass_encoder3002.draw(3);
    command_encoder500.popDebugGroup()
    render_pass_encoder3001.setVertexBuffer(0, buffer3011);
    render_pass_encoder3002.end();
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    render_pass_encoder3001.draw(3);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    compute_pass_encoder3001.setPipeline(compute_pipeline300);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3011.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3021.drawIndirect(buffer308, 0);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3001.setBindGroup(0, bind_group3012);
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder3011.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3002.end();
    render_pass_encoder3000.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3001.end();
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
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder3011.drawIndirect(buffer3020, 0);
    render_pass_encoder3021.drawIndirect(buffer3029, 0);
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
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3002.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3002.setIndexBuffer(buffer300, "uint16");
    compute_pass_encoder3020.end();
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3011.drawIndirect(buffer3012, 0);
    compute_pass_encoder3000.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3021.drawIndirect(buffer3011, 0);
    compute_pass_encoder3001.end();
    render_pass_encoder3020.draw(3);
    render_pass_encoder3021.drawIndirect(buffer3018, 0);
    render_pass_encoder3020.draw(3);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    render_pass_encoder3020.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3002.setIndexBuffer(buffer3016, "uint16");
    device50.queue.submit([command_buffer500, ]);
    const command_buffer302 = command_encoder302.finish();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder3021.end();
    render_pass_encoder3002.endOcclusionQuery()
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexed(3);
}