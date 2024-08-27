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
    
    const array0 = new Float32Array([0.75, 0.5, 0.25, 0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 0.0, 1.0, 0.75, -0.25, -0.75, -1.0, -0.5, -0.5, 0.5, 0.0, -0.75, -1.0, 0.25, 0.25, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -0.25, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, -0.75, -0.75, 1.0, 0.5, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, 1.0, -1.0, 0.75, 0.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -0.5, -0.25, -0.75, 0.75, -1.0, -0.75, 0.25, 0.5, 1.0, -0.75, 0.0, -0.5, -0.25, -1.0, -0.75, -0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.25, -1.0, 0.25, -0.75, -0.75, -0.25, 1.0, -1.0, 0.5, ]);
    const array1 = new Float32Array([-0.5, -0.5, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 0.75, 1.0, 0.0, 0.75, 1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 0.5, 0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.5, -0.75, -1.0, -1.0, -0.75, 1.0, -0.75, 0.0, -0.5, -0.75, -0.25, 1.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.5, 0.0, -0.25, -0.5, 0.5, -0.25, 1.0, 0.5, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, 0.25, 0.25, 1.0, -0.25, -0.75, 1.0, -0.25, -0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 1.0, 0.25, 0.25, 0.5, 0.75, 1.0, -0.25, 1.0, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.75, 0.5, 1.0, -0.25, 0.25, 0.25, -0.5, 0.5, 1.0, 0.0, -0.5, 0.75, -0.5, 0.0, -0.5, 0.25, 1.0, -1.0, -0.75, -1.0, -0.5, 0.75, 1.0, 0.75, 1.0, -0.25, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, 1.0, 0.25, 0.25, -0.25, 0.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, -0.25, -0.75, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, -1.0, 0.5, 0.0, 0.25, 1.0, 0.5, -1.0, -0.5, 1.0, 1.0, -1.0, 0.5, 0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.5, 1.0, 0.5, 0.0, 0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, 0.25, -0.75, -0.5, 0.75, 0.25, -0.75, 1.0, 0.0, -0.5, -0.75, -1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.5, -0.25, -0.5, -0.75, 0.75, 1.0, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, 0.0, -0.25, 1.0, 1.0, 0.5, -1.0, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -0.25, -0.75, -0.5, -0.25, -1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 1.0, -0.5, 0.0, -0.75, -0.25, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    texture100.destroy();
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
    device10.destroy();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    device00.pushErrorScope("out-of-memory");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array4 = new Float32Array([-0.75, 1.0, -0.75, -1.0, -0.5, 0.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, 0.25, 0.75, -0.5, -0.5, -0.75, 0.25, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, -0.75, 0.25, 0.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.5, 0.5, 0.0, 0.25, -0.75, 0.0, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, -0.5, 0.25, -0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -0.75, 0.25, -0.75, 0.25, -1.0, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.0, 0.75, 0.25, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, -0.25, 0.5, 0.0, 0.5, 1.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_buffer300 = command_encoder300.finish();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device00.queue.submit([]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
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
    buffer400.destroy()
    
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
    render_bundle_encoder500.insertDebugMarker("marker");
    query000.destroy()
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder000.insertDebugMarker("mymarker");
    device50.destroy();
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    command_encoder401.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder4000.popDebugGroup()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_buffer402 = command_encoder402.finish();
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query001.destroy()
    
    
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.destroy();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    render_bundle_encoder300.popDebugGroup();
    
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.pushErrorScope("internal");
    
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
    command_encoder301.clearBuffer(buffer300);
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder301.insertDebugMarker("mymarker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device40.queue.submit([command_buffer402, ]);
    
    
    buffer600.destroy()
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
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
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.insertDebugMarker("mymarker");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder401.copyBufferToBuffer(
        buffer401,
        0,
        buffer402,
        0,
        400
    );
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const command_buffer403 = command_encoder403.finish();
    
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder405.insertDebugMarker("mymarker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder404.copyBufferToTexture(
        {
            buffer: buffer402
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout400,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder302.popDebugGroup()
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
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    command_encoder405.clearBuffer(buffer400);
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    device60.pushErrorScope("internal");
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.end();
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    query300.destroy()
    render_bundle_encoder400.drawIndirect(buffer404, 0);
    
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    compute_pass_encoder3010.popDebugGroup()
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    command_encoder304.insertDebugMarker("mymarker");
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    command_encoder404.pushDebugGroup("mygroupmarker")
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture402.destroy();
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    command_encoder304.popDebugGroup()
    query301.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    command_encoder401.pushDebugGroup("mygroupmarker")
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder4000.popDebugGroup()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer603, 0, array3, 0, array3.length);
    command_encoder405.insertDebugMarker("mymarker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    command_encoder405.copyBufferToTexture(
        {
            buffer: buffer400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder4010.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    buffer401.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout405,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer603, 0, array0, 0, array0.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    buffer602.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    
    device100.pushErrorScope("out-of-memory");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture401.destroy();
    
    command_encoder900.insertDebugMarker("mymarker");
    
    texture500.destroy();
    
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout404,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout407,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4010.setPipeline(render_pipeline402);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder4040.setStencilReference(1);
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    command_encoder406.insertDebugMarker("mymarker");
    command_encoder406.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer300.destroy()
    
    command_encoder404.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder305.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    render_bundle_encoder300.popDebugGroup();
    command_encoder305.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4040.setPipeline(render_pipeline400);
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setStencilReference(1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout401,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    render_pass_encoder4040.popDebugGroup();
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    command_encoder406.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder3040.setStencilReference(1);
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder4040.pushDebugGroup("group_marker");
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
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setPipeline(render_pipeline402);
    
    render_pass_encoder4060.executeBundles([])
    
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    render_pass_encoder4000.beginOcclusionQuery(0)
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
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device60.queue.writeBuffer(buffer603, 0, array4, 0, array4.length);
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4060.executeBundles([])
    buffer403.destroy()
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    
    render_pass_encoder4010.setStencilReference(1);
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
    buffer1000.destroy()
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder3040.setPipeline(render_pipeline301);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group402);
    command_encoder305.popDebugGroup()
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4060.setPipeline(render_pipeline400);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4060.setBindGroup(0, bind_group403);
    const command_buffer1000 = command_encoder1000.finish();
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group300);
    render_pass_encoder4000.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4060.setVertexBuffer(0, buffer401);
    render_pass_encoder4050.setPipeline(render_pipeline402);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3050.setPipeline(render_pipeline300);
    device100.queue.submit([command_buffer1000, ]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4060.draw(3);
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

    render_pass_encoder3050.setBindGroup(0, bind_group301);
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    device30.queue.submit([command_buffer300, ]);
    device90.queue.submit([]);
    render_pass_encoder4060.end();
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3040.draw(3);
    render_pass_encoder4000.end();
    render_pass_encoder3050.setVertexBuffer(0, buffer303);
    render_pass_encoder3050.draw(3);
    render_pass_encoder4060.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4000.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group405);
    render_pass_encoder3050.end();
    render_pass_encoder3040.end();
    command_encoder406.popDebugGroup()
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4050.setVertexBuffer(0, buffer4012);
    render_pass_encoder4050.setIndexBuffer(buffer404, "uint16");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3050.draw(3);
    render_pass_encoder4050.drawIndexedIndirect(buffer4011, 0);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4040.popDebugGroup();
    device30.queue.submit([]);
    const command_buffer900 = command_encoder900.finish();
    render_pass_encoder4050.popDebugGroup();
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
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group406);
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group304);
    render_pass_encoder4050.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4010.end();
    render_pass_encoder3020.setVertexBuffer(0, buffer305);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder4040.setVertexBuffer(0, buffer400);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    render_pass_encoder3050.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    device60.queue.submit([]);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group407);
    render_pass_encoder3020.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder4010.setIndexBuffer(buffer408, "uint16");
    compute_pass_encoder3030.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3012, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3012, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    const command_buffer406 = command_encoder406.finish();
    render_pass_encoder4040.drawIndirect(buffer4016, 0);
    command_encoder401.popDebugGroup()
    render_pass_encoder3020.end();
    compute_pass_encoder3030.end();
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer002, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer002, 0);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer401 = command_encoder401.finish();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3013, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3013, 0);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    device60.queue.submit([]);
    compute_pass_encoder4000.end();
    render_pass_encoder4010.popDebugGroup();
    device30.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer406, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3050.drawIndirect(buffer3013, 0);
    compute_pass_encoder4000.popDebugGroup()
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group408);
    device30.queue.submit([command_buffer300, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3050.drawIndexed(3);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4040.end();
    render_pass_encoder4050.end();
    render_pass_encoder4040.draw(3);
    device40.queue.submit([command_buffer403, ]);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4010.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3012, 0);
    render_pass_encoder3050.drawIndirect(buffer301, 0);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    render_pass_encoder4040.setIndexBuffer(buffer404, "uint16");
    device90.queue.submit([]);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4010.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3013, 0);
    render_pass_encoder3050.drawIndirect(buffer3012, 0);
    render_pass_encoder4060.drawIndexedIndirect(buffer402, 0);
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group409);
    render_pass_encoder4050.draw(3);
    render_pass_encoder4040.drawIndexedIndirect(buffer409, 0);
    render_pass_encoder4060.setIndexBuffer(buffer4018, "uint16");
    render_pass_encoder3040.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer306, 0);
    device30.queue.submit([command_buffer304, ]);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    compute_pass_encoder3010.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4021, 0);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4000.setIndexBuffer(buffer4021, "uint16");
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3016, 0);
    render_pass_encoder3040.end();
    render_pass_encoder4010.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4010.drawIndexedIndirect(buffer401, 0);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder4060.drawIndirect(buffer4019, 0);
    device30.queue.submit([command_buffer301, ]);
    const command_buffer405 = command_encoder405.finish();
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3020.drawIndirect(buffer308, 0);
    device60.queue.submit([]);
    device100.queue.submit([]);
    render_pass_encoder3020.end();
    render_pass_encoder3050.drawIndirect(buffer3016, 0);
    render_pass_encoder4050.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device40.queue.submit([command_buffer405, ]);
    device40.queue.submit([command_buffer402, ]);
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    render_pass_encoder4050.drawIndirect(buffer4021, 0);
    render_pass_encoder4050.drawIndirect(buffer4019, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4060.draw(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder4010.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder4060.drawIndexed(3);
    device40.queue.submit([command_buffer404, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3017, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3018, 0);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer303, ]);
    render_pass_encoder4040.drawIndirect(buffer400, 0);
    render_pass_encoder4050.setIndexBuffer(buffer4010, "uint16");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder4000.draw(3);
    render_pass_encoder4000.drawIndirect(buffer403, 0);
    device10.queue.submit([]);
    device30.queue.submit([command_buffer303, ]);
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    render_pass_encoder4060.drawIndirect(buffer4022, 0);
    render_pass_encoder4050.drawIndirect(buffer401, 0);
    render_pass_encoder4050.drawIndirect(buffer406, 0);
    device50.queue.submit([]);
    render_pass_encoder4040.end();
    render_pass_encoder4000.end();
    render_pass_encoder4000.drawIndirect(buffer400, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3050.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3019, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3019, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4013, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder3040.end();
    render_pass_encoder4050.drawIndexedIndirect(buffer407, 0);
    render_pass_encoder3040.drawIndirect(buffer3016, 0);
    render_pass_encoder4040.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3040.drawIndirect(buffer3013, 0);
    device100.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder4000.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder4050.drawIndexed(3);
    render_pass_encoder4040.drawIndexedIndirect(buffer4013, 0);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    render_pass_encoder4000.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder3050.drawIndirect(buffer300, 0);
    render_pass_encoder4000.setIndexBuffer(buffer409, "uint16");
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    render_pass_encoder3050.popDebugGroup();
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4011);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder3020.drawIndirect(buffer3019, 0);
    render_pass_encoder4050.drawIndirect(buffer402, 0);
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4012);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder3050.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.submit([command_buffer402, command_buffer406, ]);
    render_pass_encoder3050.end();
    render_pass_encoder4040.draw(3);
    render_pass_encoder3050.drawIndirect(buffer309, 0);
    render_pass_encoder4060.drawIndirect(buffer404, 0);
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    render_pass_encoder4060.drawIndirect(buffer409, 0);
    render_pass_encoder4000.drawIndirect(buffer404, 0);
    render_pass_encoder4060.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4040.drawIndexedIndirect(buffer4025, 0);
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer302, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4050.drawIndexedIndirect(buffer4013, 0);
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder3050.drawIndirect(buffer3013, 0);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder3050.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder4050.end();
    render_pass_encoder4000.end();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4023, 0);
    render_pass_encoder3050.end();
    command_encoder600.popDebugGroup()
    render_pass_encoder4060.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder4010.draw(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4027, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder4040.drawIndexed(3);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder4060.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4050.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4060.drawIndirect(buffer4013, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder4050.setIndexBuffer(buffer4011, "uint16");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder3050.drawIndexedIndirect(buffer3012, 0);
    device100.queue.submit([]);
    render_pass_encoder4050.drawIndexed(3);
    render_pass_encoder4000.drawIndirect(buffer406, 0);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    device60.queue.submit([]);
    device40.queue.submit([command_buffer405, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder4010.draw(3);
    compute_pass_encoder9000.popDebugGroup()
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3040.drawIndirect(buffer3020, 0);
    render_pass_encoder3040.drawIndirect(buffer3019, 0);
    render_pass_encoder4060.drawIndexed(3);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4010.drawIndexed(3);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.end();
    compute_pass_encoder6000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder4010.drawIndirect(buffer403, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder4050.drawIndexed(3);
    compute_pass_encoder4000.end();
    render_pass_encoder4050.drawIndirect(buffer4021, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder3040.draw(3);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder4060.drawIndirect(buffer4016, 0);
    render_pass_encoder3050.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer405, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder3040.setIndexBuffer(buffer3020, "uint16");
    device60.queue.submit([]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4050.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4050.end();
    render_pass_encoder4040.end();
    render_pass_encoder4060.end();
    compute_pass_encoder6000.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder4040.end();
    render_pass_encoder3020.drawIndirect(buffer3019, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4026, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4060.end();
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder4040.popDebugGroup();
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group306);
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    device40.queue.submit([command_buffer403, command_buffer406, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder4000.draw(3);
    render_pass_encoder4050.setIndexBuffer(buffer403, "uint16");
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3040.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4028, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4028, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3023, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3023, 0);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group307);
    render_pass_encoder4040.setIndexBuffer(buffer4018, "uint16");
    device90.queue.submit([]);
    render_pass_encoder4010.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder3050.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder4050.drawIndirect(buffer403, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3020, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder4050.drawIndexedIndirect(buffer4028, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder9000.popDebugGroup()
    render_pass_encoder3020.drawIndexedIndirect(buffer3012, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4010.drawIndexed(3);
    compute_pass_encoder3030.end();
    compute_pass_encoder0010.end();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3050.endOcclusionQuery()
    render_pass_encoder3040.drawIndexedIndirect(buffer300, 0);
    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4030,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
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

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder4060.drawIndirect(buffer405, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    device30.queue.submit([command_buffer302, ]);
    device100.queue.submit([]);
    render_pass_encoder3020.end();
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder3040.drawIndirect(buffer3017, 0);
    render_pass_encoder3020.drawIndirect(buffer3018, 0);
    render_pass_encoder4060.drawIndirect(buffer405, 0);
    render_pass_encoder3040.drawIndirect(buffer3013, 0);
    device50.queue.submit([]);
    render_pass_encoder4040.drawIndirect(buffer4028, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3020.drawIndirect(buffer3018, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder4050.drawIndirect(buffer4021, 0);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    device100.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer3019, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4026, "uint16");
    render_pass_encoder4010.drawIndexedIndirect(buffer4012, 0);
    device100.queue.submit([command_buffer1000, ]);
    render_pass_encoder3040.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder4010.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder3020.end();
    render_pass_encoder4040.draw(3);
    render_pass_encoder3050.end();
    render_pass_encoder4060.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder4040.drawIndexedIndirect(buffer407, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder4060.end();
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder4010.drawIndexed(3);
    render_pass_encoder4050.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder4060.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4010.setIndexBuffer(buffer4025, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3023, 0);
    render_pass_encoder4040.drawIndirect(buffer4028, 0);
    device90.queue.submit([]);
    render_pass_encoder3050.drawIndirect(buffer304, 0);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    compute_pass_encoder9000.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3040.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder4060.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    render_pass_encoder4050.drawIndirect(buffer405, 0);
    render_pass_encoder3050.drawIndirect(buffer3019, 0);
    render_pass_encoder4060.popDebugGroup();
    render_pass_encoder4000.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4040.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4050.end();
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4050.drawIndirect(buffer4030, 0);
    render_pass_encoder4060.drawIndexedIndirect(buffer4011, 0);
    render_pass_encoder4040.setIndexBuffer(buffer4028, "uint16");
    render_pass_encoder4010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3030, 0);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
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
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3020, 0);
    render_pass_encoder4050.popDebugGroup();
    render_pass_encoder4060.drawIndirect(buffer4028, 0);
    render_pass_encoder4000.draw(3);
    render_pass_encoder3050.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder4060.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4060.drawIndirect(buffer4012, 0);
    device60.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder3050.end();
    render_pass_encoder3050.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3040.drawIndirect(buffer304, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3050.drawIndirect(buffer3030, 0);
    render_pass_encoder4010.draw(3);
}