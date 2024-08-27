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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array0 = new Float32Array([1.0, 0.0, 1.0, 1.0, 0.5, -1.0, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.0, 0.5, 1.0, -0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, -0.5, 0.25, 0.25, 0.75, -0.25, 0.75, 1.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 1.0, -0.25, 0.5, 0.75, 0.25, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 0.25, -0.25, 1.0, -0.5, 1.0, 0.5, 1.0, 1.0, -0.75, -0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.25, 1.0, -0.25, 0.75, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.0, 0.0, 0.25, -1.0, -0.75, 0.25, -1.0, 0.25, ]);
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.5, 0.25, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.25, 0.0, 0.0, -0.75, -0.25, -0.5, -0.75, 0.75, 1.0, 0.25, -1.0, -1.0, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.5, 1.0, 0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.75, -1.0, 1.0, 1.0, 1.0, -1.0, -0.75, -0.75, 0.0, -0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.25, 0.0, 0.25, 0.0, 0.5, 1.0, -0.5, -0.75, 1.0, -1.0, 0.0, 1.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, -0.25, 0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, -1.0, -1.0, 0.5, -1.0, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array2 = new Float32Array([-0.75, 1.0, 0.25, 1.0, -1.0, 0.75, 0.75, -1.0, -0.75, -0.5, -1.0, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, -0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -0.5, -0.25, 0.75, 0.5, -0.5, 1.0, -0.75, -1.0, -0.75, -0.5, -0.25, -0.75, 0.75, -0.5, 0.0, -0.75, -0.75, -0.5, 0.75, -1.0, -0.25, 1.0, 1.0, 1.0, -0.75, 0.75, 0.0, -0.25, 0.5, -0.25, 0.25, -0.25, 0.25, -1.0, 0.0, -0.75, -1.0, 0.0, -0.75, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.75, -0.25, 0.25, 0.0, 0.75, -0.5, 0.5, -0.25, 0.75, 0.75, -0.5, -0.5, -1.0, 0.5, -1.0, -1.0, 1.0, 0.0, -0.75, 0.75, 0.25, ]);
    
    
    
    
    
    
    buffer100.destroy()
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const array3 = new Float32Array([-0.75, 0.0, -0.75, 0.75, 1.0, -0.25, -1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, 0.25, -1.0, -0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, 1.0, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.25, 0.0, -0.25, -0.75, 0.25, -1.0, 0.25, 0.75, -0.5, 0.25, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.0, 0.25, 0.5, -1.0, -1.0, -0.5, -0.5, -1.0, -0.75, -0.25, 0.0, -0.75, -0.25, 0.5, 1.0, -0.5, -0.75, 0.0, -0.75, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 1.0, -0.5, -0.5, -1.0, -0.5, 0.0, -0.25, -1.0, 0.0, 0.25, 0.75, 0.0, 0.5, 0.0, 0.75, -0.25, -0.75, 0.25, 1.0, -1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.5, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const array4 = new Float32Array([-0.5, -0.75, 0.75, 0.0, 0.5, 0.0, -0.75, 0.5, 0.5, -0.5, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.75, 1.0, 0.75, -0.5, 0.25, 0.5, -0.75, 0.5, -0.75, 0.0, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, 0.25, 0.75, 0.0, 0.5, 0.5, -1.0, -0.5, -0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, -0.5, 0.0, 0.5, 0.75, 0.0, -1.0, 0.25, 1.0, 1.0, -0.75, 0.25, 0.5, -1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 0.75, 0.0, 0.0, -0.5, -0.75, -1.0, 0.5, -1.0, -0.5, -0.5, 0.25, 0.75, 1.0, 0.5, 0.0, 0.0, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, -0.5, 0.25, 0.0, -0.25, -0.5, 0.5, 0.25, ]);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const array5 = new Float32Array([0.25, -0.75, -0.25, -1.0, 1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 0.25, 1.0, 0.75, 1.0, -1.0, 0.25, -0.25, 0.5, -0.25, -0.75, 0.25, 1.0, 0.75, 1.0, 0.0, -0.5, 1.0, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, 0.75, -0.75, 0.0, -0.75, -0.75, 0.25, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, -1.0, 0.25, -0.75, 0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, -0.75, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, 0.25, -0.5, -1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, 0.75, 0.25, 0.75, -0.25, 0.5, 0.5, 0.75, 0.75, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device30.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const array6 = new Float32Array([1.0, 0.75, 0.25, 0.75, 0.5, -0.25, 0.75, -1.0, -0.75, -0.5, 0.5, -1.0, -0.75, 0.0, 0.75, 0.75, 0.5, 0.5, 0.0, -0.75, 1.0, 0.25, -0.75, 0.5, -0.75, 1.0, 0.75, -1.0, -1.0, 0.0, 0.5, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, 0.5, 0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -0.5, 0.5, 0.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, 1.0, -0.75, 0.5, 0.75, 0.75, 1.0, 0.25, 1.0, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.75, ]);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device20.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    const array7 = new Float32Array([-0.75, -0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 0.25, -1.0, -0.75, -0.25, -0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.25, 0.25, -0.5, -0.75, 0.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 1.0, 0.0, 0.25, -0.5, 0.75, 0.75, 1.0, 0.75, 0.75, 0.75, 0.5, 0.0, -0.75, 0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.5, -0.25, 0.5, 0.5, 0.25, 0.5, 1.0, -0.25, 0.0, 0.75, ]);
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.pushErrorScope("internal");
    
    
    buffer400.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder400.popDebugGroup();
    
    
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
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("out-of-memory");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture400.destroy();
    
    buffer403.destroy()
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    device40.destroy();
    
    
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer600.destroy()
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    texture600.destroy();
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer600.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
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
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer602.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder600.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    query600.destroy()
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer601 = command_encoder601.finish();
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer603 = device60.createBuffer({
        label: "buffer603",
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
    device60.pushErrorScope("validation");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.pushErrorScope("out-of-memory");
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    device60.queue.writeBuffer(buffer603, 0, array7, 0, array7.length);
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
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
    query600.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    
    device50.destroy();
    
    
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer603, 0, array5, 0, array5.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    
    {
        await buffer604.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer604.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer604.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    const command_buffer800 = command_encoder800.finish();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    buffer603.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    device80.pushErrorScope("out-of-memory");
    
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    device60.queue.submit([command_buffer601, ]);
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer606, 0, array7, 0, array7.length);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    device60.destroy();
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    query800.destroy()
    texture800.destroy();
    buffer501.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query800.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.popDebugGroup();
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder800.popDebugGroup();
    
    
    const array8 = new Float32Array([-0.5, 0.5, 0.75, 0.25, 0.5, 1.0, -0.25, 0.25, -0.75, 1.0, -0.25, -0.5, 0.25, -0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, 0.0, 0.5, 0.75, -0.25, -0.75, -0.75, 1.0, -0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 0.25, 1.0, 0.75, 0.0, -1.0, 0.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, -1.0, 0.0, -1.0, 0.5, 0.75, -0.25, 1.0, 0.25, 0.75, 0.25, -1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.5, 0.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.75, -0.5, 0.5, -0.5, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, -0.25, -0.25, 0.25, -0.25, -0.75, -0.5, 0.5, 0.0, -0.25, 0.75, -0.5, 0.75, ]);
    
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer800.destroy()
    render_bundle_encoder800.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeTexture({ texture: texture801 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([1.0, -0.75, 0.75, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, 0.25, 0.25, -0.75, -0.75, 1.0, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.0, 0.0, -1.0, 0.0, 0.5, 0.0, 0.75, -0.75, 1.0, 0.5, 0.0, 0.5, 0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 0.25, 1.0, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, 0.5, 0.75, 1.0, 0.5, 0.0, 0.25, 0.0, -0.75, -0.75, 0.25, 0.0, -0.25, 0.5, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, -0.5, 0.0, -0.5, -1.0, -1.0, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: query801
    });
    render_pass_encoder8010.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder8010.pushDebugGroup("group_marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder801.insertDebugMarker("marker");
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.queue.writeTexture({ texture: texture801 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query800.destroy()
    render_pass_encoder8010.setStencilReference(1);
    
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    render_pass_encoder8010.setStencilReference(1);
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture801 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder8010.executeBundles([])
    render_pass_encoder8010.beginOcclusionQuery(0)
    const render_pass_encoder8011 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    render_pass_encoder8010.setStencilReference(1);
    
    const array10 = new Float32Array([-0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, -0.25, -0.25, -0.75, -1.0, -0.75, -0.25, -0.75, 0.25, 0.25, -0.5, 0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.0, -0.25, -0.5, -1.0, -1.0, 1.0, -1.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.25, -0.5, 0.0, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, -0.5, -1.0, -0.25, 0.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -0.5, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 0.5, -0.75, -0.75, 1.0, -0.75, -0.5, -0.75, -0.5, -0.25, 0.5, ]);
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    render_bundle_encoder800.popDebugGroup();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
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
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    render_pass_encoder8010.insertDebugMarker("marker");
    const array11 = new Float32Array([0.5, 0.75, 0.0, -0.25, 0.25, -0.5, -0.5, 0.0, 0.75, -0.5, 0.5, 0.5, 0.5, -0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, -0.75, -0.25, 1.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, -0.25, 0.25, 0.75, 0.25, 0.75, 1.0, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, -0.5, 0.5, 1.0, -0.75, 0.75, 0.25, 1.0, 0.75, -1.0, 0.0, -0.5, -0.75, 0.75, -1.0, -0.5, 0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 0.25, 0.75, 0.25, -0.25, -0.5, -0.75, 0.0, 0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, ]);
    
    query802.destroy()
    device20.pushErrorScope("internal");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([0.75, -0.75, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 1.0, -0.75, 0.0, 0.0, 0.0, 0.25, -0.5, 1.0, 0.75, -0.25, 0.0, -0.75, -0.75, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, 0.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.25, -0.75, -0.25, 0.5, -0.75, -0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, -1.0, 0.5, 0.0, -0.75, -0.25, 1.0, -1.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, 0.25, 0.5, -0.75, 1.0, 0.25, -0.5, -0.75, -0.25, -1.0, 0.75, 1.0, -0.75, -1.0, -0.25, 0.75, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, -0.25, -0.75, 0.5, 0.0, 0.0, -0.75, ]);
    render_pass_encoder8010.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture801 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    device80.queue.writeTexture({ texture: texture801 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    device80.queue.writeTexture({ texture: texture801 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    render_pass_encoder8010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder8010.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    render_pass_encoder8010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder801.insertDebugMarker("marker");
    texture801.destroy();
    
    
    render_pass_encoder8010.insertDebugMarker("marker");
    buffer608.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    render_pass_encoder8010.insertDebugMarker("marker");
    render_pass_encoder8010.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder8010.endOcclusionQuery()
    render_pass_encoder8010.beginOcclusionQuery(0)
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder8010.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    buffer801.destroy()
    
    
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    texture000.destroy();
    
    render_pass_encoder8010.popDebugGroup();
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    render_pass_encoder8010.endOcclusionQuery()
    device80.queue.submit([command_buffer800, ]);
    const command_buffer801 = command_encoder801.finish();
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder1000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
}