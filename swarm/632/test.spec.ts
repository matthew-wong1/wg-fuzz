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
    
    
    
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.0, 1.0, 0.75, 0.0, 0.5, -0.25, -0.5, -0.5, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.0, 1.0, -0.25, -0.25, 0.0, 0.5, 1.0, -1.0, 0.5, 1.0, 0.25, 0.0, 0.5, 0.0, -0.25, 0.25, -0.75, 0.25, 0.5, 0.5, 1.0, -0.5, 0.75, 0.75, 0.5, -1.0, -0.25, -0.5, -0.75, 0.75, -0.75, 0.0, 0.0, -0.75, -0.75, 1.0, -1.0, 1.0, 0.0, 0.75, -0.75, -0.25, 0.25, 1.0, -0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, 0.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    
    
    
    const array1 = new Float32Array([0.75, 0.75, 0.75, -0.75, 0.0, 0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.0, 0.75, 0.0, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, -0.25, 0.25, -0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, -0.75, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, 0.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, -0.25, -0.75, 0.75, 0.0, -0.75, 0.0, -0.5, 0.5, 0.25, 1.0, 0.5, -0.5, -0.75, 0.5, -0.25, -1.0, -1.0, -1.0, -0.5, 0.0, -0.75, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -1.0, 0.25, 1.0, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.5, -1.0, 1.0, ]);
    
    
    
    
    const array2 = new Float32Array([0.25, -0.75, -0.25, -0.5, 0.5, -0.75, 0.75, -0.25, -0.75, 0.0, -1.0, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, 1.0, 1.0, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, -0.5, -0.25, -0.75, -1.0, -0.75, 0.75, -0.25, -1.0, 0.75, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, -1.0, 0.5, 0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, -1.0, 1.0, 0.25, 1.0, 0.25, -0.75, -0.25, 0.5, 0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -1.0, -0.25, -0.75, -1.0, 0.75, 0.25, -0.5, 0.75, 0.5, -1.0, 1.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, -0.25, -0.5, 0.0, 0.5, 0.25, 0.75, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([0.75, 0.25, 0.5, 0.0, -0.5, 0.5, 0.0, -0.25, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, -0.5, 0.25, 1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, 1.0, -0.5, 0.75, 0.25, -1.0, -0.25, 0.25, -0.75, 0.0, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, -0.75, -0.75, -0.5, -0.75, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, -0.25, 0.5, -1.0, -1.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, 0.25, -1.0, 1.0, -0.75, 0.0, -1.0, 0.25, -0.25, 0.25, -1.0, -0.25, -0.25, -0.75, 0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.25, 0.0, 0.0, -0.75, -0.25, 0.25, 0.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, 0.25, 0.0, 0.5, 1.0, -1.0, -0.25, 0.0, ]);
    const array4 = new Float32Array([0.0, 0.75, 1.0, 1.0, 0.75, -0.5, -0.75, -1.0, -0.5, 0.75, 0.5, 0.25, 0.75, 0.5, 0.75, 0.0, 0.0, 0.75, 0.25, 0.75, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, -0.25, -1.0, 0.0, 0.5, 0.0, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, 0.5, -0.75, 1.0, 0.75, -0.5, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 0.75, -0.25, 1.0, 1.0, 0.75, 0.5, -1.0, -0.25, -0.75, -0.5, 0.0, 1.0, -1.0, 1.0, 0.0, 0.5, 0.0, 1.0, 0.25, 0.75, -0.75, 0.0, 1.0, 0.5, 1.0, 0.25, 0.5, 0.75, -0.5, 0.25, 1.0, -0.25, 0.75, -0.75, -0.75, 1.0, 0.25, -0.25, 1.0, 0.5, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array5 = new Float32Array([1.0, 0.0, 0.75, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 1.0, -0.75, 1.0, -0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.75, -1.0, 0.5, 0.0, -0.25, 0.75, 1.0, -0.5, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, 1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, 0.5, -0.75, 0.0, -0.25, 0.0, 0.0, 0.0, -1.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.25, 1.0, -0.75, -0.25, 0.0, 0.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.5, 0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 0.0, 1.0, -0.75, -1.0, ]);
    device10.destroy();
    
    
    
    const array6 = new Float32Array([1.0, -1.0, 0.0, 0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -0.75, -0.75, -1.0, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 0.5, -0.5, -1.0, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, 0.0, 1.0, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, -0.75, -0.25, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 0.5, -1.0, 1.0, 0.75, 0.25, -0.75, -0.5, 0.75, -0.75, 0.0, -0.25, 0.75, 0.75, -0.5, -0.5, -0.75, -0.75, 0.75, 0.75, -0.5, -0.5, -0.75, -0.75, -0.75, -1.0, -0.25, ]);
    const array7 = new Float32Array([-0.75, 1.0, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, -0.5, 1.0, 0.5, -0.75, -1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.5, -1.0, -0.75, -0.75, 0.75, 0.75, -0.25, -1.0, 1.0, 0.75, -0.5, -0.25, -1.0, -1.0, 0.5, -0.25, -1.0, -0.75, -0.5, 0.5, 0.75, 0.5, -1.0, 0.0, 0.25, -1.0, 0.75, -0.25, 1.0, 0.25, -0.75, 0.75, -1.0, -0.5, -0.5, 0.0, -0.25, 0.25, 0.25, -0.5, -0.25, -0.25, -0.25, -1.0, -1.0, 0.25, 0.75, -0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, -1.0, 0.75, 0.25, 0.75, 0.0, -1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    
    const array8 = new Float32Array([1.0, -0.75, -0.75, 1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.0, -0.25, 0.25, 0.0, 0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, -1.0, 0.25, 0.75, -0.5, -0.5, 0.0, -0.75, -0.75, -0.25, 0.0, 1.0, 1.0, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.75, 0.5, 0.75, -1.0, -0.75, -0.25, 0.25, -0.75, 0.5, 1.0, -0.5, 0.25, -0.5, 0.25, 0.75, 0.5, 0.0, 1.0, -0.25, -0.25, -0.25, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 0.0, 1.0, 0.25, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.0, 0.75, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    
    query200.destroy()
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
    const array9 = new Float32Array([-0.25, 1.0, 0.75, 0.75, 1.0, -0.25, 0.75, 0.25, 0.25, -0.25, -0.75, 0.25, 0.75, 1.0, 0.5, 0.25, -0.25, 0.5, 1.0, -0.75, 1.0, -1.0, -0.5, -0.25, -1.0, -0.75, -0.25, -0.5, -0.25, 0.25, -0.75, -0.5, -1.0, 1.0, -0.75, -0.75, -0.5, 0.5, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, 0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, -0.5, 1.0, 0.0, 0.5, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, -0.5, 0.5, -0.5, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.0, -1.0, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array10 = new Float32Array([-0.25, 0.75, 0.25, 1.0, 0.5, 0.75, -0.75, -0.75, 0.5, 0.75, 0.5, -0.25, 0.5, -0.75, -0.5, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, 1.0, 0.5, -0.5, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.75, -0.75, -0.25, -1.0, -1.0, -0.5, -0.25, 0.75, 0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 0.75, 0.75, -0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 1.0, -0.75, 1.0, -1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -0.25, 0.75, -1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 1.0, -0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, -0.25, 0.75, 1.0, 0.5, 0.75, 1.0, ]);
    
    query200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.pushErrorScope("internal");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.setPipeline(render_pipeline202);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query400.destroy()
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
    query401.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    
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
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder300.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    device30.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    
    device40.destroy();
    
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array11 = new Float32Array([1.0, 0.75, -0.25, -0.25, 0.5, 1.0, 0.25, -0.75, 0.25, 0.25, 0.5, 1.0, 0.5, -0.5, 0.0, 0.5, 0.25, -0.75, -0.25, -0.5, -0.75, -0.5, -0.75, -0.5, -1.0, 0.5, 0.75, -0.75, 0.5, -1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, -1.0, -0.25, 0.5, -1.0, 0.5, 0.75, 0.0, 1.0, 0.5, -0.5, 0.75, 1.0, 0.25, -0.75, 1.0, -0.25, -0.5, 1.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.25, -0.25, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 1.0, 1.0, -0.25, -0.75, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, 0.25, 0.25, ]);
    
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
        powerPreference: "low-power"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.destroy();
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    query700.destroy()
    const array12 = new Float32Array([1.0, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.5, 0.5, 0.5, -0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.75, -0.75, 1.0, 0.0, 0.25, 0.0, 1.0, 0.0, 0.0, 0.25, 0.5, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, 0.0, 0.75, -0.75, 0.5, -0.25, 1.0, -0.75, 0.5, -1.0, -0.25, 0.5, -0.5, -1.0, -0.75, -0.75, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -1.0, 0.5, 0.5, -0.25, -0.5, 0.0, -1.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.25, -0.5, 0.75, -1.0, 0.25, -1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 1.0, -0.25, ]);
    
    
    const array13 = new Float32Array([1.0, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, -0.25, -0.75, -0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.75, 0.25, 0.0, -0.5, -0.5, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.25, -0.75, -0.5, 0.5, 0.0, -0.75, -0.25, -1.0, -1.0, -0.75, -0.5, 0.5, 0.75, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, 1.0, -0.25, -1.0, -0.25, 0.0, -0.5, 0.0, 0.5, -1.0, 0.5, -0.25, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, 1.0, 1.0, 0.0, -0.25, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 0.0, 0.0, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, 0.75, 0.75, ]);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    query700.destroy()
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array14 = new Float32Array([0.75, 0.75, -0.75, 0.0, -0.75, 0.25, 0.5, 0.0, -0.75, 0.25, 0.0, -0.25, -0.75, 0.75, -0.75, 0.5, 0.25, -0.5, -0.25, 0.0, -0.5, -0.75, -0.25, 1.0, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.75, -0.25, -0.25, -1.0, 0.0, -1.0, 1.0, 0.0, -1.0, -1.0, -1.0, 0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, 0.25, -0.5, 0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 1.0, -1.0, 0.5, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -1.0, 0.75, 0.0, -1.0, -0.25, -0.5, 0.75, -0.25, -0.5, -0.75, 0.25, -0.5, ]);
    
    query701.destroy()
    const array15 = new Float32Array([-0.25, -0.5, 0.25, -0.75, 0.0, 1.0, 0.75, 1.0, -0.5, 1.0, -1.0, 0.75, -0.25, -0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -1.0, 0.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 0.25, -0.25, -0.75, 0.75, 0.5, 0.25, -1.0, -1.0, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, 0.5, -0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -0.75, 0.5, -0.25, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, -0.75, 1.0, 1.0, -0.5, 0.0, 0.25, 0.75, -1.0, -0.5, -0.5, -0.75, -0.75, 0.25, -1.0, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.0, ]);
    
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
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.destroy();
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    device60.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device80.destroy();
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    device90.destroy();
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array16 = new Float32Array([0.25, 0.75, 0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, 1.0, -1.0, 1.0, -0.25, -0.75, 0.75, -0.75, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, 1.0, 0.75, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 1.0, 0.25, -0.75, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.25, -0.25, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, 0.25, 0.75, 0.5, 0.0, -1.0, -0.25, 0.5, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, 0.5, 0.75, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, -0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, 0.75, 0.75, 1.0, ]);
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device100.destroy();
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const array17 = new Float32Array([-1.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 1.0, 0.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -1.0, -0.75, 0.0, -0.25, 0.0, 1.0, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, -0.25, 0.75, -1.0, 0.5, -1.0, -0.5, 0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.25, 0.0, -0.25, 0.0, -0.5, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -0.75, 0.75, 0.25, -1.0, 0.0, 0.5, -0.5, ]);
    
    
    
    
    device120.destroy();
    
    
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device140.pushErrorScope("internal");
    
    
    
    
    
    
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    
    
    
    
    
    const array18 = new Float32Array([0.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.75, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, -0.5, -1.0, -0.75, 0.25, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, -0.75, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, 0.0, 0.75, -0.5, -0.25, 0.0, 0.5, 0.25, 0.25, -0.75, -0.25, -1.0, 0.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.5, -1.0, -0.75, 0.25, -0.75, -1.0, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -0.75, -1.0, -0.5, 0.5, -0.5, 0.0, 0.75, 0.5, 0.25, -0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 0.0, -0.25, -0.5, 0.75, 1.0, 0.75, -0.25, -1.0, -0.25, -0.5, -0.5, -0.75, 0.0, -0.25, 1.0, -0.25, 1.0, -0.5, 0.25, 0.25, -0.75, -0.75, -1.0, -0.25, -0.25, ]);
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    device130.destroy();
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    query1600.destroy()
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    
    
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    
    
    device150.destroy();
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    
    var shader_module1404_code = "";
    try {
        shader_module1404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1404 = await device140.createShaderModule({ label: "shader_module1404", code: shader_module1404_code })
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1601,
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
            module: shader_module1601,
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
    const array19 = new Float32Array([0.0, -0.75, 0.5, 1.0, -0.25, 0.0, 0.75, -0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.75, 0.5, -0.5, -0.5, -0.25, 0.75, -1.0, 0.5, -0.5, -1.0, 0.25, -0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 0.25, -0.75, -0.75, -0.25, 0.75, -0.5, -0.5, -0.5, -0.75, -0.75, -0.5, 0.75, -0.5, 0.75, 1.0, -0.5, -1.0, -0.5, -0.25, -0.5, 0.25, 0.0, 0.25, 0.75, 0.75, 0.0, 0.5, 0.0, 0.25, 0.25, -0.5, 0.0, -0.5, 1.0, 0.5, 0.25, -1.0, 0.25, 0.75, 0.75, -0.75, -1.0, 0.5, -0.5, 0.0, 1.0, 0.75, 0.25, -0.5, -0.75, 1.0, 0.5, 1.0, ]);
    
    
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1402,
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
            module: shader_module1402,
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
    device160.pushErrorScope("validation");
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const render_pipeline1601 = device160.createRenderPipeline({
        label: "render_pipeline1601",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    const array20 = new Float32Array([1.0, -1.0, -0.25, -0.25, -0.5, 0.0, -0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -0.75, -0.75, -0.25, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 0.25, -0.25, -0.5, 1.0, 0.5, 0.25, 0.75, -0.25, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.75, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.75, 0.0, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, 0.25, 0.0, -0.75, -0.75, 1.0, 0.25, 1.0, 0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, 0.5, 0.75, 0.5, 0.0, 0.0, 0.25, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, -0.75, 0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 0.25, 1.0, -0.75, -0.5, -1.0, -1.0, 1.0, 0.5, ]);
    
    
    
    render_bundle_encoder1601.insertDebugMarker("marker");
    render_bundle_encoder1601.pushDebugGroup("group_marker");
    render_bundle_encoder1600.pushDebugGroup("group_marker");
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    query1600.destroy()
    
    const render_pipeline1602 = device160.createRenderPipeline({
        label: "render_pipeline1602",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    const query1701 = device170.createQuerySet({
        label: "query1701",
        type: "occlusion",
        count: 32,
    });
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
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder1601.setPipeline(render_pipeline1601);
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device170.pushErrorScope("internal");
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device170.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}