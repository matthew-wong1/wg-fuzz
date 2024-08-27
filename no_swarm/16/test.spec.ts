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
    const array0 = new Float32Array([-0.5, 0.25, -0.75, 0.5, 0.75, 1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.75, 0.75, -0.25, 0.0, 0.5, 0.0, 0.5, -1.0, 0.75, 1.0, 0.0, 0.0, 1.0, 0.25, 0.75, -0.75, 0.5, 0.75, -0.75, 0.75, 0.75, -1.0, 0.5, 0.0, -0.5, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.0, 0.75, -0.5, 0.0, -1.0, 1.0, 0.5, 0.25, -0.5, -0.25, -0.25, -0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.0, 0.25, 0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, -0.25, 0.0, 0.75, 0.75, 1.0, -1.0, -0.5, 0.25, 0.0, -0.5, -1.0, -0.5, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.0, -0.25, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.75, -0.5, 1.0, -1.0, -0.25, -0.25, 0.25, -0.25, -0.5, 1.0, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.0, -0.5, -0.75, 0.5, -0.5, 0.25, 0.0, 0.5, -1.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -1.0, -0.75, -1.0, 0.75, 0.5, 0.0, 0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.0, -0.5, -0.25, 0.75, 0.25, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, -0.25, -0.75, -1.0, -0.75, -1.0, -1.0, 0.75, -1.0, -0.75, 0.75, 0.5, -0.75, -1.0, 1.0, 1.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.5, -0.25, 0.0, -0.5, -0.5, -0.5, 0.25, 0.5, 0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.25, -0.75, 0.0, 0.0, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-1.0, 0.75, 0.75, 0.25, 0.25, 0.5, -1.0, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, -0.5, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 0.75, 0.5, -1.0, 0.0, 0.5, -0.75, -0.5, 1.0, -0.75, 0.5, 0.75, -0.75, -0.75, 0.5, 0.25, 0.25, -0.75, -0.25, 0.0, -1.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.75, -0.25, -0.5, 0.75, -0.75, 1.0, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, -0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.0, 0.5, -0.5, -0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device00.destroy();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    query100.destroy()
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query100.destroy()
    texture100.destroy();
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.destroy();
    
    
    const array3 = new Float32Array([0.0, 1.0, -0.25, 0.25, 1.0, -0.25, -1.0, 0.25, -1.0, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, 0.25, -0.75, 0.0, 0.0, 0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 0.75, -0.25, -0.5, -0.5, 0.25, -0.75, 0.75, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, 1.0, 0.0, -0.75, 0.75, -0.25, 0.0, -0.25, 0.0, -0.5, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.25, 0.75, 0.5, -0.5, -0.5, 0.75, 0.5, 1.0, -1.0, -1.0, -0.5, 0.0, 0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 0.0, 1.0, 0.0, -1.0, -0.25, 0.25, 1.0, 0.5, 0.0, 1.0, -0.75, 1.0, 0.25, 0.5, -0.5, -0.5, 0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([1.0, -0.75, -0.75, 1.0, 1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -1.0, 0.25, -0.5, 0.25, -0.5, -0.75, 0.25, 0.25, -1.0, -0.5, -0.75, 0.75, -0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.0, 0.5, 1.0, -0.25, 0.75, 0.5, -1.0, 0.75, 1.0, 0.25, -0.25, 0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -0.75, -1.0, 0.25, 0.75, 0.0, 1.0, 0.75, -0.5, -0.5, 0.25, 0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 1.0, 0.5, -0.25, -0.5, 0.5, 1.0, -0.5, 0.0, 0.5, -0.5, -1.0, 1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.25, -0.75, 0.25, -0.25, 0.25, 1.0, -0.5, ]);
    
    
    
    const array5 = new Float32Array([0.25, -1.0, -0.5, -0.25, 0.0, 0.75, 0.0, 0.5, -0.5, -0.75, 1.0, 0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, 0.5, -0.75, 0.25, -1.0, -0.25, -0.75, 1.0, -0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, -0.75, 0.75, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.75, -0.5, -0.75, 0.5, -0.5, -0.25, 0.75, -0.5, -0.5, -0.25, 0.25, -0.75, 1.0, 1.0, -1.0, -0.5, 0.75, -0.75, -0.25, -0.25, 0.0, -0.5, 0.5, 0.0, -0.5, 0.75, -0.5, 0.25, -0.75, -1.0, -1.0, -0.75, 0.5, -0.5, 0.0, -0.5, -0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture200.destroy();
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    
    render_bundle_encoder200.popDebugGroup();
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-0.75, 0.5, -0.75, 0.5, 1.0, 0.25, -0.5, -0.75, -0.5, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, -0.25, 0.0, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.75, 0.25, 0.75, -1.0, -0.25, -1.0, -0.25, 1.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, 0.5, -0.25, 0.0, -0.75, -1.0, 0.25, -0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, 0.75, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, -0.5, 0.5, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, 0.5, 0.75, -0.25, 0.0, -1.0, -1.0, -0.25, 0.25, 0.25, 0.5, -1.0, 0.25, 0.75, ]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.destroy();
    const array7 = new Float32Array([-0.5, -0.25, -1.0, -0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 0.25, 0.25, 0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.25, 0.5, 0.5, -0.25, 1.0, 0.75, -0.75, 0.75, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, 0.25, -0.25, -0.25, -0.5, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.0, -1.0, -0.5, 0.5, 1.0, -0.5, 0.5, -0.25, -0.75, -0.5, 1.0, -0.5, -1.0, -0.75, -0.75, 0.75, -1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 0.0, 0.25, 0.5, 0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, -0.25, -0.25, 0.5, 1.0, -0.75, 0.75, 0.5, 0.0, -0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.25, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    texture202.destroy();
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture201.destroy();
    command_encoder201.popDebugGroup()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    command_encoder201.popDebugGroup()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer201.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const array8 = new Float32Array([0.25, -0.75, 0.75, -0.25, -0.25, -0.5, -1.0, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, -0.5, -1.0, -0.5, 1.0, 0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 0.25, 1.0, -0.75, -0.25, -0.75, 1.0, 0.25, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, -0.75, -0.25, -0.75, -0.75, -0.25, 0.25, -0.25, 0.25, -0.25, -0.75, -1.0, 0.5, -0.5, 0.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.5, 1.0, 0.5, -0.25, 0.0, -1.0, -0.25, -0.5, -1.0, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, -0.5, 1.0, -0.75, 0.75, -0.75, -0.5, 0.25, -1.0, -1.0, -0.5, 0.25, 0.75, -0.75, 0.5, 0.5, 0.75, 0.0, -0.5, -1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.75, ]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.executeBundles([])
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query401.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2010.popDebugGroup();
    buffer203.destroy()
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    query201.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array9 = new Float32Array([0.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, 0.75, 1.0, -0.25, 0.5, 1.0, 0.75, 0.0, -1.0, 0.0, 0.75, 0.5, 0.5, -1.0, -0.5, 0.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.25, -1.0, -1.0, -0.5, 1.0, 0.0, 1.0, -1.0, 0.25, 1.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.5, 0.25, -0.5, 0.0, 0.75, 1.0, -0.5, 1.0, 0.5, -0.25, 0.0, -1.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.0, -0.25, 0.0, 1.0, 1.0, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 0.0, -0.5, 0.0, 0.0, 1.0, 0.25, 0.75, 0.25, -1.0, 0.0, -1.0, -0.5, -0.25, -1.0, -0.75, ]);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    query402.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    buffer207.destroy()
    
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query402.destroy()
    const array10 = new Float32Array([-0.75, -0.25, 0.0, 1.0, 0.25, -0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.25, -0.25, 0.0, 0.75, -0.5, 1.0, 0.75, 0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 1.0, -1.0, -0.5, 1.0, -1.0, -0.5, 1.0, 0.25, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, -0.75, -0.75, -1.0, -0.25, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.75, -0.5, -0.25, 0.5, 0.0, -0.25, 1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 0.5, 1.0, 0.0, -0.25, 0.0, ]);
    
    
    
    
    
    query402.destroy()
    command_encoder600.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.pushErrorScope("validation");
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const array11 = new Float32Array([1.0, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, 0.0, -1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.5, 0.25, 0.25, 0.0, -0.75, -0.75, -0.5, -0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 0.75, -0.5, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, -1.0, 0.5, -0.25, 0.75, 0.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.25, ]);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query201.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    
    query403.destroy()
    query600.destroy()
    
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query200.destroy()
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2010.insertDebugMarker("marker");
    command_encoder601.pushDebugGroup("mygroupmarker")
    query400.destroy()
    command_encoder601.popDebugGroup()
    
    
    compute_pass_encoder2000.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer601 = command_encoder601.finish();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer401.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    query201.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query401.destroy()
    query200.destroy()
    texture500.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer402 = command_encoder402.finish();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_pass_encoder2010.popDebugGroup();
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query403.destroy()
    
    texture203.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.pushErrorScope("internal");
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    buffer202.destroy()
    device50.pushErrorScope("internal");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer205.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    buffer208.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query403.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    const array12 = new Float32Array([0.25, 0.25, 0.0, 1.0, -0.25, -0.5, 0.75, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -0.75, 1.0, 0.25, -0.75, 1.0, 0.75, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, 0.5, -0.25, -1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.75, -0.25, 1.0, -0.5, 0.75, 0.75, -0.75, -0.5, 0.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, -0.75, -0.5, -1.0, 0.25, -0.5, 1.0, -0.25, 0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 0.5, -1.0, 1.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.75, 0.5, -0.75, 0.0, 0.75, -0.75, ]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query402.destroy()
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    buffer204.destroy()
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    command_encoder401.popDebugGroup()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    texture502.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setStencilReference(1);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    texture501.destroy();
    
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    buffer209.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    device60.queue.submit([command_buffer601, ]);
    
    
    buffer400.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder200.popDebugGroup();
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    
    query200.destroy()
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setStencilReference(1);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder202.popDebugGroup();
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder203.clearBuffer(buffer2011);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    render_pass_encoder2030.setPipeline(render_pipeline205);
    
    device20.queue.writeBuffer(buffer2011, 0, array6, 0, array6.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device20.queue.writeBuffer(buffer2011, 0, array10, 0, array10.length);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2011, 0, array11, 0, array11.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    render_bundle_encoder600.popDebugGroup();
    
    compute_pass_encoder6000.popDebugGroup()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer2011.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    texture600.destroy();
    device50.pushErrorScope("validation");
    texture503.destroy();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    command_encoder401.popDebugGroup()
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    command_encoder401.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_buffer401 = command_encoder401.finish();
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_bundle_encoder601.popDebugGroup();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture400.destroy();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query201.destroy()
    
    device40.pushErrorScope("out-of-memory");
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    compute_pass_encoder2020.setPipeline(compute_pipeline208);
    const command_buffer604 = command_encoder604.finish();
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2014, 0);
    compute_pass_encoder2000.popDebugGroup()
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2017, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
    compute_pass_encoder2020.end();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer202 = command_encoder202.finish();
    device60.queue.submit([command_buffer604, ]);
    const command_buffer200 = command_encoder200.finish();
}