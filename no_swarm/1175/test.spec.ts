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
    const array0 = new Float32Array([-0.25, 0.25, -1.0, 0.5, 1.0, 0.25, 0.25, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, 0.0, 1.0, -0.25, 1.0, -0.75, 0.5, 0.25, 0.25, -0.75, 0.0, -0.5, -0.5, 0.75, -1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.75, 0.5, 0.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -1.0, 0.75, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, 0.25, -0.25, -0.75, 0.25, -1.0, 1.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.5, -0.75, 0.25, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, -1.0, -1.0, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array1 = new Float32Array([-1.0, 0.75, 1.0, 0.25, 0.0, 0.0, -0.75, 0.25, 0.25, -0.25, -0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 0.0, 0.0, -0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 0.25, -1.0, 0.0, -1.0, -0.5, 0.25, 0.5, 0.25, -1.0, 0.5, -0.75, 0.75, 0.75, 0.5, 0.5, 0.0, -0.75, -0.25, -0.5, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, 0.5, 0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 0.5, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -0.5, -1.0, -0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.0, 1.0, 0.5, 0.25, -0.25, 0.5, -0.5, 1.0, -0.5, -0.25, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.pushErrorScope("internal");
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const array2 = new Float32Array([-0.75, -1.0, -0.25, 0.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -1.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.25, 0.75, -0.75, -0.75, 0.25, 0.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -0.5, 1.0, -0.75, -0.25, -0.25, 0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -0.75, 1.0, 0.5, -0.25, 0.5, 0.75, -1.0, 1.0, -1.0, -0.75, 0.25, -0.75, -1.0, 0.25, -1.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, -0.25, 0.75, 0.25, 0.5, 1.0, 0.75, 0.5, 0.25, -0.5, -0.25, 0.5, -0.5, 0.5, -0.5, 1.0, -0.25, 0.5, 0.0, 0.5, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 0.5, 1.0, ]);
    
    query000.destroy()
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
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([0.0, 0.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.75, 0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 0.25, 0.75, 0.0, 0.5, -1.0, 0.25, 0.5, 0.0, 0.5, 0.75, 0.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.75, 0.0, 0.25, 0.75, -0.75, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.5, -0.5, -0.5, -1.0, 0.25, -0.25, -0.25, -0.25, 0.25, 0.25, 0.25, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, 0.25, -1.0, 0.5, 0.25, -0.75, -0.5, 0.0, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, -0.25, -1.0, 1.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.5, 0.75, 0.5, -0.75, 0.75, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query000.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    buffer000.destroy()
    device00.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.destroy();
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    device50.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const array4 = new Float32Array([-0.75, -1.0, 0.25, -0.75, 0.75, 0.75, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, 1.0, 0.25, 0.0, -1.0, -0.5, 0.0, -0.25, 0.25, 0.25, -0.75, -0.25, 0.5, 0.75, 0.75, -0.75, -0.75, -0.75, 0.0, -0.5, -0.25, -1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -0.5, 1.0, 0.25, 0.75, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 0.75, 0.25, 0.25, -1.0, 0.75, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, 0.75, 1.0, -0.75, -0.5, -0.5, -0.25, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, -0.5, -0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.5, -0.5, 0.0, -0.75, 0.25, 0.25, -0.25, 0.5, 0.75, ]);
    command_encoder400.insertDebugMarker("mymarker");
    device40.pushErrorScope("internal");
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer400 = command_encoder400.finish();
    texture400.destroy();
    device20.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.queue.submit([command_buffer400, ]);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const array5 = new Float32Array([-0.5, -0.75, 0.75, 0.5, -0.75, 0.75, -0.5, -0.5, -0.75, -1.0, 0.25, -0.5, -0.75, 0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 0.0, 0.25, 0.5, -0.5, 1.0, 0.5, -0.75, 0.5, -0.25, -1.0, -1.0, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, 1.0, -0.5, 1.0, 0.25, 0.25, 0.0, -0.75, -0.75, -0.75, 0.5, -1.0, 0.75, -1.0, 0.0, 0.0, -0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, -1.0, -1.0, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.5, 0.0, -0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 0.5, -0.75, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder602.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    device60.pushErrorScope("validation");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.pushErrorScope("validation");
    
    command_encoder401.insertDebugMarker("mymarker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    buffer601.destroy()
    query003.destroy()
    
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
    
    const command_buffer600 = command_encoder600.finish();
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer600.destroy()
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder601.insertDebugMarker("marker");
    device80.pushErrorScope("validation");
    
    device60.queue.submit([command_buffer600, ]);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer700 = command_encoder700.finish();
    
    device70.pushErrorScope("out-of-memory");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    render_bundle_encoder602.popDebugGroup();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture400.destroy();
    
    command_encoder702.pushDebugGroup("mygroupmarker")
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer700.destroy()
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    
    command_encoder702.insertDebugMarker("mymarker");
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture401.destroy();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder403.insertDebugMarker("mymarker");
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    buffer000.destroy()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder4010.popDebugGroup()
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder702.popDebugGroup()
    
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    device70.pushErrorScope("internal");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder402.insertDebugMarker("mymarker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.queue.writeBuffer(buffer602, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    query800.destroy()
    texture402.destroy();
    
    command_encoder703.insertDebugMarker("mymarker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
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
    const command_buffer702 = command_encoder702.finish();
    command_encoder704.insertDebugMarker("mymarker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    query401.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    command_encoder800.pushDebugGroup("mygroupmarker")
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder602.setPipeline(render_pipeline600);
    compute_pass_encoder4020.setPipeline(compute_pipeline402);
    
    
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
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    buffer700.destroy()
    compute_pass_encoder4030.setPipeline(compute_pipeline400);
    command_encoder800.insertDebugMarker("mymarker");
    const command_buffer900 = command_encoder900.finish();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    compute_pass_encoder4030.popDebugGroup()
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer704 = command_encoder704.finish();
    device60.queue.writeBuffer(buffer602, 0, array5, 0, array5.length);
    
    query601.destroy()
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    texture800.destroy();
    buffer602.destroy()
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    texture601.destroy();
    
    
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device90.destroy();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.25, -0.75, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 1.0, 0.25, 1.0, 0.75, -0.25, 0.75, -0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.75, -0.5, -0.5, 0.5, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -1.0, -0.5, -1.0, -0.5, -0.5, -0.5, -1.0, 0.75, 0.0, 0.0, -0.75, 1.0, -0.25, 1.0, 1.0, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.25, 0.75, -0.75, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, 0.75, -0.75, -0.5, -0.75, -1.0, 0.75, 0.25, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 0.0, 0.25, -0.25, 0.5, 0.25, 1.0, -1.0, -1.0, 1.0, 0.5, 0.0, 1.0, -0.25, 0.75, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device20.destroy();
    query400.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder705.insertDebugMarker("mymarker");
    const compute_pass_encoder7050 = command_encoder705.beginComputePass({ label: "compute_pass_encoder7050" });
    texture602.destroy();
    texture600.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    command_encoder701.insertDebugMarker("mymarker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder701.insertDebugMarker("mymarker");
    const compute_pass_encoder6011 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6011" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const command_buffer703 = command_encoder703.finish();
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    buffer400.destroy()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer402, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer402, 0);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder6011.insertDebugMarker("marker")
    command_encoder602.clearBuffer(buffer601);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    render_bundle_encoder600.popDebugGroup();
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    query602.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    buffer402.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.popDebugGroup();
    command_encoder602.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    texture801.destroy();
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device30.destroy();
    render_bundle_encoder400.popDebugGroup();
    query400.destroy()
    
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    query801.destroy()
    render_bundle_encoder601.popDebugGroup();
    compute_pass_encoder6010.insertDebugMarker("marker")
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device70.queue.submit([command_buffer700, command_buffer703, command_buffer704, ]);
    device70.pushErrorScope("internal");
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout801]
    });
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder4030.insertDebugMarker("marker")
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    render_bundle_encoder601.setPipeline(render_pipeline600);
    compute_pass_encoder8000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    compute_pass_encoder4020.popDebugGroup()
    command_encoder701.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder7050.setPipeline(compute_pipeline700);
    compute_pass_encoder8000.setPipeline(compute_pipeline802);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.dispatchWorkgroups(100);
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7050.setBindGroup(0, bind_group700);
    const command_buffer402 = command_encoder402.finish();
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer703, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer703, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer408, 0);
    const command_buffer701 = command_encoder701.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder7050.end();
    const command_buffer705 = command_encoder705.finish();
    device70.queue.submit([command_buffer701, command_buffer702, command_buffer705, ]);
    const command_buffer000 = command_encoder000.finish();
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder4010.end();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4020.end();
    device40.queue.submit([command_buffer402, ]);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group800);
    compute_pass_encoder4030.end();
    const command_buffer401 = command_encoder401.finish();
    device70.queue.submit([command_buffer702, ]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer409, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer409, 0);
    device40.queue.submit([command_buffer401, ]);
    command_encoder800.popDebugGroup()
    device70.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4010, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4010, 0);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group801);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer804, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer804, 0);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group403);
    compute_pass_encoder4010.end();
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder4010.end();
    compute_pass_encoder8000.end();
    const command_buffer800 = command_encoder800.finish();
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group802);
    command_encoder602.popDebugGroup()
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
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer807, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer807, 0);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder8000.popDebugGroup()
    device70.queue.submit([command_buffer703, ]);
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([]);
    compute_pass_encoder7050.end();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer401, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder8000.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4015, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4015, 0);
    compute_pass_encoder6011.popDebugGroup()
    compute_pass_encoder7050.dispatchWorkgroups(100);
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder7050.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4016, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4017, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer705, ]);
    compute_pass_encoder4010.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder4020.end();
    device80.queue.submit([command_buffer800, ]);
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer704, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer704, 0);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    compute_pass_encoder6010.popDebugGroup()
    device80.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group803 = device80.createBindGroup({
        label: "bind_group803",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer808,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer809,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group803);
    compute_pass_encoder4030.end();
    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group804 = device80.createBindGroup({
        label: "bind_group804",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8011,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group804);
    compute_pass_encoder4020.popDebugGroup()
    device70.queue.submit([command_buffer704, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    device70.queue.submit([]);
    compute_pass_encoder4020.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder7050.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    compute_pass_encoder6020.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([]);
    device70.queue.submit([command_buffer704, command_buffer705, ]);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group405);
    compute_pass_encoder4020.popDebugGroup()
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8012, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8012, 0);
    device70.queue.submit([command_buffer701, command_buffer704, command_buffer705, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder7050.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device80.queue.submit([command_buffer800, ]);
    const buffer8013 = device80.createBuffer({
        label: "buffer8013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8014 = device80.createBuffer({
        label: "buffer8014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group805 = device80.createBindGroup({
        label: "bind_group805",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8014,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group805);
    device70.queue.submit([command_buffer701, command_buffer704, ]);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder7050.end();
    compute_pass_encoder6011.popDebugGroup()
    compute_pass_encoder4030.end();
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group406);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8015 = device80.createBuffer({
        label: "buffer8015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8015, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8015, 0);
    compute_pass_encoder4010.popDebugGroup()
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7050.setBindGroup(0, bind_group701);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4022, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4022, 0);
    device70.queue.submit([command_buffer705, ]);
    compute_pass_encoder8000.end();
    compute_pass_encoder8000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer705, ]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder8000.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    compute_pass_encoder4030.end();
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device40.queue.submit([]);
    device70.queue.submit([command_buffer701, command_buffer705, ]);
    compute_pass_encoder7050.popDebugGroup()
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer707, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer707, 0);
    compute_pass_encoder4030.popDebugGroup()
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
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
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group407);
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([]);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder8000.end();
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    compute_pass_encoder7050.dispatchWorkgroups(100);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, command_buffer702, command_buffer705, ]);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
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
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group408);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder4020.end();
    device40.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4027, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4027, 0);
    device40.queue.submit([command_buffer403, ]);
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer403, ]);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
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
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    compute_pass_encoder4030.setBindGroup(0, bind_group409);
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.end();
    device70.queue.submit([command_buffer702, ]);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
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
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4010);
    compute_pass_encoder4030.dispatchWorkgroups(100);
    compute_pass_encoder7050.popDebugGroup()
    compute_pass_encoder4030.end();
    compute_pass_encoder7050.end();
    const buffer8016 = device80.createBuffer({
        label: "buffer8016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8017 = device80.createBuffer({
        label: "buffer8017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group806 = device80.createBindGroup({
        label: "bind_group806",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8017,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group806);
    device60.queue.submit([]);
    const uint32_7050 = new Uint32Array(3);

    uint32_7050[0] = 100;
    uint32_7050[1] = 1;
    uint32_7050[2] = 1;

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer708, 0, uint32_7050, 0, uint32_7050.length);

    compute_pass_encoder7050.dispatchWorkgroupsIndirect(buffer708, 0);
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder8000.end();
    const buffer8018 = device80.createBuffer({
        label: "buffer8018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8019 = device80.createBuffer({
        label: "buffer8019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group807 = device80.createBindGroup({
        label: "bind_group807",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8019,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group807);
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    compute_pass_encoder6011.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device70.queue.submit([command_buffer700, command_buffer702, command_buffer705, ]);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4032, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4032, 0);
    const buffer8020 = device80.createBuffer({
        label: "buffer8020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8021 = device80.createBuffer({
        label: "buffer8021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group808 = device80.createBindGroup({
        label: "bind_group808",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8021,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group808);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8022 = device80.createBuffer({
        label: "buffer8022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8022, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8022, 0);
    compute_pass_encoder7050.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4033, 0);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    compute_pass_encoder4010.end();
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8023 = device80.createBuffer({
        label: "buffer8023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8023, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8023, 0);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4034, 0);
    compute_pass_encoder7050.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    device80.queue.submit([]);
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
        layout: compute_pipeline700.getBindGroupLayout(0),
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

    compute_pass_encoder7050.setBindGroup(0, bind_group702);
    const buffer8024 = device80.createBuffer({
        label: "buffer8024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8025 = device80.createBuffer({
        label: "buffer8025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group809 = device80.createBindGroup({
        label: "bind_group809",
        layout: compute_pipeline802.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8025,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group809);
    device40.queue.submit([]);
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4035, 0);
    device40.queue.submit([command_buffer403, ]);
    device80.queue.submit([]);
    device40.queue.submit([command_buffer403, ]);
    device80.queue.submit([command_buffer800, ]);
    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
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
                    buffer: buffer4036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4037,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
    compute_pass_encoder8000.end();
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4038, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4030.end();
    device40.queue.submit([command_buffer401, ]);
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8026 = device80.createBuffer({
        label: "buffer8026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8026, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8026, 0);
    compute_pass_encoder4030.end();
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4020.end();
    compute_pass_encoder7050.popDebugGroup()
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8027 = device80.createBuffer({
        label: "buffer8027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8027, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8027, 0);
    device70.queue.submit([command_buffer702, command_buffer705, ]);
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder8000.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder4010.popDebugGroup()
    const uint32_4030 = new Uint32Array(3);

    uint32_4030[0] = 100;
    uint32_4030[1] = 1;
    uint32_4030[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4030, 0, uint32_4030.length);

    compute_pass_encoder4030.dispatchWorkgroupsIndirect(buffer4039, 0);
    device80.queue.submit([]);
}