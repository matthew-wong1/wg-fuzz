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
    const array0 = new Float32Array([-1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 1.0, 0.75, -0.5, -0.75, 0.75, -0.25, 1.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, -1.0, 0.0, 0.75, -0.25, 0.75, 1.0, -0.25, 0.5, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.0, 0.25, -0.25, -0.25, 0.25, 0.0, -0.5, -0.25, -0.25, 0.25, 0.25, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.75, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 1.0, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.75, 1.0, -0.5, -1.0, 0.5, 0.25, 1.0, 0.0, 0.75, 1.0, 0.0, 0.0, -0.25, ]);
    
    
    const array1 = new Float32Array([0.75, 0.25, -0.5, -0.75, 0.75, -1.0, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 0.25, -0.25, -0.25, -1.0, -0.5, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 0.5, -0.25, 1.0, -1.0, -0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.5, 0.5, -0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.25, 1.0, 1.0, -0.75, 1.0, 0.0, -0.25, 0.25, -0.25, 0.75, 0.75, -0.75, -0.25, 0.75, -0.75, -0.5, -0.5, 0.75, -0.75, -0.5, -0.25, -1.0, 0.0, 0.75, -1.0, -1.0, 0.25, -0.25, 0.0, -1.0, 0.0, 0.5, ]);
    const array2 = new Float32Array([-1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.75, -0.25, 1.0, 0.5, -1.0, 0.75, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.75, 0.25, -1.0, -0.25, 0.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.25, -0.25, 0.0, -0.75, -0.75, 1.0, -0.25, 0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 0.75, -0.5, -0.5, -1.0, 0.75, -0.75, 0.75, 0.5, -1.0, -0.75, 0.5, -0.25, 0.0, 0.75, 1.0, 0.25, 1.0, -0.75, 0.0, 0.5, -0.75, 0.25, -0.75, -1.0, 1.0, -0.25, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 0.75, -0.75, -0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([0.0, 0.75, -0.75, 0.5, -0.5, -0.25, -0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.75, -0.75, 0.25, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.75, 0.25, -0.25, 0.25, -0.5, -0.75, 0.75, -1.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.25, 0.0, -0.25, 0.5, 0.0, -0.75, -0.75, 0.75, -0.5, 0.0, -0.75, -1.0, -0.75, -0.25, 0.5, 1.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 0.0, 0.25, -0.25, 0.75, 0.75, 0.75, -1.0, 1.0, 0.25, 0.75, 0.75, -0.5, -0.5, -0.75, 0.5, -0.25, 1.0, -0.25, 0.25, 0.5, 1.0, -0.5, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, 1.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.5, -0.25, -0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.75, 0.25, 1.0, 0.5, 0.0, 0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, 0.25, -0.75, -0.75, -0.5, -0.75, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, 0.0, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.25, -1.0, -1.0, 1.0, 1.0, -1.0, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, -0.75, 0.75, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 1.0, 0.5, 0.75, -1.0, -0.25, 0.5, 0.25, 0.25, -1.0, 1.0, 1.0, -0.5, 0.25, -1.0, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, -0.25, 0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 0.0, 0.5, 0.5, -0.5, -0.75, 0.0, -0.75, -1.0, 1.0, 0.75, -1.0, -0.5, 1.0, ]);
    
    
    const array5 = new Float32Array([0.5, 0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, 1.0, 1.0, -0.75, -0.25, -0.5, 0.0, -0.25, 0.0, 1.0, -0.75, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, -1.0, -0.25, -0.5, 0.75, 0.75, 0.0, 1.0, -0.75, 0.0, -1.0, -0.5, -0.75, 0.25, 0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -0.75, 0.25, -0.25, 0.0, 1.0, 0.25, -1.0, -0.25, -0.75, 0.0, -0.5, 0.25, 0.5, -0.5, -0.5, 0.75, -0.5, -0.5, -1.0, -1.0, 1.0, -0.75, -0.75, 0.75, 0.25, 0.0, 0.5, -0.25, -0.5, 0.75, 0.25, -0.75, -0.75, 1.0, -0.25, 1.0, -1.0, 0.75, 0.25, -0.25, -0.5, 0.25, 0.25, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array6 = new Float32Array([-0.75, 1.0, 0.25, -0.25, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.25, 1.0, 1.0, -0.75, 1.0, 0.75, 1.0, -0.5, 0.25, -0.5, 0.25, -0.25, 0.0, 0.75, 1.0, -0.25, 1.0, 0.75, -1.0, -0.5, 0.5, 0.25, -0.5, -0.75, -0.75, 0.0, -0.25, -0.75, 1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.5, 0.75, 1.0, -0.5, 0.5, -0.25, -1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, -1.0, -1.0, -1.0, -1.0, -0.25, -1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.75, -0.75, 0.0, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
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
    device10.pushErrorScope("internal");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array7 = new Float32Array([-0.5, 0.0, -0.5, 0.0, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, -0.25, 0.5, 0.5, -0.75, -0.75, -1.0, 0.5, 0.5, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, -0.25, -0.25, -0.25, 0.25, 0.75, 1.0, -0.5, -0.25, 0.25, 0.75, 0.5, 0.5, 1.0, 0.5, 0.0, 0.25, -0.75, -0.5, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, -0.5, -0.75, 0.75, -0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, 0.25, 0.25, -0.25, -0.25, -0.25, -0.75, -0.5, 0.25, -0.25, -0.5, 0.25, 0.75, 0.0, -1.0, -0.5, -0.75, 0.5, -0.25, -0.5, 1.0, -0.5, -0.25, 0.0, 1.0, -1.0, -0.5, -1.0, 0.25, 0.0, 0.25, 0.25, 0.75, -0.25, 0.0, 0.25, 0.25, -0.75, ]);
    const array8 = new Float32Array([-0.25, -1.0, 0.5, 1.0, 1.0, 1.0, -0.25, 0.0, -1.0, -0.5, 0.0, -0.25, 0.75, -0.5, -0.25, -0.5, 0.5, -0.25, 1.0, 1.0, 1.0, 0.5, -0.5, -0.75, -0.25, -0.75, 0.5, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.25, 1.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.75, 0.25, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 0.5, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.75, 0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.25, -0.75, 0.5, -1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, -0.5, 0.0, -0.75, 0.0, -0.75, 1.0, 0.25, -1.0, -0.75, 0.25, 0.0, 0.75, -0.25, 0.5, 0.5, -0.5, -0.5, ]);
    const array9 = new Float32Array([0.5, -0.5, 0.75, -0.75, 0.25, 0.0, 0.0, -0.75, 0.25, 0.75, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, -0.75, -0.75, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, 0.75, 0.25, 0.75, 0.0, -0.25, -1.0, 0.25, -0.75, -0.5, 0.5, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, -0.75, 0.25, -0.75, 1.0, 0.25, 0.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.75, -0.25, 1.0, 0.5, 0.5, -0.75, -0.25, 0.5, 0.75, 1.0, 0.0, 1.0, -0.25, 0.0, 0.5, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, -1.0, -0.5, -0.25, -0.25, -1.0, 0.25, -1.0, 0.25, 0.25, 0.5, 0.5, 0.25, -1.0, -1.0, -0.5, 0.25, -0.75, 0.75, -1.0, -0.25, 0.5, 1.0, -0.25, 0.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    device20.destroy();
    
    
    device30.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
    
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array10 = new Float32Array([-0.75, 1.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -0.25, -0.75, 1.0, 1.0, 0.75, 0.75, 0.0, -1.0, -0.5, 1.0, -0.75, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.75, -0.75, 1.0, 0.5, 1.0, -0.25, -0.75, 1.0, 0.5, -0.5, -0.5, -0.5, -0.75, -1.0, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 0.0, 0.75, 0.0, -0.5, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -1.0, -1.0, 1.0, -0.25, 1.0, -0.5, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, -1.0, 0.75, 1.0, -0.25, 1.0, 0.0, 1.0, 0.0, -0.75, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array11 = new Float32Array([-1.0, -1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 0.5, -0.25, -0.75, 1.0, 0.75, 0.75, -0.25, -0.5, -0.5, 0.25, -0.75, 0.75, 0.5, -0.5, -0.75, -1.0, 0.25, 0.75, 1.0, -0.75, -0.5, 0.25, -0.75, 0.0, -0.5, -0.75, 1.0, 0.75, 1.0, -0.75, -0.25, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, 0.25, -0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.5, 1.0, 0.0, 0.75, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -0.5, 0.5, 0.0, -0.75, 0.25, ]);
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
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const array12 = new Float32Array([0.0, 0.25, -0.25, 0.75, 0.75, 0.5, 1.0, -1.0, 0.5, -0.5, -0.25, -0.25, -0.75, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, -0.75, -1.0, -0.25, -0.75, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, -0.75, -1.0, -1.0, -0.5, -0.25, 0.0, -1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, -1.0, 0.5, -0.25, -0.25, -0.75, 0.5, 0.25, -1.0, -0.25, -1.0, -0.25, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, -0.25, -1.0, 0.75, -0.75, 1.0, -0.5, -0.5, -1.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.25, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    
    
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
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
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4000.setPipeline(render_pipeline401);
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device50.pushErrorScope("internal");
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device60.pushErrorScope("out-of-memory");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    query600.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture402.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    
    render_pass_encoder4000.setStencilReference(1);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    texture500.destroy();
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    device60.queue.submit([command_buffer600, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder4010.setStencilReference(1);
    
    texture401.destroy();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder4010.executeBundles([])
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.beginOcclusionQuery(0)
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer401.destroy()
    device50.pushErrorScope("out-of-memory");
    command_encoder800.insertDebugMarker("mymarker");
    render_bundle_encoder402.setPipeline(render_pipeline400);
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
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder4000.insertDebugMarker("marker");
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.queue.submit([command_buffer500, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder801.pushDebugGroup("mygroupmarker")
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    command_encoder800.pushDebugGroup("mygroupmarker")
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder800.insertDebugMarker("mymarker");
    render_pass_encoder4000.endOcclusionQuery()
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const array13 = new Float32Array([-0.75, 0.25, -1.0, -1.0, 0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 0.5, 0.75, -0.75, 0.0, 0.5, 0.0, -1.0, -0.25, -0.25, 0.5, 0.0, -1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 1.0, 0.25, -1.0, -0.25, -0.75, 0.75, -0.25, 0.75, 1.0, -0.25, 0.5, -0.75, 0.0, 0.0, 0.5, 0.0, -0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 0.0, 1.0, 0.5, 0.5, -0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 0.75, 0.5, 0.75, 0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, 0.25, -0.5, -0.25, 0.25, -0.5, -0.25, -0.25, 0.75, 0.25, ]);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4000.setBindGroup(0, bind_group400);
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

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
    command_encoder801.insertDebugMarker("mymarker");
    const array14 = new Float32Array([-0.5, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, -1.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 0.5, -0.5, 0.25, 0.25, 1.0, 0.5, 0.0, 1.0, -1.0, 0.5, -0.25, 0.25, 1.0, 0.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.75, -1.0, 0.0, 0.0, 0.75, -0.75, 0.75, -1.0, -1.0, -1.0, -0.5, -0.75, 0.75, 0.0, -0.25, 1.0, -0.5, 0.25, 0.0, -1.0, -0.5, -0.25, -0.75, -0.75, -1.0, 1.0, 0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, 1.0, -0.75, 0.5, -0.25, -0.75, 1.0, -0.25, 0.25, -1.0, 0.25, 0.5, -0.25, 0.25, 1.0, -0.25, -0.5, -1.0, 0.25, ]);
    render_bundle_encoder402.insertDebugMarker("marker");
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group402);
    
    command_encoder801.insertDebugMarker("mymarker");
    render_bundle_encoder501.insertDebugMarker("marker");
    query800.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    buffer407.destroy()
    query500.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device40.pushErrorScope("validation");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    buffer405.destroy()
    render_pass_encoder4000.setStencilReference(1);
    buffer404.destroy()
    texture400.destroy();
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    command_encoder801.insertDebugMarker("mymarker");
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture403.destroy();
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    device80.queue.writeBuffer(buffer800, 0, array12, 0, array12.length);
    render_pass_encoder4010.setStencilReference(1);
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder801.insertDebugMarker("marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_buffer802 = command_encoder802.finish();
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture601.destroy();
    render_bundle_encoder800.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder801.insertDebugMarker("marker");
    buffer600.destroy()
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
    query500.destroy()
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder800.popDebugGroup()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer408, 0, array10, 0, array10.length);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setStencilReference(1);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query400.destroy()
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    command_encoder501.insertDebugMarker("mymarker");
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer408, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer408, 0, array10, 0, array10.length);
    
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    device40.queue.writeBuffer(buffer408, 0, array13, 0, array13.length);
    render_pass_encoder4020.setPipeline(render_pipeline402);
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    
    
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    buffer800.destroy()
    render_pass_encoder4030.executeBundles([])
    
    render_bundle_encoder501.setPipeline(render_pipeline501);
    device40.queue.writeBuffer(buffer408, 0, array7, 0, array7.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer408, 0, array14, 0, array14.length);
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    device40.queue.writeBuffer(buffer408, 0, array13, 0, array13.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const array15 = new Float32Array([0.0, 0.75, 0.0, 0.5, -0.5, 0.75, 0.0, 0.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.5, -0.75, -0.25, 1.0, -0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 0.5, 0.0, -0.75, 0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.75, -0.25, 1.0, 0.5, 0.75, -0.5, -0.5, 1.0, -1.0, 0.25, 1.0, -0.5, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -0.5, 0.0, 0.0, 1.0, -0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.75, -0.75, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, -0.25, -0.25, -0.5, 0.0, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, -0.5, -0.75, 0.75, 0.75, 0.0, 1.0, 0.0, 0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.75, -1.0, -0.75, 0.25, 0.0, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
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
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    
    device40.queue.writeBuffer(buffer408, 0, array15, 0, array15.length);
    render_pass_encoder4010.setStencilReference(1);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder801.insertDebugMarker("mymarker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device90.queue.writeBuffer(buffer900, 0, array11, 0, array11.length);
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer408, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer408, 0, array14, 0, array14.length);
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer408, 0, array9, 0, array9.length);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_pass_encoder4010.setPipeline(render_pipeline404);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    buffer408.destroy()
    device90.queue.writeBuffer(buffer900, 0, array12, 0, array12.length);
    
    
    texture501.destroy();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer901, 0, array10, 0, array10.length);
    render_bundle_encoder802.pushDebugGroup("group_marker");
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    device90.queue.writeBuffer(buffer901, 0, array12, 0, array12.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder5010.setStencilReference(1);
    device90.queue.writeBuffer(buffer901, 0, array12, 0, array12.length);
    device90.queue.writeBuffer(buffer901, 0, array8, 0, array8.length);
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    
    render_pass_encoder4010.setStencilReference(1);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    device90.queue.writeBuffer(buffer901, 0, array7, 0, array7.length);
    
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device90.queue.writeBuffer(buffer901, 0, array6, 0, array6.length);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.setPipeline(render_pipeline401);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.popDebugGroup();
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
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

    render_pass_encoder4020.setBindGroup(0, bind_group403);
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
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5010.setPipeline(render_pipeline502);
    render_pass_encoder4000.popDebugGroup();
    const command_buffer900 = command_encoder900.finish();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group500);
    command_encoder801.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    const command_buffer801 = command_encoder801.finish();
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
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4030.setBindGroup(0, bind_group405);
    device90.queue.submit([command_buffer900, ]);
    device80.queue.submit([command_buffer801, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer802, ]);
}