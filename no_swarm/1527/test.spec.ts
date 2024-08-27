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
    const array0 = new Float32Array([-0.5, 1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 0.25, -0.25, -0.25, 0.25, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.5, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, 0.0, 0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, 0.5, 0.75, 0.25, -0.5, -1.0, -0.5, -0.75, 0.5, -1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -1.0, 0.5, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -0.75, ]);
    
    
    const array1 = new Float32Array([1.0, 1.0, 1.0, 0.0, 1.0, -1.0, -1.0, 0.5, -0.5, 0.0, 1.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.5, -0.5, -0.5, 1.0, 0.75, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 1.0, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, -0.25, -0.75, 0.0, 0.25, -1.0, 0.25, 0.5, -1.0, 0.25, -0.25, 0.25, -0.75, -0.25, 0.75, 0.25, -0.25, -0.25, -0.25, -0.5, 1.0, -0.25, -1.0, 0.5, 0.5, -0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 0.5, -0.5, -0.75, 0.5, 0.25, 1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, 0.0, 0.5, -0.75, -1.0, 0.5, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, 0.5, 0.5, ]);
    
    
    const array2 = new Float32Array([-1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 1.0, -0.25, 0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 0.75, 1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, -0.75, -0.5, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, -0.25, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, -0.75, -0.75, -0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, -0.75, 1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.25, -0.75, -0.75, 0.0, 1.0, 0.75, 1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.75, -0.5, 0.0, -1.0, -1.0, 0.75, -1.0, 0.25, 0.0, -0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -1.0, -0.75, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.5, 0.75, 0.25, 0.0, -0.25, 0.75, -0.75, 0.5, 0.25, 1.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, -0.75, 0.0, -0.25, -0.25, 0.25, 0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 0.75, -0.75, -0.25, -0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, -1.0, 0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.0, -1.0, -0.25, -0.5, -0.25, 0.25, -1.0, -1.0, 1.0, 0.5, -1.0, 0.0, 0.0, 0.75, 0.25, 1.0, -0.5, 0.75, -0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 0.0, 0.5, 0.75, 0.0, 0.75, -0.75, 0.0, -0.5, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, 0.75, 0.25, -0.75, -0.5, 0.75, 0.75, -0.75, -1.0, 1.0, 0.0, ]);
    
    const array4 = new Float32Array([1.0, 0.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.75, -0.25, 0.5, -0.5, 0.25, 0.75, -0.75, -0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.5, -0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.0, 0.25, -0.5, -0.75, -0.75, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, -0.5, 1.0, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, -1.0, -1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -1.0, 1.0, 0.75, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, ]);
    const array5 = new Float32Array([-0.75, -0.75, -0.5, -0.5, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -0.75, 0.25, 0.0, -0.5, -0.75, -0.75, -0.25, -1.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.25, -1.0, 0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, -0.5, 0.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, 0.0, -0.25, 0.25, 0.25, 0.5, 0.0, -1.0, 0.25, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, -0.5, -0.75, 1.0, -0.75, -1.0, 0.25, -0.25, -1.0, 0.0, 0.75, 0.25, -0.75, 1.0, 0.5, -0.25, -0.5, -0.75, -1.0, -0.25, -0.25, 1.0, 0.75, 1.0, 0.5, 1.0, -0.25, 0.25, -0.75, -0.75, -1.0, 0.0, -0.5, ]);
    
    
    const array6 = new Float32Array([0.75, -1.0, 0.0, 0.5, 1.0, 0.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, -1.0, 0.75, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, -0.25, 0.75, 0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 0.0, 0.5, 1.0, 0.5, 1.0, 0.0, -0.5, 0.75, -0.25, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, -1.0, 1.0, -0.75, 1.0, -0.5, 0.25, 1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, -0.75, -1.0, 0.25, 0.5, -1.0, 0.25, 1.0, -0.5, 0.75, 0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.25, 0.5, -0.25, -0.75, 0.0, 0.5, -1.0, 0.25, 0.75, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, -0.5, -1.0, 0.75, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, ]);
    const array7 = new Float32Array([1.0, 0.0, -0.5, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 1.0, -0.25, -1.0, 0.0, 1.0, 0.5, 0.5, 0.5, 0.0, 0.0, -1.0, -1.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.5, 0.75, 0.75, 0.75, -0.75, -0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, -0.75, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, -1.0, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -1.0, 0.0, -0.5, -0.75, -0.5, 1.0, -0.5, -0.5, -0.5, 0.0, -1.0, 0.25, 0.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 0.0, 0.25, -0.25, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, ]);
    
    const array8 = new Float32Array([0.5, 0.0, -0.75, 1.0, -0.25, 0.75, 0.75, 0.0, -0.75, -0.5, 0.5, -0.75, -0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.0, -1.0, 0.0, -0.75, 0.75, 0.0, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, -0.25, 0.25, 0.5, -0.5, -0.5, -0.5, 1.0, 0.0, 0.0, -0.75, -0.5, 1.0, 1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, -0.5, 1.0, 0.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, -1.0, 0.75, -0.75, 0.0, 0.75, 0.0, -1.0, -1.0, -0.75, 0.25, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.75, ]);
    const array9 = new Float32Array([1.0, 1.0, 0.25, -1.0, -1.0, 0.5, 0.5, 0.5, -0.75, -0.5, 0.75, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.75, -0.75, -0.5, 0.5, -0.25, -1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.75, -0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, 1.0, 0.25, -1.0, -1.0, 0.0, 0.0, -0.5, -0.75, 0.5, 0.25, 0.75, 1.0, -1.0, 0.25, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, 0.5, -0.5, -0.75, -1.0, 1.0, -0.75, 1.0, -0.75, 0.0, 1.0, 0.25, -1.0, 0.25, -0.5, -0.75, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array10 = new Float32Array([-1.0, 0.25, 0.0, -0.75, -0.75, 0.0, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 0.5, 0.25, 0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 1.0, -0.75, -0.25, 1.0, -1.0, -1.0, -0.5, 0.0, -0.25, -1.0, 0.0, 0.0, -0.5, 0.75, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.5, 0.5, -1.0, -0.5, 0.5, -0.75, -0.25, 0.5, -0.25, -1.0, -0.25, 0.25, 0.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.5, 1.0, 0.0, 0.0, 0.5, 1.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.0, -1.0, -0.75, -1.0, 1.0, -0.5, -1.0, ]);
    
    
    const array11 = new Float32Array([-0.75, -0.25, 0.75, 1.0, 0.75, 0.5, -1.0, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, 0.75, 0.75, -0.25, -0.5, -1.0, -0.75, -0.25, 0.75, 1.0, 0.75, -0.25, -0.75, 0.0, -0.75, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, 0.5, 1.0, 0.0, -0.75, 0.5, 0.5, 0.75, -0.25, 1.0, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.0, 0.0, 1.0, -0.5, -0.5, -0.5, -0.25, 0.5, -1.0, -0.5, 0.25, -0.25, 0.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.0, -0.5, -1.0, 0.25, -0.25, 0.0, 0.75, -0.5, -0.75, 0.0, 0.0, -0.5, 0.25, 0.5, -0.75, 1.0, 0.25, 0.0, 0.5, -1.0, -0.25, 0.0, -0.25, -0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const array12 = new Float32Array([-0.25, -1.0, 0.25, -0.25, 0.25, -1.0, -0.25, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, 0.0, 0.5, -1.0, 1.0, 0.25, 0.25, 1.0, 0.75, 0.75, 0.5, 0.0, -0.75, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -1.0, -0.25, 0.5, -0.75, -0.25, -0.75, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, 0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 0.25, 0.25, 0.25, -0.5, -1.0, 0.75, -0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, 0.75, -0.75, 0.75, 0.75, 0.25, 0.25, -0.5, -1.0, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const array13 = new Float32Array([0.0, -0.75, 1.0, 0.25, 0.25, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, 0.25, 0.0, 0.5, 1.0, -1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.75, -0.5, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.5, 0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, 0.0, 0.25, 0.5, 0.0, 1.0, 0.0, -0.25, -0.25, 0.75, 1.0, 1.0, -0.25, -1.0, -0.25, -0.5, 0.75, 0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, -0.5, -0.75, -0.25, -0.75, 0.75, 0.75, 0.0, 0.75, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, 0.5, 0.75, -0.75, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, -0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    texture100.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.popDebugGroup();
    device10.destroy();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array14 = new Float32Array([-0.5, -0.5, 0.5, 0.5, -0.5, 0.25, 0.5, 1.0, 0.0, 1.0, 0.75, -0.25, -0.25, 1.0, 0.0, -0.25, 0.5, -0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 1.0, 0.25, 0.0, 0.25, -0.5, -1.0, 0.75, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 0.5, -0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.5, -0.75, 0.75, 0.5, 0.25, 0.0, 1.0, -1.0, 0.75, -0.75, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, -1.0, 0.25, 0.5, 0.5, -0.5, 0.75, 0.0, 0.5, -1.0, 1.0, -1.0, -0.75, 0.5, -1.0, 0.25, 1.0, -1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device20.pushErrorScope("internal");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array15 = new Float32Array([0.75, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 0.25, -1.0, 0.0, -1.0, 0.25, -1.0, 0.75, -1.0, 0.25, 0.75, 0.5, 0.25, -1.0, -0.75, -0.75, 0.75, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 0.75, 0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 1.0, 0.25, -0.75, 0.0, 0.5, -0.75, 0.75, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, -1.0, -0.5, 0.75, -1.0, -0.5, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.75, -0.5, -0.75, -0.25, -1.0, 0.75, -0.25, 0.0, -0.75, -0.75, 1.0, 1.0, -0.75, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, -0.25, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    buffer200.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device40.pushErrorScope("out-of-memory");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device40.queue.submit([]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array15, 0, array15.length);
    
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array15, 0, array15.length);
    device40.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query300.destroy()
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer203.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    query301.destroy()
    buffer202.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    query100.destroy()
    buffer201.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer202.destroy()
    buffer206.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeBuffer(buffer205, 0, array15, 0, array15.length);
    buffer207.destroy()
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeBuffer(buffer209, 0, array12, 0, array12.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    query200.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    buffer208.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer209.destroy()
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device30.queue.submit([]);
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder203.insertDebugMarker("marker");
    render_bundle_encoder202.setVertexBuffer(0, buffer200);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    device30.destroy();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder203.setPipeline(render_pipeline201);
    
    render_bundle_encoder202.setIndexBuffer(buffer200, "uint16");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    
    buffer201.destroy()
    device20.pushErrorScope("internal");
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
    
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer204.destroy()
    render_bundle_encoder202.draw(3);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array15, 0, array15.length);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.insertDebugMarker("marker");
    texture200.destroy();
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer2010.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.finish();
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder203.pushDebugGroup("group_marker");
    const array16 = new Float32Array([0.25, 1.0, -0.75, 0.25, 1.0, 1.0, -0.75, 0.25, -1.0, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, 0.25, -0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.5, 0.0, 1.0, -0.75, -1.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.0, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 0.0, 1.0, 0.0, 0.0, 0.0, -0.75, 0.75, -0.75, 0.0, -0.75, 1.0, 0.5, 0.5, 0.0, -1.0, -0.5, -0.5, -0.75, 0.75, 0.75, 0.25, -0.75, 0.25, 0.75, 0.75, -1.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.0, 0.75, 0.5, 0.0, 0.0, 0.75, -0.25, 1.0, 0.25, -0.5, 0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.5, -1.0, -0.5, 1.0, -0.75, 1.0, -0.25, ]);
    
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
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    texture202.destroy();
    texture204.destroy();
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer200.destroy()
    
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer2010,
        0
    )
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.drawIndirect(buffer202, 0);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    compute_pass_encoder2001.setPipeline(compute_pipeline208);
    const array17 = new Float32Array([0.0, -0.75, 1.0, 1.0, 0.25, 1.0, -1.0, 1.0, -1.0, -0.5, 0.75, -0.5, 0.75, 0.75, -0.75, 0.0, -1.0, 1.0, -1.0, 1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -1.0, -0.75, -0.75, 1.0, 0.0, 0.25, -0.75, 0.25, 0.5, -1.0, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, -0.75, 0.75, 0.75, -1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -0.25, -1.0, 0.25, 0.5, 0.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.0, 0.5, -1.0, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, 0.5, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, ]);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const array18 = new Float32Array([0.75, 0.25, 0.75, -0.75, 0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, -0.25, 0.5, 0.75, -0.5, -0.5, -0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 1.0, 0.25, 1.0, 0.75, 0.25, -0.5, -0.5, 0.25, 0.5, 0.5, -1.0, -0.75, 0.5, -0.5, 0.0, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.0, -0.5, 0.5, 0.75, -0.25, 0.25, -0.75, 1.0, -0.25, 0.25, 1.0, -1.0, 1.0, -1.0, 0.75, -0.5, 0.0, -0.75, -0.25, -0.75, -0.75, 0.5, 0.25, 0.0, 0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, -1.0, 1.0, 1.0, 0.5, -1.0, -0.75, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, 0.25, 0.0, ]);
    
    render_bundle_encoder201.popDebugGroup();
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
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.finish();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    buffer205.destroy()
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query203.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer501.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
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
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    device50.destroy();
    query201.destroy()
    texture201.destroy();
    compute_pass_encoder2000.popDebugGroup()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    query202.destroy()
    render_bundle_encoder203.popDebugGroup();
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
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
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    
    
    
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.end();
    compute_pass_encoder2000.end();
    command_encoder200.popDebugGroup()
    compute_pass_encoder2001.end();
    device30.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2001.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}