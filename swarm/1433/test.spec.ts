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
    const array0 = new Float32Array([1.0, -0.5, 0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 0.0, 0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -0.5, 0.75, -0.25, 0.5, 0.25, 1.0, -0.5, 1.0, 0.75, 0.25, -0.25, -1.0, -0.25, 0.5, 1.0, 0.25, -0.25, 0.5, -0.75, -0.25, 0.0, -1.0, -0.25, 0.0, 0.25, 0.5, -0.5, 1.0, 1.0, -1.0, -0.75, 0.75, -1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 1.0, -0.75, -0.5, -0.5, 1.0, -1.0, 0.25, ]);
    const array1 = new Float32Array([0.75, -0.75, 0.5, -0.75, 1.0, -0.25, -0.5, -0.75, 0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.5, 0.5, 1.0, 0.25, -1.0, 0.0, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, -1.0, -0.75, -1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 0.5, 0.0, -0.25, -0.75, 0.25, 0.0, -0.25, -1.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -1.0, -0.25, 0.25, 0.5, 0.75, 0.5, 0.25, -0.75, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, 0.75, 0.0, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array2 = new Float32Array([0.0, 0.25, 0.75, -0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 0.5, 0.75, -1.0, 1.0, -0.75, -0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 0.5, -0.25, 0.25, 1.0, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, 0.75, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, -0.5, 0.0, -0.5, -1.0, -0.75, 0.0, 0.0, -0.25, -0.25, -0.25, 0.75, 0.25, 0.5, -0.25, -0.75, 0.0, 0.0, -1.0, 0.0, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.25, -1.0, -0.25, 1.0, 0.0, 0.75, -0.25, 0.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, 0.0, -0.25, ]);
    const array3 = new Float32Array([1.0, -1.0, 0.0, -0.75, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.75, 0.5, 0.5, 1.0, 0.5, 0.25, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -1.0, 0.0, -0.5, -0.75, 1.0, -1.0, 0.0, 0.0, 0.5, -0.75, -1.0, 0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 1.0, -0.75, 0.5, 0.5, 0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 0.0, -0.25, -1.0, 0.0, 0.25, 0.5, -0.25, -0.5, 0.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.75, 1.0, -0.5, -0.25, 0.25, -0.5, 1.0, 0.75, 0.0, -1.0, -0.75, 0.0, 0.0, -0.25, -1.0, -0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.0, 0.5, -0.75, -1.0, ]);
    
    
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.75, 0.75, 0.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 0.5, 1.0, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 0.75, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.25, 0.75, 0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, -0.5, -0.75, -0.25, -0.75, 1.0, 0.0, 1.0, 0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, 0.0, 0.0, 0.75, -0.75, -1.0, 0.25, -0.75, 1.0, -0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 0.25, -1.0, -0.75, -0.75, 0.0, -0.25, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, 0.25, -0.5, -0.75, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, 1.0, -0.25, 0.25, ]);
    
    
    device10.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.pushErrorScope("validation");
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
    const array5 = new Float32Array([0.5, 0.75, -0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 1.0, 0.75, -0.75, 1.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.5, 0.25, -1.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, 0.0, 0.0, 0.25, 1.0, 1.0, -0.75, -0.25, 1.0, -0.5, 0.0, -0.5, -0.5, 0.75, 1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.0, 0.25, -0.5, 1.0, 1.0, 0.25, -0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, 0.0, 0.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.0, -0.5, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.25, 0.25, -0.5, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.75, -0.75, -0.75, 0.0, -0.75, -0.75, 0.0, 0.0, ]);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    const array6 = new Float32Array([0.25, 0.0, 0.0, 0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 1.0, 0.5, -0.5, -1.0, 0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.0, -0.5, -0.75, 0.5, -0.5, 1.0, 1.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 0.25, -1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, 0.25, -0.5, 0.5, 1.0, 0.25, -0.5, -0.25, 0.0, 0.75, 0.25, -1.0, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, -0.5, 0.5, 1.0, 0.0, 0.5, 1.0, -0.5, 1.0, -0.25, 0.25, -0.25, -1.0, 0.5, -0.25, -1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 0.0, -0.25, 0.5, 0.0, -0.75, 0.5, 0.0, -0.75, -0.5, ]);
    
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
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array7 = new Float32Array([0.75, -0.25, 1.0, -0.5, -1.0, 0.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, -0.75, 0.75, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, 0.5, 0.25, 0.0, 0.25, -0.75, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.5, -1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 0.0, -1.0, -1.0, 0.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, -1.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.25, 0.75, -0.75, -0.5, -0.75, 0.0, -0.25, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, 1.0, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([-0.75, -0.5, -1.0, -0.5, 0.25, 0.0, 0.5, -0.75, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.75, 0.0, -1.0, 0.25, 0.75, 0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 1.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.5, -1.0, 0.5, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, 0.0, 1.0, 0.0, 0.0, -0.25, 0.0, -1.0, -0.5, -0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.75, 0.25, -0.25, 0.0, 1.0, -0.75, 0.75, -1.0, 0.0, 1.0, 1.0, -0.25, -1.0, -0.25, 0.5, -0.25, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.25, 0.5, 0.5, 0.0, 1.0, 0.5, 0.0, -1.0, ]);
    
    
    query100.destroy()
    query200.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device20.pushErrorScope("validation");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.5, 0.25, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 0.0, -0.5, 0.75, 0.75, -1.0, -0.25, -0.5, 0.25, -0.75, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.0, 1.0, -0.5, 0.0, -1.0, -0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.25, 0.5, 0.75, -0.5, -1.0, -0.5, 0.75, 0.25, 0.25, 0.0, -0.5, -0.25, -0.25, -0.5, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, 1.0, 0.5, -1.0, 0.75, -0.5, 1.0, 1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 1.0, -1.0, -0.75, -0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -0.5, -0.5, 0.5, 0.75, -1.0, 0.5, ]);
    
    query203.destroy()
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device20.pushErrorScope("out-of-memory");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    
    
    device10.destroy();
    query204.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query204.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query205.destroy()
    query205.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query203.destroy()
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query102.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query204.destroy()
    query206.destroy()
    const array10 = new Float32Array([-0.5, -0.75, -0.75, -0.5, -0.75, 0.75, 0.5, 0.5, 1.0, -0.25, -0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, -1.0, 0.5, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 0.75, -1.0, 0.0, -0.5, 0.5, 0.5, -0.75, 0.5, -0.5, 1.0, -0.5, 0.75, 0.75, -0.25, 1.0, 0.0, 0.75, 0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.25, 1.0, 1.0, 1.0, 0.25, -0.75, 0.75, 0.5, 0.75, 0.5, 0.75, 0.0, -0.5, -1.0, -0.75, -0.5, -0.75, 0.25, -1.0, 0.25, 1.0, 0.25, ]);
    query400.destroy()
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.pushErrorScope("internal");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query204.destroy()
    query101.destroy()
    
    render_bundle_encoder401.popDebugGroup();
    query200.destroy()
    query205.destroy()
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    query400.destroy()
    query205.destroy()
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
    
    const array11 = new Float32Array([0.0, 0.0, 0.0, -1.0, 0.25, -0.75, 0.25, -0.5, 0.0, 1.0, 1.0, 0.25, -0.75, -1.0, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.0, 1.0, 0.25, 1.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.25, -0.25, 0.5, -1.0, -0.75, -1.0, 0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 0.75, -1.0, 0.75, -0.75, 0.75, 0.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.75, -0.5, 0.25, 0.25, 1.0, 1.0, -0.75, -0.5, 0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, 0.25, -0.25, 0.75, 0.75, -0.25, 0.5, -0.5, -1.0, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, -0.5, 0.0, 0.5, 0.75, -0.5, 0.0, -0.5, ]);
    render_bundle_encoder202.popDebugGroup();
    query102.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_bundle_encoder402.popDebugGroup();
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    render_bundle_encoder402.setVertexBuffer(0, buffer403);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    query205.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.draw(3);
    query206.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.drawIndirect(buffer201, 0);
    render_bundle_encoder201.popDebugGroup();
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
    query201.destroy()
    
    device00.destroy();
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    query202.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query204.destroy()
    
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
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query204.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder402.finish();
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device00.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    
    
    
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder401.setVertexBuffer(0, buffer403);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    query203.destroy()
    
    
    
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.finish();
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    query203.destroy()
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder401.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    render_bundle_encoder401.draw(3);
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    device60.pushErrorScope("internal");
    render_bundle_encoder202.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query204.destroy()
    query400.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    render_bundle_encoder201.popDebugGroup();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("validation");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder201.setVertexBuffer(0, buffer204);
    
    device30.destroy();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    device40.queue.writeBuffer(buffer405, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    query2010.destroy()
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
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
    device60.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    query2010.destroy()
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const array12 = new Float32Array([0.25, 0.0, -0.5, -0.25, -0.75, -1.0, -0.75, 1.0, -1.0, -1.0, 0.5, -0.75, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, 0.25, 0.0, -0.5, 1.0, 0.75, 0.5, -0.5, 0.5, -0.75, -1.0, -0.75, 0.25, 0.75, 0.25, -0.25, 0.25, 0.0, 0.5, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, -0.5, -0.25, -0.25, 0.25, 0.25, -0.25, 0.5, -0.25, 0.5, -0.75, -1.0, -1.0, -0.25, 0.5, -0.75, -1.0, 0.25, -0.5, -0.75, -0.75, 0.0, -1.0, 0.0, -0.25, -0.25, 1.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.25, 0.5, 0.75, -1.0, 0.0, -0.5, -1.0, -0.75, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 1.0, -0.25, 0.25, -1.0, 0.5, 0.5, -0.25, 1.0, -0.75, 1.0, 0.25, 0.25, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
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
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    query2010.destroy()
    query202.destroy()
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_bundle_encoder400.setVertexBuffer(0, buffer402);
    device80.destroy();
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder401.popDebugGroup();
    query203.destroy()
    query204.destroy()
    query206.destroy()
    
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout404]
    });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder400.draw(3);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder201.draw(3);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query204.destroy()
    query204.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    query202.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout703]
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    query203.destroy()
    
    query207.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device70.destroy();
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.finish();
    query200.destroy()
    
    query400.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    query200.destroy()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer203, 0, array12, 0, array12.length);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query201.destroy()
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    query207.destroy()
    
    query205.destroy()
    render_bundle_encoder202.popDebugGroup();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder202.popDebugGroup();
    device40.pushErrorScope("validation");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    query101.destroy()
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    query200.destroy()
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout204]
    });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    device10.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    device40.queue.writeBuffer(buffer404, 0, array12, 0, array12.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder401.finish();
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout200]
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
    
    
    const array13 = new Float32Array([1.0, -0.75, 0.75, -1.0, -0.75, 1.0, 0.75, -1.0, -0.25, 0.0, 0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, -1.0, -1.0, 0.5, -0.25, 0.0, -0.25, 0.0, -0.5, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, -0.5, 1.0, 0.75, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, -0.75, -1.0, -0.25, 0.25, 0.0, -0.5, 0.0, -0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.5, 0.75, -1.0, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, 0.5, -0.25, -0.75, 1.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.75, 0.5, -0.75, -0.5, 1.0, 0.25, 1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 1.0, -0.5, -0.75, 0.75, -1.0, -0.75, -0.5, -1.0, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}