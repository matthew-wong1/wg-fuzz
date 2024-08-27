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
    const array0 = new Float32Array([-0.25, -1.0, 0.5, -0.75, -0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 0.25, 0.5, 0.75, 0.25, 0.25, 1.0, -0.25, 1.0, -0.25, 1.0, -1.0, 0.5, -0.5, 1.0, 0.5, -0.5, 0.25, 0.5, 0.5, 1.0, -0.25, -1.0, -1.0, -0.25, -0.25, 0.25, -0.25, 0.0, -1.0, 0.75, -1.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.25, 0.5, 0.5, 0.0, 0.75, 0.75, 1.0, 0.25, 0.0, -0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, -0.5, 0.75, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 1.0, 0.0, -0.5, 0.0, -0.5, -0.5, 0.0, 0.0, 0.75, -0.25, -0.25, -0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.25, -0.75, ]);
    
    
    const array1 = new Float32Array([0.25, 1.0, -0.75, -1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, 0.5, -0.75, 0.75, -0.75, 1.0, 0.25, -0.75, 1.0, -0.75, 0.25, 0.0, -0.5, 1.0, -1.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, -0.5, -0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 1.0, 0.25, 0.75, -0.25, -0.25, -0.25, -1.0, -1.0, 0.25, -1.0, 0.25, 0.75, 0.25, 0.75, 0.0, 0.5, 0.0, 0.75, 0.75, -0.5, 0.25, 0.75, -0.5, 1.0, 0.5, 0.75, -0.75, -0.25, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, 1.0, 0.75, -0.25, -0.75, -1.0, ]);
    const array2 = new Float32Array([1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, -1.0, -0.5, 1.0, 0.5, -0.25, -0.25, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, -0.75, 0.75, -1.0, 0.75, 0.25, 1.0, 1.0, -0.5, -0.75, 0.0, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, -1.0, 0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -0.75, 0.75, 0.5, 0.25, -1.0, 0.75, 0.25, 1.0, 0.0, 0.75, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.5, 0.0, 0.75, 0.25, 0.25, -0.25, 0.75, 0.0, -1.0, -0.5, -0.25, 0.0, 0.0, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, -1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer200.destroy()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([-0.5, 1.0, 1.0, -1.0, -0.5, -0.75, -0.25, 1.0, 0.75, 0.75, -0.75, 0.75, -0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.25, 0.25, 0.75, 0.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.25, 0.25, 1.0, -0.5, -1.0, 1.0, -0.5, 0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -0.75, 0.5, 0.75, 0.25, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.0, 1.0, 0.0, -1.0, 0.25, 1.0, -0.25, 0.75, -0.75, 0.5, -0.5, -1.0, -0.25, 0.25, -1.0, 0.5, 1.0, 0.25, 0.25, -0.25, 0.75, -1.0, 0.0, 0.5, 0.75, 0.0, -1.0, 0.25, -1.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.0, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, ]);
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.25, -0.5, 0.0, -0.5, 1.0, 0.0, -0.75, 1.0, 1.0, 0.75, 0.75, 0.25, -1.0, -0.5, 0.5, -0.5, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.25, -0.5, -0.5, 0.0, 0.75, -0.25, 0.5, 0.75, -1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 0.25, -0.75, 1.0, -0.75, 0.25, -0.75, -0.75, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 0.25, 0.75, 0.5, -0.75, 0.5, 0.75, 0.25, -0.75, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, -0.75, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.25, 0.0, -0.5, -1.0, 0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 0.75, 0.75, 0.5, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
    
    const array5 = new Float32Array([-0.25, 1.0, -1.0, 0.25, 0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 1.0, 0.25, -0.25, 0.75, -1.0, 1.0, -1.0, -1.0, 1.0, -0.25, 0.25, 0.25, -0.25, 0.0, -0.75, -1.0, -0.75, -0.5, 0.0, -0.25, -0.25, -0.5, -0.25, 0.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, 0.5, 0.25, -0.25, 0.5, -0.25, 0.5, -0.75, 1.0, 0.0, -0.5, 0.0, 0.5, 0.0, 0.0, -0.25, 1.0, -1.0, -0.25, -1.0, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -1.0, 1.0, -0.75, -0.5, 1.0, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, 1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -1.0, -1.0, -1.0, -1.0, -0.5, -0.75, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer000.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query301.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.submit([command_buffer300, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query300.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("out-of-memory");
    const array6 = new Float32Array([0.25, 0.75, -1.0, 0.5, -0.75, -0.25, 0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -1.0, -0.5, 0.75, 1.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 0.25, -0.5, -0.75, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.75, 0.25, 0.25, 1.0, -1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 0.75, -0.5, -1.0, 0.5, 0.5, -0.75, 0.5, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, -0.25, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, -1.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 0.0, 0.0, -0.25, 0.75, 0.0, -1.0, -0.25, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, 0.75, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array7 = new Float32Array([1.0, 0.0, -1.0, 0.25, 0.5, 0.5, 1.0, 0.0, -1.0, -0.75, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, -0.75, -1.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.75, -1.0, -1.0, -0.5, 0.75, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, 0.5, -0.75, -1.0, -0.5, -0.25, -0.25, 0.5, -0.25, -0.25, -0.5, -0.75, -0.5, -0.5, -1.0, 0.5, 0.5, -0.5, 0.25, -0.75, -0.25, 0.75, 0.5, -0.75, 1.0, 0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.destroy();
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
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_buffer301 = command_encoder301.finish();
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    texture102.destroy();
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.destroy();
    const array8 = new Float32Array([0.5, -0.5, -0.25, 0.0, -0.25, 0.5, -1.0, -1.0, -0.25, -0.5, -0.25, 0.25, 0.5, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, -0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 0.75, 0.75, 0.25, 1.0, -1.0, -0.5, 0.75, 1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -0.5, -0.75, -1.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, 0.75, -0.75, 1.0, -1.0, 0.75, 0.5, -0.25, -1.0, -0.75, 0.5, 0.0, -0.5, 0.5, 0.25, -1.0, 1.0, -0.5, -0.75, 0.5, 0.75, -1.0, -0.25, -0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 0.25, 0.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.0, 0.5, -1.0, 0.5, 0.0, -1.0, -0.75, -0.25, 0.5, 0.75, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const array9 = new Float32Array([0.75, -0.25, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, -1.0, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.25, 1.0, -0.5, 0.75, 0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.0, -1.0, -0.25, -0.5, -0.25, -1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -0.5, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, -0.25, -0.5, -0.25, 1.0, -1.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, 0.5, -1.0, -0.75, 1.0, -0.75, ]);
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device10.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const array10 = new Float32Array([-0.25, 0.5, -0.25, -1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -0.5, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, -0.5, -1.0, -0.75, 0.5, -0.5, -0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, -1.0, 0.5, 0.25, -0.25, 0.5, 0.0, 0.25, 0.75, -0.25, -0.5, 1.0, -0.25, 0.75, -0.75, -1.0, 0.0, -0.25, 1.0, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 0.25, 0.75, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 0.5, -0.5, 1.0, 1.0, -1.0, 0.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.0, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, ]);
    
    
    
    
    
    
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const array11 = new Float32Array([0.25, 0.0, -1.0, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 1.0, 1.0, -0.25, -0.75, -0.5, -0.25, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, 0.0, 0.5, 0.0, -0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.75, -1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -1.0, -0.75, 0.0, 1.0, -1.0, -1.0, -0.5, -1.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.5, -0.5, 1.0, 0.5, 0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, -1.0, -0.75, -0.25, -0.25, -0.75, -0.5, -0.25, 1.0, 1.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.0, 0.75, 1.0, 1.0, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.75, ]);
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    
    device60.destroy();
    
    const array12 = new Float32Array([0.25, -1.0, 0.0, 0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.75, 0.5, 0.0, 0.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.75, 0.5, 1.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.75, -1.0, 0.75, 0.25, 1.0, 1.0, 0.0, 0.0, -0.5, -0.75, -0.25, -0.25, 0.0, -0.75, -0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -0.75, 0.0, -0.25, -0.75, 0.75, 0.75, 0.75, 0.25, 1.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, 0.75, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, 0.0, -1.0, -0.5, 0.0, 0.75, 0.0, -0.75, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -0.25, 0.0, -1.0, -0.75, 1.0, -1.0, -1.0, -1.0, -0.5, ]);
    
    
    device40.pushErrorScope("out-of-memory");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture000.destroy();
    
    const array13 = new Float32Array([0.5, 1.0, 1.0, -1.0, -0.25, 0.75, -0.75, 1.0, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, -1.0, -0.25, -0.75, -0.25, -0.25, 0.25, 0.75, -0.25, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.25, 1.0, 0.5, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.0, -1.0, 0.0, -0.75, -1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 0.0, 0.0, 0.0, -1.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, 0.75, 1.0, 0.75, 1.0, 1.0, 1.0, 0.5, -0.5, -0.75, 0.75, -0.75, 1.0, 0.0, -0.5, -0.75, -1.0, 1.0, -0.5, 0.25, 0.5, 0.0, 1.0, 1.0, 0.75, -1.0, -1.0, -1.0, -0.5, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    
    
    const array14 = new Float32Array([0.5, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.25, -0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, -0.75, 0.5, -0.5, 0.0, 0.5, -0.25, 0.5, 0.75, -1.0, 0.75, 0.25, 0.0, -0.25, 1.0, 0.75, -0.25, -0.5, -0.25, -0.25, -1.0, 0.75, 0.25, 1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.25, 0.75, 1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.75, -0.5, 0.75, -0.25, 1.0, -0.25, -0.5, -0.25, -0.5, 0.75, -1.0, -0.25, -0.25, 0.0, -0.25, 1.0, -1.0, -0.5, ]);
    
    
    
    device30.queue.submit([]);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture500.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    buffer500.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const array15 = new Float32Array([1.0, 1.0, -1.0, -0.75, 0.0, -0.5, 0.0, 0.0, 0.75, 1.0, -0.25, 0.75, -1.0, -0.5, 0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 1.0, -0.25, -0.75, 0.0, 0.25, 0.75, 0.0, 0.25, 0.5, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.5, 0.25, -0.5, 0.75, -0.75, -0.25, -0.25, -0.75, -1.0, -0.25, -0.75, -0.75, -1.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, -1.0, 0.75, -1.0, 0.0, -0.75, 0.5, 0.5, -0.75, 0.75, 0.5, -0.75, -0.25, 0.25, -0.5, -0.25, -1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 1.0, 0.5, 0.0, 0.25, 0.75, -0.25, -0.25, -0.25, -0.75, -1.0, 0.5, ]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    query500.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device60.destroy();
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device50.queue.writeTexture({ texture: texture502 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture501.destroy();
    device40.pushErrorScope("out-of-memory");
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query501.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.pushErrorScope("internal");
    const array16 = new Float32Array([-0.25, -1.0, -0.75, -1.0, -1.0, 0.25, 0.25, -0.5, -0.75, 1.0, -0.75, 0.5, -1.0, 1.0, 0.5, 0.25, -0.75, -0.5, 0.5, -0.25, 1.0, 1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.25, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -0.75, -0.5, 0.5, 1.0, 0.0, -0.5, 1.0, 0.0, -0.75, 1.0, -0.75, -0.25, -0.5, -0.25, 0.25, 0.5, -0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 0.5, -1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 1.0, 0.75, 0.5, 0.25, -1.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 1.0, 0.25, -0.75, 0.75, -0.75, -0.75, ]);
    device50.pushErrorScope("validation");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("out-of-memory");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    query500.destroy()
    
    
    device80.destroy();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const array17 = new Float32Array([-0.75, -1.0, 0.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.5, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -0.25, -0.5, -0.75, 0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.5, 0.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, -0.75, 1.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.0, 1.0, 0.5, 0.75, -1.0, 0.75, -0.5, 0.75, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.75, 0.5, -0.5, -1.0, 0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -0.5, -0.25, -0.5, 0.5, -1.0, ]);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query501.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    texture503.destroy();
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    compute_pass_encoder5000.popDebugGroup()
    query501.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.popDebugGroup();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query501.destroy()
    query800.destroy()
    query501.destroy()
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array18 = new Float32Array([1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -0.25, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.25, 0.75, -0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 0.5, -0.75, -0.5, 0.5, -0.75, -0.25, 1.0, 0.75, -1.0, 0.0, -1.0, -0.5, -1.0, -0.5, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, -0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.0, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, 0.25, -1.0, -1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -0.75, 0.0, 0.0, -1.0, 0.75, 0.75, ]);
    
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeBuffer(buffer501, 0, array18, 0, array18.length);
    device100.pushErrorScope("internal");
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder501.popDebugGroup();
    device80.destroy();
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    texture002.destroy();
    
    
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture502 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer700, 0, array17, 0, array17.length);
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    buffer702.destroy()
    device90.queue.writeTexture({ texture: texture900 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    buffer1000.destroy()
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
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    buffer502.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    const render_pass_encoder10000 = command_encoder1000.beginRenderPass({
        label: "render_pass_encoder10000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer700 = command_encoder700.finish();
    
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    query501.destroy()
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    query500.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer900.destroy()
    
    device90.queue.writeTexture({ texture: texture902 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.submit([command_buffer700, ]);
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder10000.executeBundles([])
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1001.destroy();
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder10000.setScissorRect(0, 0, texture1000.width / 2, texture1000.height / 2);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    device50.queue.writeTexture({ texture: texture502 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer501.destroy()
    
    device90.queue.writeTexture({ texture: texture900 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer701.destroy()
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    query201.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder10000.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    
    device50.queue.writeTexture({ texture: texture502 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder700.popDebugGroup();
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    render_bundle_encoder701.insertDebugMarker("marker");
    query700.destroy()
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_pass_encoder10000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_buffer701 = command_encoder701.finish();
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.popDebugGroup()
    const render_pass_encoder10010 = command_encoder1001.beginRenderPass({
        label: "render_pass_encoder10010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10001,
            },
        ],
        occlusionQuerySet: query1000
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device50.queue.writeTexture({ texture: texture502 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    render_pass_encoder10010.executeBundles([])
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer703.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder10010.executeBundles([])
    
    device90.queue.writeTexture({ texture: texture901 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder10001 = command_encoder1000.beginRenderPass({
        label: "render_pass_encoder10001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10000,
            },
        ],
        occlusionQuerySet: query1001
    });
    render_pass_encoder10010.executeBundles([])
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1003 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9000.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    device70.queue.writeTexture({ texture: texture700 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture900.destroy();
    
    query302.destroy()
    device50.queue.writeTexture({ texture: texture502 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder10010.setViewport(0, 0, texture1000.width / 2, texture1000.height / 2, 0, 1);
    
    
    
    
    render_pass_encoder10010.executeBundles([])
    compute_pass_encoder7010.setPipeline(compute_pipeline701);
    render_pass_encoder10000.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group700);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder7010.dispatchWorkgroups(100);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer901 = command_encoder901.finish();
    compute_pass_encoder7010.end();
    device70.queue.submit([command_buffer701, ]);
    device90.queue.submit([command_buffer901, ]);
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder5000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
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
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    compute_pass_encoder7010.popDebugGroup()
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    device00.queue.submit([]);
    compute_pass_encoder5000.end();
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    device100.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder10000.popDebugGroup();
    render_pass_encoder10000.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer1001 = command_encoder1001.finish();
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
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
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    compute_pass_encoder7010.popDebugGroup()
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer706, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer706, 0);
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    render_pass_encoder3020.popDebugGroup();
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    compute_pass_encoder5000.end();
    compute_pass_encoder9000.popDebugGroup()
    compute_pass_encoder5000.end();
    device100.queue.submit([command_buffer1001, ]);
    device90.queue.submit([command_buffer901, ]);
    device100.queue.submit([command_buffer1001, ]);
    render_pass_encoder10010.popDebugGroup();
    render_pass_encoder10001.popDebugGroup();
    compute_pass_encoder7010.end();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder9000.popDebugGroup()
    device100.queue.submit([command_buffer1001, ]);
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder7010.end();
    compute_pass_encoder5000.end();
    device70.queue.submit([]);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder10001.popDebugGroup();
    device50.queue.submit([]);
    device50.queue.submit([]);
    const command_buffer1000 = command_encoder1000.finish();
    render_pass_encoder10000.popDebugGroup();
    render_pass_encoder10001.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group702);
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder5000.end();
    device70.queue.submit([command_buffer700, ]);
    device90.queue.submit([command_buffer901, ]);
    compute_pass_encoder7010.popDebugGroup()
    device100.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
}