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
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    const array0 = new Float32Array([-0.25, -0.5, -0.75, 0.0, 0.5, -0.5, 0.0, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -0.75, 1.0, 1.0, -1.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.75, 1.0, -1.0, -1.0, 1.0, 0.5, 0.25, -0.5, 0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, -0.25, -1.0, 0.5, 0.5, 1.0, 0.75, 0.5, 1.0, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, 0.0, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 0.25, -0.5, -0.25, -0.75, 0.75, 0.75, -0.5, 0.0, -0.5, -1.0, 0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const array1 = new Float32Array([0.75, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -0.75, -0.25, 1.0, 0.5, 0.75, -0.75, 1.0, 0.0, 0.0, -0.75, 1.0, -1.0, 0.25, 0.25, 0.5, -0.25, 1.0, -0.5, 0.0, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, -0.25, 0.0, 0.25, 0.25, -0.25, 0.25, 0.25, 0.75, 0.25, 1.0, -1.0, -1.0, 0.25, 0.5, 1.0, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 0.0, -0.5, 1.0, 0.5, -0.75, 0.0, 0.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, -1.0, -0.5, 0.5, -0.25, -0.75, 0.25, -0.5, 1.0, 0.75, -0.5, -0.5, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.destroy();
    const array2 = new Float32Array([0.5, 0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, 0.75, -0.75, 0.0, 0.75, 0.25, 1.0, -0.5, -0.25, -0.25, -0.5, -0.5, -0.75, -0.75, 1.0, 0.75, -0.5, 1.0, -0.25, 0.75, 0.25, 1.0, 0.75, -0.25, -0.75, 0.75, 0.75, 1.0, -0.75, 0.75, 0.0, 1.0, -0.75, -0.75, -0.25, 0.5, 1.0, -0.75, -0.75, -0.75, 1.0, 0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.5, -0.5, -0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, -0.5, -1.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.75, -0.5, -1.0, 1.0, 0.0, -1.0, 0.0, -0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, -0.75, -1.0, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, -0.75, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    query400.destroy()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query200.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    device40.destroy();
    
    
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
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.0, 0.0, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, 0.0, 0.25, -0.75, -1.0, -0.25, 0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.25, 0.0, 0.25, 0.0, 0.75, -0.75, -0.25, -1.0, -0.25, 1.0, 0.75, -1.0, 1.0, 0.5, -0.75, -0.75, 1.0, -0.5, 0.75, 0.75, 0.5, -1.0, 0.5, 0.25, 0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, -0.25, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 0.5, 0.5, 0.5, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, ]);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    const array4 = new Float32Array([-0.5, 0.5, -1.0, -1.0, -0.75, 0.5, -0.75, 0.75, 0.75, -1.0, 0.5, -1.0, 0.25, 1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.5, 1.0, -1.0, -0.5, -0.75, -0.25, -0.25, -0.25, -0.5, 0.75, 0.75, 0.75, 0.25, -0.25, 1.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.5, -0.75, -0.5, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 1.0, 1.0, 0.75, 0.5, 0.25, 1.0, -0.25, 1.0, 0.0, 0.5, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, -0.25, -0.5, 0.0, -1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 1.0, -0.75, 1.0, -0.75, 1.0, -0.25, 0.0, 0.0, 0.5, -0.75, -1.0, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 0.75, 0.5, 0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query300.destroy()
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    const array5 = new Float32Array([0.25, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, 0.5, -1.0, 1.0, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, 0.5, 0.75, 0.0, 0.5, -0.25, -1.0, -0.5, 0.0, 0.75, 0.5, 0.0, 1.0, 0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, 0.75, 0.25, -0.5, -0.75, -0.25, -0.75, -1.0, 0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 1.0, -0.75, 0.75, 0.25, 0.25, 1.0, -0.5, 0.5, -0.75, 0.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.75, -0.25, 0.0, 0.75, ]);
    compute_pass_encoder2000.popDebugGroup()
    query203.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device50.destroy();
    query201.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device70.destroy();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    
    const array6 = new Float32Array([0.0, 0.5, -0.75, 0.0, 0.75, 0.5, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, 0.25, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, 1.0, 1.0, -1.0, -0.25, -0.25, 0.0, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, 0.75, -0.5, -1.0, 0.75, 1.0, 0.0, -0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -1.0, -0.25, 0.75, -0.75, 0.5, 1.0, -1.0, -0.25, 0.5, -0.25, -0.5, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 0.25, -1.0, 0.75, -1.0, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 0.5, ]);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.queue.submit([]);
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.destroy();
    
    
    
    
    
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    query200.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    const array7 = new Float32Array([0.0, -0.5, -1.0, 0.25, -0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.0, 0.5, -0.25, 0.0, -0.5, 0.0, -0.25, 0.75, 0.75, 0.5, -0.5, 0.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.75, 0.75, -0.5, 0.25, -0.5, 0.25, 0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -0.5, 0.25, 0.5, 0.25, -0.25, 0.75, -0.25, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, -0.75, 0.0, 0.25, -0.25, 0.0, -0.5, -0.5, -1.0, -0.75, -1.0, 0.25, -0.75, 1.0, 0.0, -0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 0.0, 0.75, ]);
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const command_buffer000 = command_encoder000.finish();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const array8 = new Float32Array([-0.75, -0.25, -0.25, -0.75, 0.5, -1.0, 1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, -0.5, 0.25, 1.0, -0.25, 0.25, 0.0, -0.25, -0.75, -1.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.5, -0.5, 0.25, 1.0, -1.0, 0.25, 0.25, -0.75, 0.25, 0.75, -1.0, -1.0, -0.25, -1.0, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, 0.5, -0.75, 0.25, -0.75, 0.25, 1.0, 0.0, 0.0, 0.5, -0.75, -0.25, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, 0.5, 1.0, 0.5, 1.0, 0.25, 0.0, -0.75, -1.0, -0.5, 0.5, -0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, 0.75, -0.75, 0.25, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.25, ]);
    const array9 = new Float32Array([1.0, -0.25, 0.25, 0.0, -0.75, 1.0, -1.0, 0.5, 0.0, 1.0, 0.5, -1.0, 0.0, 0.5, -0.25, -0.25, -1.0, 0.75, -0.5, 0.75, -0.25, 1.0, -1.0, -0.5, -0.25, -0.75, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, -0.5, -1.0, -1.0, -0.25, -0.5, 0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.0, -0.75, -1.0, 0.0, -0.25, 1.0, 0.75, 0.5, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, -0.25, 0.75, 0.0, 0.25, -1.0, -1.0, -0.25, -0.25, -1.0, -1.0, 0.75, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, -0.25, ]);
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    query800.destroy()
    
    
    
    
    query800.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query802.destroy()
    const array10 = new Float32Array([0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 0.5, -0.5, -0.75, 0.25, 0.5, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, 1.0, -0.5, 0.25, -0.25, -0.5, 0.25, -0.25, 0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.0, 0.25, 0.5, 0.5, 0.0, 0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.25, -1.0, -0.75, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, 0.75, 0.75, -1.0, 0.0, 0.5, -0.5, -0.5, -0.5, 0.25, 0.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.5, -0.75, 0.0, -0.75, -0.25, ]);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
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
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    query801.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    query800.destroy()
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
    
    
    query802.destroy()
    
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device90.destroy();
    
    command_encoder800.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-1.0, -0.75, -1.0, -0.25, -1.0, -1.0, -0.5, -0.75, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, -1.0, 0.0, 0.25, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.5, -0.5, 0.0, -0.5, -1.0, 0.0, -0.25, 1.0, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, 0.75, -0.25, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 0.25, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.5, 0.5, -0.25, 1.0, -0.5, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
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
    
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const query700 = device70.createQuerySet({
        label: "query700",
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    query802.destroy()
    query400.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    command_encoder700.insertDebugMarker("mymarker");
    
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout801]
    });
    
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout803 = device80.createPipelineLayout({ 
        label: "pipeline_layout803",
        bindGroupLayouts: [bind_group_layout801]
    });
    query802.destroy()
    const command_buffer800 = command_encoder800.finish();
    
    
    const command_buffer600 = command_encoder600.finish();
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout803,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.setPipeline(render_pipeline801);
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
    const array12 = new Float32Array([0.75, -0.75, -1.0, 0.5, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.5, 0.5, 1.0, -1.0, 0.75, 0.75, 0.5, 0.25, -0.25, -0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 0.75, 0.0, 0.0, -0.25, 1.0, 0.25, -1.0, 0.75, -1.0, -0.5, -0.75, 0.5, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, -1.0, -0.25, -1.0, -0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.25, -0.75, 0.5, -0.5, 1.0, 0.75, 0.0, -1.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.25, -0.5, -1.0, 0.75, 0.25, 0.25, ]);
    const pipeline_layout804 = device80.createPipelineLayout({ 
        label: "pipeline_layout804",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout800,
        compute: {
            module: shader_module803,
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
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
        layout: render_pipeline801.getBindGroupLayout(0),
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

    render_bundle_encoder801.setBindGroup(0, bind_group800);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    query801.destroy()
    
    device20.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    query802.destroy()
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
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
    const array13 = new Float32Array([-1.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.75, 0.75, 1.0, -0.5, 1.0, 0.5, 0.5, -0.25, 0.0, -1.0, 0.5, 0.0, -0.5, 0.75, -0.75, -0.75, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 1.0, 1.0, -1.0, -0.5, -0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -0.5, -0.5, 1.0, -0.75, -0.5, 0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -0.5, -0.75, -1.0, -1.0, -0.5, -0.75, 0.25, 0.0, -0.75, -1.0, 1.0, 0.5, 0.5, 0.5, 0.25, -1.0, 1.0, 1.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.0, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, -0.75, 0.75, 1.0, 0.25, 0.0, -0.5, 0.25, ]);
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout802,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.submit([command_buffer800, ]);
    query801.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    
    
    
    query802.destroy()
    
    query803.destroy()
    
    
    query600.destroy()
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
    const pipeline_layout805 = device80.createPipelineLayout({ 
        label: "pipeline_layout805",
        bindGroupLayouts: [bind_group_layout801]
    });
    device80.destroy();
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    
    
    query601.destroy()
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    query600.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query603.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    device60.queue.submit([]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query603.destroy()
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    
    query200.destroy()
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_bundle_encoder900.setPipeline(render_pipeline902);
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder401.setPipeline(render_pipeline402);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const array14 = new Float32Array([-1.0, 0.5, -0.75, -0.25, -0.75, 0.25, -0.75, -0.5, -0.5, -0.75, 1.0, -0.5, 0.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.5, -1.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.0, -0.75, -0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 0.75, -0.5, 0.25, 1.0, -0.75, 0.75, -0.5, 1.0, 0.75, 0.75, -0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.75, 1.0, -0.5, 1.0, -1.0, 0.75, -1.0, 0.5, 0.0, -0.5, -0.5, 0.75, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, -1.0, -0.5, 0.75, ]);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    command_encoder100.insertDebugMarker("mymarker");
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
    
    query602.destroy()
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout609,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_buffer601 = command_encoder601.finish();
    
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout608,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    query604.destroy()
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    render_bundle_encoder600.setPipeline(render_pipeline601);
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    
    
    query602.destroy()
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout603]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    query1000.destroy()
    
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device60.queue.submit([command_buffer601, ]);
    
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout603]
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    query603.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout608,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout609,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query603.destroy()
    
    query1000.destroy()
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout608,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer603 = command_encoder603.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder6020.popDebugGroup()
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    const command_buffer001 = command_encoder001.finish();
    device100.queue.submit([]);
}