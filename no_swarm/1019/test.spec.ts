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
    
    
    const array0 = new Float32Array([-1.0, 0.5, -1.0, 1.0, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, -0.25, -0.25, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.75, 0.25, 0.0, -1.0, 0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, -0.5, 0.25, 0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, -0.75, 0.5, 0.5, 0.75, 1.0, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, -1.0, -0.5, 1.0, -0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 1.0, 0.5, -0.5, 1.0, -1.0, 0.5, -0.25, -0.5, 0.75, -1.0, -0.25, 0.25, -1.0, -0.5, -0.75, 1.0, 0.75, 0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, -0.25, 0.25, -0.75, -0.75, 1.0, ]);
    const array1 = new Float32Array([-0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, 1.0, -0.75, 0.25, -0.25, 0.75, 0.75, 0.0, 0.5, 0.0, -0.75, -0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.75, 1.0, -0.75, 1.0, -0.25, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, -0.5, 0.0, -0.25, -0.75, 0.75, 0.25, -1.0, 0.5, -0.5, -1.0, -0.5, -0.75, 0.75, -0.75, -0.25, 0.5, 0.5, 1.0, 0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, 0.25, -0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -0.75, 0.75, 1.0, -0.25, -1.0, -0.5, -0.75, 0.75, -0.5, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, 1.0, 1.0, 0.75, -1.0, 1.0, 0.75, -1.0, -0.5, ]);
    const array2 = new Float32Array([0.0, 0.75, -0.25, 0.75, -0.5, 0.25, -0.25, -1.0, 0.25, 0.5, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, -0.75, -0.75, 0.5, -0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.75, 0.75, 0.75, 1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -1.0, -1.0, -1.0, -1.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.0, -0.75, -0.75, -1.0, 0.5, -0.75, 0.25, -0.75, 0.5, 0.75, -1.0, -0.75, 0.0, -0.25, 0.5, 0.0, -0.5, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, ]);
    
    
    const array3 = new Float32Array([-0.25, -0.25, 0.75, 1.0, 0.25, -1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 0.25, 1.0, 0.75, -1.0, 0.25, 0.5, -0.25, -1.0, -0.25, 0.0, -0.5, -0.5, 0.0, -1.0, 0.25, -1.0, -0.5, 0.5, -0.75, 0.0, -1.0, 0.25, -0.5, 1.0, 0.0, -1.0, -0.5, 0.0, 0.25, -0.75, 0.5, 0.75, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -0.75, 0.5, -0.5, 0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -0.25, -1.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 0.5, -0.25, 0.75, -0.75, -0.25, -0.75, 0.25, -1.0, -0.25, 0.25, 0.0, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, 0.75, -0.25, -0.5, 1.0, -0.5, 1.0, 0.25, 0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array4 = new Float32Array([0.5, 0.5, -0.5, -0.25, -0.75, 0.0, 0.75, 0.5, 0.5, -1.0, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, 0.25, 1.0, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, -0.5, -0.75, 0.75, -0.75, 0.0, -0.75, 1.0, -0.75, -0.5, 0.5, -1.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.25, -0.75, -1.0, -1.0, 0.75, 1.0, 0.5, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 0.0, -0.25, -0.5, 0.75, -0.75, 0.0, -1.0, 1.0, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, 0.5, 1.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, -0.25, 0.75, 0.25, 0.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    
    const array5 = new Float32Array([0.75, 1.0, 0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.5, 0.25, 0.75, 0.5, 0.5, 0.25, 0.5, 0.25, -0.5, 1.0, 0.75, 0.0, -0.25, 0.75, 0.5, 1.0, -0.75, 0.25, 1.0, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, -0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 0.0, 1.0, -1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 0.5, -0.25, -0.5, 0.0, -0.25, 0.5, -1.0, 0.25, -1.0, -0.5, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, 0.0, 0.25, -0.25, -0.75, 0.0, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, 0.0, 1.0, 0.25, -0.25, 1.0, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, -0.25, 0.5, 0.5, -1.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    
    
    
    
    
    const array6 = new Float32Array([-0.75, -1.0, -0.5, 0.0, 0.75, 0.75, -0.5, 0.5, 0.75, -0.5, -0.25, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.75, 1.0, 1.0, 0.5, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, -0.25, -0.25, -0.25, 0.0, -0.25, -0.25, -1.0, -0.5, 1.0, -1.0, 0.25, -0.25, -0.5, -0.25, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, -0.5, -0.5, 0.25, 1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 1.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.75, -0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.5, -0.5, -0.5, 1.0, -0.5, -0.75, 0.0, 0.5, -0.25, 1.0, 1.0, -0.5, -0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
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
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder200.popDebugGroup()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer200 = command_encoder200.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.popDebugGroup();
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.submit([command_buffer200, ]);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.0, 0.25, -0.75, -1.0, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, 0.25, 0.0, -0.5, -0.25, -0.5, 1.0, -0.25, -0.75, 0.0, -0.5, -0.5, 0.25, -1.0, 0.0, 0.75, 0.75, -0.75, 0.5, 0.5, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.5, -1.0, 0.0, 0.0, -0.75, -0.75, 0.0, -1.0, 1.0, 0.5, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, -0.75, 0.25, -1.0, -0.75, 1.0, -1.0, 0.25, -0.5, 0.75, 0.5, -1.0, -1.0, -0.75, 0.25, -0.75, -0.25, -0.5, -0.5, 0.0, 1.0, 0.5, -0.5, 0.0, 0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.75, 0.0, 0.75, -0.25, -0.75, 1.0, 0.25, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, -1.0, ]);
    buffer100.destroy()
    query100.destroy()
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    device20.pushErrorScope("internal");
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
    query100.destroy()
    
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.pushErrorScope("internal");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array8 = new Float32Array([0.0, 1.0, 0.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, -1.0, 0.25, -0.25, -0.5, 0.25, 0.75, -0.75, 0.75, -0.25, -0.5, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, 1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.75, -0.75, 0.0, 0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 1.0, 0.0, -0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.75, 1.0, 0.75, 0.0, 0.0, -1.0, 1.0, 0.5, 0.0, -0.5, -0.5, -0.75, 1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 0.5, 0.0, 0.25, 0.0, 0.5, ]);
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    
    device10.queue.submit([command_buffer100, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    buffer202.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder2000.popDebugGroup()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer201.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    buffer200.destroy()
    const array9 = new Float32Array([-0.5, 0.5, 0.25, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 0.75, 1.0, -1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, -0.5, 0.25, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.25, -0.25, -0.25, 1.0, 0.75, 0.75, 0.25, 0.25, -1.0, -0.75, 0.0, 0.0, 0.5, 1.0, 0.75, -0.25, 0.5, -0.25, -0.75, -0.5, -0.75, -0.75, 0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, 0.5, 0.0, 0.0, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, -0.25, 0.5, -1.0, -0.5, -0.75, -0.25, 0.5, 1.0, 0.5, 0.5, 0.0, -0.25, 0.0, -0.25, 0.0, 0.25, -1.0, ]);
    command_encoder201.pushDebugGroup("mygroupmarker")
    buffer202.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    query200.destroy()
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
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
    command_encoder201.clearBuffer(buffer200);
    
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer202.destroy()
    command_encoder201.clearBuffer(buffer201);
    render_bundle_encoder201.popDebugGroup();
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    buffer207.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder102.insertDebugMarker("mymarker");
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    
    query100.destroy()
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer203.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer204);
    buffer204.destroy()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const array10 = new Float32Array([-0.25, 0.75, 0.0, -1.0, 0.25, 0.25, -0.5, 1.0, 1.0, -0.5, 0.5, -0.5, -1.0, -0.75, 0.25, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.25, 1.0, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 0.0, 0.75, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, 0.75, 1.0, 0.75, 0.5, 0.0, 0.0, -0.75, -0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.5, 0.75, 0.0, -0.75, 0.75, 0.0, -1.0, 0.75, -0.25, 0.75, 1.0, 1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, -0.25, 1.0, ]);
    query102.destroy()
    query100.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    query200.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query101.destroy()
    command_encoder201.popDebugGroup()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder101.popDebugGroup()
    command_encoder103.clearBuffer(buffer100);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_bundle_encoder200.setIndexBuffer(buffer200, "uint16");
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
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
    query201.destroy()
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    query300.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    
    render_bundle_encoder200.draw(3);
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    render_bundle_encoder100.popDebugGroup();
    command_encoder103.insertDebugMarker("mymarker");
    
    buffer206.destroy()
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    const array11 = new Float32Array([-0.75, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 0.25, 0.25, -0.25, -0.5, -0.75, 0.25, 0.75, 0.5, 1.0, -1.0, 0.25, -0.25, -0.25, 0.0, -1.0, 0.75, 0.75, 0.0, -1.0, 0.75, -0.75, -0.5, -0.25, -0.25, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 1.0, 0.5, 0.0, -0.75, 0.75, -0.25, -0.5, 0.75, -0.75, 0.25, 0.75, 0.25, 1.0, 1.0, 0.5, 0.25, 0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -1.0, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, 0.0, ]);
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    device20.queue.writeBuffer(buffer206, 0, array9, 0, array9.length);
    query201.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout204]
    });
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1020.popDebugGroup()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder2010.setPipeline(render_pipeline202);
    query200.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    buffer102.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder103.insertDebugMarker("mymarker");
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    render_pass_encoder2020.executeBundles([])
    command_encoder103.popDebugGroup()
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.draw(3);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer208);
    
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer208);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device20.queue.writeBuffer(buffer208, 0, array2, 0, array2.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.draw(3);
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer209.destroy()
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer208, 0, array9, 0, array9.length);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    
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
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder2010.setStencilReference(1);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout205]
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer103 = command_encoder103.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer205, 0, array10, 0, array10.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query100.destroy()
    render_bundle_encoder202.popDebugGroup();
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    texture200.destroy();
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    query102.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout207,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder2020.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder201.drawIndexedIndirect(buffer205, 0);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group101);
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    query100.destroy()
    
    buffer105.destroy()
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2020.setStencilReference(1);
    buffer2011.destroy()
    
    buffer207.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.pushDebugGroup("group_marker");
    buffer103.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2010, 0, array7, 0, array7.length);
    device40.pushErrorScope("validation");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setStencilReference(1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query202.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.dispatchWorkgroups(100);
    buffer2012.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, ]);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer102,
        0
    )
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.end();
    device80.pushErrorScope("internal");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.end();
    render_pass_encoder2020.endOcclusionQuery()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2020.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group204);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder2010.draw(3);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer201, ]);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer102 = command_encoder102.finish();
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
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer105, ]);
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer108, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer108, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    compute_pass_encoder1010.popDebugGroup()
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder2020.end();
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer104, ]);
    const command_buffer202 = command_encoder202.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1011, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device80.queue.submit([]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1020.popDebugGroup()
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1010.popDebugGroup()
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    const command_buffer000 = command_encoder000.finish();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2010.endOcclusionQuery()
    device20.queue.submit([]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device60.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder2010.setIndexBuffer(buffer2015, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1012, 0);
    device60.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([]);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2017, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    device60.queue.submit([]);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2030, 0);
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    device60.queue.submit([]);
    device10.queue.submit([]);
    device20.queue.submit([]);
    device80.queue.submit([]);
    compute_pass_encoder1010.end();
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder2020.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, command_buffer204, ]);
    compute_pass_encoder1020.end();
    device80.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
}