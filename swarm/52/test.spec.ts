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
    const array0 = new Float32Array([-0.25, 0.25, -0.25, 0.25, -0.25, -0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 1.0, 0.25, 0.25, 0.5, 0.75, -0.75, -1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, 1.0, -0.25, -0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.25, -0.25, -0.5, 0.0, -1.0, -1.0, -0.75, 0.5, -0.75, 0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.0, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -1.0, 0.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.75, 0.5, -1.0, 0.75, 0.25, -0.25, -0.75, 0.25, 1.0, -0.75, 0.5, -0.75, -0.75, -0.25, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, -0.5, -0.5, 0.5, 0.75, 0.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    device00.pushErrorScope("validation");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
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
    
    device10.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const array1 = new Float32Array([-1.0, -1.0, 0.0, 1.0, -1.0, -0.25, 0.0, -0.25, -1.0, -0.25, -0.5, -0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.75, 0.5, -0.5, -0.5, -0.25, 1.0, 0.75, -1.0, 0.75, 0.75, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, 0.25, -0.5, 0.0, -0.75, 0.5, 0.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.0, 0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.5, -0.75, -0.25, 1.0, -0.75, 0.5, 0.5, -1.0, -0.5, 0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 0.0, 1.0, -1.0, -0.5, 0.5, ]);
    device20.pushErrorScope("out-of-memory");
    
    const array2 = new Float32Array([-0.25, -1.0, -1.0, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, 0.75, 0.25, -1.0, -0.75, -1.0, 1.0, 0.25, 0.25, 1.0, -0.5, 0.25, 0.25, 0.5, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, -0.25, 0.5, 0.75, 1.0, 1.0, 1.0, 0.5, 1.0, -0.25, 0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 0.25, -0.5, -0.5, -1.0, -0.75, -0.25, -1.0, 1.0, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.25, -0.25, 1.0, 0.75, -0.25, -0.25, 0.5, 0.75, 1.0, -0.25, -0.25, 1.0, 1.0, -0.25, 0.75, -1.0, 0.75, -0.5, -1.0, 0.25, -0.25, 0.5, 0.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.5, 0.75, -0.5, -0.5, 0.75, -1.0, 0.25, -0.75, 0.75, 0.5, 1.0, -0.5, 0.25, -0.5, -0.75, 0.5, 1.0, 0.0, -0.25, 0.5, -1.0, 1.0, -1.0, 0.75, 0.5, 0.0, -0.5, -0.25, 0.25, 0.75, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.75, -0.5, 0.75, 0.25, 0.75, 0.5, -0.5, 1.0, 1.0, 0.0, -0.25, -0.5, 0.75, 0.75, 1.0, 0.25, -1.0, -0.75, -1.0, -0.75, -1.0, 0.25, 0.25, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, 1.0, 0.75, 1.0, 0.5, 0.75, -0.25, 1.0, 0.5, 0.0, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 0.75, -0.25, 0.75, -0.5, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, ]);
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer200.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const array4 = new Float32Array([-1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -0.5, 0.75, 0.0, 0.75, 1.0, 0.25, 1.0, -0.5, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 0.75, -0.75, 0.5, 0.5, 0.25, -0.75, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 0.0, 0.25, 0.0, -0.5, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, -1.0, -1.0, 0.5, 0.75, 0.0, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, 0.0, 0.5, -1.0, -0.75, 0.75, 0.5, -0.75, 0.0, -0.75, 0.0, 1.0, 0.25, -0.5, 1.0, -0.5, 0.75, 0.0, -1.0, 0.0, 0.5, -1.0, -1.0, 1.0, 0.75, -0.25, 0.25, 0.75, -1.0, 0.0, 0.0, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, 0.0, 0.5, -1.0, 0.75, ]);
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    query200.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.destroy();
    const array5 = new Float32Array([0.75, 1.0, -0.25, 1.0, -0.25, 0.75, -0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -1.0, -0.25, -0.25, -0.75, -0.5, 0.0, -1.0, -0.25, 0.0, 0.5, -0.75, -0.25, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, 0.5, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.25, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, -0.75, -0.75, -1.0, 1.0, -1.0, 1.0, 0.75, 0.25, -1.0, 1.0, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, 0.5, -0.5, 0.0, -0.5, -0.25, 0.0, -1.0, -1.0, ]);
    const array6 = new Float32Array([-0.75, 0.25, -0.75, -0.25, 0.0, 0.25, -0.75, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, 0.75, 0.75, -0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 0.0, -0.25, -0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 0.25, -0.5, -0.75, 0.25, 0.75, 1.0, 1.0, 0.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 0.25, -0.25, 0.25, -0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, 1.0, 0.75, 1.0, 1.0, -0.25, -0.5, -0.25, -1.0, 1.0, -0.5, -0.5, -1.0, -0.5, 0.5, 0.75, -0.5, -0.75, -1.0, -1.0, 0.25, -0.5, -1.0, -0.5, -0.75, 0.75, -0.25, -0.5, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    
    
    const array7 = new Float32Array([0.75, -0.75, 0.25, 0.75, 1.0, 0.0, -1.0, 1.0, 0.25, -0.5, -0.75, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, 0.75, 0.75, 1.0, 0.5, -0.25, -0.5, -0.75, 1.0, 0.75, 1.0, -1.0, -1.0, -0.75, 1.0, -0.75, 0.5, -0.25, -0.25, 0.0, -1.0, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, 0.5, 1.0, 0.0, 0.5, 0.0, 0.75, -1.0, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -0.75, -1.0, 0.0, -0.75, 0.5, 1.0, 0.0, -0.5, 0.75, 0.75, 0.25, -0.5, -0.5, 1.0, 0.75, -0.25, -1.0, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -0.25, 0.25, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 1.0, 1.0, -0.25, -0.25, 1.0, -1.0, -0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const array8 = new Float32Array([0.25, 0.25, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, -0.5, -0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 0.25, -0.75, -0.5, -0.75, -0.25, -0.5, 0.25, 0.0, 1.0, 0.25, 0.75, 0.5, -0.75, 0.0, -0.25, 0.5, 0.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 0.75, -0.25, 0.25, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, -0.5, -0.25, 0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -0.75, -0.5, -0.25, -0.5, -0.75, -0.25, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, -0.75, -1.0, 0.75, -0.25, -0.25, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, 1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, ]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    device50.pushErrorScope("out-of-memory");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer500.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    device30.pushErrorScope("out-of-memory");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    query300.destroy()
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer300.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query300.destroy()
    device60.destroy();
    buffer400.destroy()
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
    
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([0.5, 0.5, -0.25, -0.25, 0.75, 0.5, -1.0, 0.0, 0.25, 0.25, -0.25, 0.75, 0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.25, -0.75, 0.0, -1.0, 0.75, -1.0, 0.25, -1.0, -0.75, 0.5, -0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, -0.75, -0.25, -0.75, -0.25, 0.25, 0.75, 0.75, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, -1.0, -0.25, 0.0, -1.0, 0.25, 1.0, -0.25, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.5, -0.25, 0.75, 1.0, 0.0, 0.5, -1.0, 0.75, -1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.75, -1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.25, -0.25, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.destroy();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    buffer401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query402.destroy()
    
    const array10 = new Float32Array([0.0, 0.0, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.0, 0.5, -0.25, -0.25, 1.0, -0.75, 0.5, 0.5, 1.0, 0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 0.75, 0.25, -0.75, 0.75, -0.25, 0.75, 1.0, 0.5, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, -1.0, 0.75, 0.75, -1.0, -0.25, 1.0, -0.25, 0.0, 0.5, -0.5, 1.0, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -0.5, -0.5, 0.5, 0.25, 0.25, -0.5, -0.75, ]);
    query402.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query400.destroy()
    
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query403.destroy()
    buffer402.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder400.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device70.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device80.pushErrorScope("out-of-memory");
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
    render_bundle_encoder400.setPipeline(render_pipeline400);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query404.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder400.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    device40.destroy();
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
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
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device80.pushErrorScope("out-of-memory");
    const array11 = new Float32Array([-0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.25, -1.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 0.25, 0.75, -1.0, 0.5, 0.75, -0.25, 0.25, 0.5, -1.0, 0.25, 1.0, -0.5, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.5, 1.0, 1.0, 1.0, 0.25, 0.75, 0.0, 0.75, -0.5, -0.25, 1.0, 0.5, -1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 0.5, 0.0, 0.75, -1.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.5, 1.0, -0.75, ]);
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
    buffer800.destroy()
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
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
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
    device90.destroy();
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
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
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
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
    render_bundle_encoder800.setPipeline(render_pipeline804);
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device110.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline805 = device80.createRenderPipeline({
        label: "render_pipeline805",
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
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    query801.destroy()
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_pipeline806 = device80.createRenderPipeline({
        label: "render_pipeline806",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    render_bundle_encoder800.popDebugGroup();
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_pipeline807 = device80.createRenderPipeline({
        label: "render_pipeline807",
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
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder802.setPipeline(render_pipeline805);
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout803]
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    buffer802.destroy()
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query801.destroy()
    render_bundle_encoder801.setPipeline(render_pipeline807);
    buffer803.destroy()
    render_bundle_encoder802.insertDebugMarker("marker");
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout803]
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer1600.destroy()
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    
    device160.pushErrorScope("validation");
    
    query801.destroy()
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout803]
    });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    buffer1400.destroy()
    
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1401 = device140.createRenderPipeline({
        label: "render_pipeline1401",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    render_bundle_encoder801.popDebugGroup();
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1402 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1402",
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
    const query1503 = device150.createQuerySet({
        label: "query1503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout804]
    });
    const render_pipeline808 = device80.createRenderPipeline({
        label: "render_pipeline808",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout800]
    });
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query1503.destroy()
    const pipeline_layout806 = device80.createPipelineLayout({ 
        label: "pipeline_layout806",
        bindGroupLayouts: [bind_group_layout802]
    });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    query1400.destroy()
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout807 = device80.createPipelineLayout({ 
        label: "pipeline_layout807",
        bindGroupLayouts: [bind_group_layout800]
    });
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    render_bundle_encoder1401.pushDebugGroup("group_marker");
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const pipeline_layout808 = device80.createPipelineLayout({ 
        label: "pipeline_layout808",
        bindGroupLayouts: [bind_group_layout803]
    });
    buffer801.destroy()
    const pipeline_layout809 = device80.createPipelineLayout({ 
        label: "pipeline_layout809",
        bindGroupLayouts: [bind_group_layout804]
    });
    render_bundle_encoder1400.setPipeline(render_pipeline1401);
    const bind_group_layout1602 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1602",
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
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1400]
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const pipeline_layout8010 = device80.createPipelineLayout({ 
        label: "pipeline_layout8010",
        bindGroupLayouts: [bind_group_layout801]
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder801.popDebugGroup();
    
    device120.pushErrorScope("validation");
    
    const pipeline_layout1402 = device140.createPipelineLayout({ 
        label: "pipeline_layout1402",
        bindGroupLayouts: [bind_group_layout1402]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1600]
    });
    buffer1402.destroy()
    render_bundle_encoder1401.popDebugGroup();
    buffer1502.destroy()
    const render_pipeline1402 = device140.createRenderPipeline({
        label: "render_pipeline1402",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1503 = device150.createBuffer({
        label: "buffer1503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder1402 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline809 = device80.createRenderPipeline({
        label: "render_pipeline809",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    render_bundle_encoder1401.setPipeline(render_pipeline1402);
    buffer1401.destroy()
    
    device80.destroy();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const query1504 = device150.createQuerySet({
        label: "query1504",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1601 = device160.createPipelineLayout({ 
        label: "pipeline_layout1601",
        bindGroupLayouts: [bind_group_layout1602]
    });
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    device140.destroy();
    query1500.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device100.destroy();
    query1504.destroy()
    
    
    buffer1501.destroy()
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    const pipeline_layout1602 = device160.createPipelineLayout({ 
        label: "pipeline_layout1602",
        bindGroupLayouts: [bind_group_layout1601]
    });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    query1200.destroy()
    render_bundle_encoder1601.insertDebugMarker("marker");
    var shader_module1504_code = "";
    try {
        shader_module1504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1504 = await device150.createShaderModule({ label: "shader_module1504", code: shader_module1504_code })
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
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
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    buffer1200.destroy()
    
    
    
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1501]
    });
    const array12 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.75, -0.75, 0.5, 1.0, 0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.5, 0.0, 0.5, 1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 1.0, 0.0, -0.25, 0.25, -0.75, -0.25, -1.0, 1.0, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.25, 0.5, -1.0, -0.5, 0.25, -0.5, 1.0, 0.25, 0.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, -0.25, 0.75, -0.5, 1.0, -0.75, 0.25, -0.75, -1.0, -0.75, -0.5, 0.75, -1.0, 0.75, 0.5, -0.75, -1.0, 0.5, -1.0, ]);
    
    
    
    const query1602 = device160.createQuerySet({
        label: "query1602",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1504,
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
            module: shader_module1504,
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
    device150.pushErrorScope("out-of-memory");
    buffer1300.destroy()
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    render_bundle_encoder1601.insertDebugMarker("marker");
    const pipeline_layout1502 = device150.createPipelineLayout({ 
        label: "pipeline_layout1502",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query1501.destroy()
    
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array13 = new Float32Array([-0.75, 0.75, 0.25, 1.0, -0.5, 1.0, 0.0, 0.5, 0.75, 0.5, -0.5, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, -0.25, -1.0, -1.0, -0.75, -0.25, -0.5, 0.75, -0.75, 0.0, 0.25, -0.5, -0.75, -0.5, -0.5, 0.0, 0.75, -1.0, -1.0, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -0.5, 0.25, -0.25, -1.0, 1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 1.0, -0.25, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, -0.5, -1.0, 1.0, 0.0, -0.25, 0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 0.25, -0.75, -0.25, -1.0, 0.25, -0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.0, ]);
    device130.pushErrorScope("out-of-memory");
    
    device160.queue.writeBuffer(buffer1601, 0, array11, 0, array11.length);
    
    query1601.destroy()
    
    device160.queue.writeBuffer(buffer1601, 0, array5, 0, array5.length);
    render_bundle_encoder1601.pushDebugGroup("group_marker");
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1504,
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
            module: shader_module1504,
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
    device160.queue.writeBuffer(buffer1601, 0, array4, 0, array4.length);
    buffer1601.destroy()
    query1600.destroy()
    buffer1201.destroy()
    render_bundle_encoder1600.popDebugGroup();
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query1601.destroy()
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    query1600.destroy()
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}