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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([0.5, 0.0, -0.25, 1.0, -1.0, 0.75, 0.0, 0.25, 0.5, 0.25, -0.5, 0.5, 0.0, -0.5, -0.25, 0.0, 0.5, 0.0, 0.25, -1.0, 1.0, 0.5, -0.75, 0.75, 0.75, -1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, -0.5, 0.25, 0.25, -1.0, 1.0, 0.0, -0.75, 0.75, 1.0, -0.75, 1.0, 0.75, 0.0, -1.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.5, -0.5, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 0.25, 0.75, 0.0, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, 1.0, 0.75, 1.0, 1.0, -0.5, 0.25, -0.25, 0.5, -0.25, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, -1.0, -1.0, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.destroy();
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.destroy();
    
    device00.destroy();
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.destroy();
    
    
    const array1 = new Float32Array([-0.25, 0.75, -0.5, 0.75, -0.75, 0.5, 1.0, -0.75, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 1.0, -1.0, -0.5, 0.0, -1.0, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.5, 0.75, 0.0, -0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, 0.5, 0.5, 0.5, -0.5, 0.25, 0.75, -0.5, 0.75, -0.75, -0.75, 1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, 0.75, 0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.75, 1.0, 0.75, 1.0, 0.5, 0.5, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, 0.75, 0.25, 0.5, -0.5, -0.5, 1.0, ]);
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.0, 0.5, 0.5, 0.0, 1.0, -0.75, -0.5, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, -1.0, 0.0, -1.0, 1.0, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, -0.75, 0.75, -0.25, -0.75, 0.25, -0.75, 0.75, 0.75, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.5, -1.0, 0.75, 0.5, 0.5, 0.0, 1.0, 0.75, 0.75, -0.75, 1.0, 0.75, 0.5, -0.25, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.0, -0.5, 1.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, 0.25, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, -0.5, -0.5, -1.0, -1.0, -0.25, -1.0, -0.75, 0.25, 0.5, -1.0, -0.25, ]);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const array3 = new Float32Array([-1.0, -0.75, -0.75, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.0, -1.0, 0.0, 0.75, 0.75, -0.25, 0.25, -0.25, 0.25, 0.0, -0.25, 0.5, -0.5, -0.75, -1.0, 1.0, 0.5, 0.75, 0.75, -1.0, -0.25, 0.75, 0.75, -0.25, 0.25, -0.25, -0.25, 0.25, -1.0, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.75, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, -0.25, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 0.0, -0.75, 0.75, 0.25, 0.0, 0.75, -1.0, 0.25, 0.0, 0.75, -0.5, -0.5, 0.75, 0.0, 1.0, -0.5, -0.75, -0.75, 0.0, -1.0, 0.25, 1.0, 0.5, 0.0, 0.5, -0.75, 0.75, 1.0, -1.0, -1.0, 1.0, -1.0, 0.25, -0.5, ]);
    
    
    const array4 = new Float32Array([0.25, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, 0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.75, -0.5, -0.75, 1.0, -0.75, -0.75, 0.5, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, -0.25, -1.0, 0.75, 0.5, 0.5, 0.25, -1.0, -0.5, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 0.75, -0.5, 1.0, 0.5, 0.25, 0.75, -0.25, 1.0, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, -0.25, -0.5, -0.5, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, 1.0, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, -0.75, -0.25, 1.0, ]);
    const array5 = new Float32Array([1.0, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, 0.0, -0.5, 0.5, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.75, 1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.0, -0.25, -1.0, -1.0, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.5, -0.5, 0.0, 0.25, -1.0, 0.0, -0.25, 1.0, -0.75, -0.5, -0.25, -0.25, 1.0, -0.5, -1.0, -0.75, -0.5, -0.25, -0.75, 0.5, -1.0, -0.5, -0.5, -0.25, 0.5, 1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.0, -0.5, 1.0, -0.5, 1.0, -0.5, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 0.75, 0.5, 1.0, -1.0, -0.5, 0.75, 0.0, -0.5, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    query600.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
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
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    command_encoder601.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    texture600.destroy();
    query600.destroy()
    
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder6000.popDebugGroup()
    query602.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder601.popDebugGroup()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    command_encoder601.pushDebugGroup("mygroupmarker")
    query601.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query600.destroy()
    const array6 = new Float32Array([0.25, -0.75, -0.5, 1.0, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, -0.5, -0.75, 0.5, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.25, -1.0, 0.0, 1.0, 1.0, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, -1.0, 0.25, -0.25, 1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, 0.5, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 1.0, 0.0, 0.75, 0.0, 0.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.25, -0.75, -1.0, 0.75, -0.25, -0.5, 0.5, -0.25, -0.75, 0.25, 1.0, -1.0, ]);
    const array7 = new Float32Array([1.0, 0.5, 0.5, -0.5, 0.25, 1.0, 0.25, -1.0, 0.75, 0.0, -1.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, -0.5, -1.0, 0.0, -0.75, 0.0, 0.5, -1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, 0.25, -0.25, 0.75, 0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 0.5, 0.0, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.25, 1.0, -0.75, -1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, -0.5, 1.0, -0.5, -0.5, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 0.0, -0.5, 0.0, 0.5, ]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const array8 = new Float32Array([-0.5, 0.0, 1.0, 0.25, 0.0, -0.25, 1.0, 1.0, -0.5, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, -1.0, 0.0, 0.0, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, 0.25, -0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.0, -1.0, 0.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.25, 0.25, -0.75, -0.5, 0.75, -0.5, 1.0, -0.25, 1.0, 0.5, -0.5, 1.0, 0.5, -1.0, -1.0, -0.25, 0.25, 0.75, 0.25, -0.75, -0.25, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, 1.0, 0.5, 0.25, -0.75, 0.5, -0.25, -0.25, 0.0, -0.5, 0.5, -1.0, -0.5, 0.5, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, -0.25, -0.75, -1.0, -0.75, 0.5, ]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.25, 1.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, 0.25, 0.0, -0.25, 0.0, 0.75, 1.0, 1.0, -0.75, -0.25, 0.25, -0.5, -0.75, 0.75, -1.0, 0.0, 0.75, -0.5, 1.0, 0.25, -1.0, 1.0, -0.5, 0.0, 0.75, 0.0, 1.0, 0.0, -0.25, 0.5, 0.5, -0.25, -0.5, 1.0, 0.25, -0.25, 0.75, 0.75, -1.0, -1.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.25, -0.75, -0.25, -0.5, -0.25, 0.0, -0.25, 1.0, 1.0, -0.25, 0.75, -1.0, -0.5, -0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.5, 0.25, -1.0, -0.25, 0.5, -1.0, -0.75, 0.75, -0.75, ]);
    const command_buffer602 = command_encoder602.finish();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder6030.insertDebugMarker("marker")
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    command_encoder601.insertDebugMarker("mymarker");
    device60.queue.submit([command_buffer602, ]);
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder6040.insertDebugMarker("marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-0.75, -1.0, 0.25, -1.0, 0.5, -0.75, -1.0, 0.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, 0.0, -0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -1.0, -1.0, -0.75, -0.5, 0.0, -0.25, -0.75, 0.5, -0.75, -0.75, -1.0, 0.5, -0.75, -1.0, 0.0, -0.5, 0.5, -1.0, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.75, -1.0, -0.75, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, 0.0, 0.25, -1.0, -0.5, 0.25, -0.25, 1.0, 0.25, -1.0, -0.25, 0.75, -0.75, 0.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, 1.0, -0.25, -0.75, 1.0, 0.75, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    query602.destroy()
    command_encoder605.insertDebugMarker("mymarker");
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    render_bundle_encoder601.insertDebugMarker("marker");
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    
    
    
    
    
    
    
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    command_encoder606.insertDebugMarker("mymarker");
    
    compute_pass_encoder6050.insertDebugMarker("marker")
    command_encoder606.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6050.pushDebugGroup("group_marker")
    const render_pass_encoder6060 = command_encoder606.beginRenderPass({
        label: "render_pass_encoder6060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query602
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    texture601.destroy();
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    
    
    
    render_pass_encoder6060.pushDebugGroup("group_marker");
    render_pass_encoder6060.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const query608 = device60.createQuerySet({
        label: "query608",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query605.destroy()
    
    query608.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    query607.destroy()
    const array11 = new Float32Array([0.0, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, -0.5, 0.75, 1.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.25, -0.5, -1.0, -0.25, 0.0, -0.5, 0.0, 0.5, -0.75, 0.75, 0.25, -0.25, 0.75, 0.5, -0.75, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, 0.5, -0.25, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.5, 0.25, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.5, 1.0, -0.75, -0.75, 0.5, -0.75, -1.0, -0.25, 0.75, 0.5, -0.5, 0.25, 0.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 0.5, -0.75, -1.0, -0.75, 0.25, -1.0, -0.25, 0.5, 0.5, -1.0, 0.0, -1.0, 0.75, 1.0, -0.25, 0.75, -1.0, -0.5, -1.0, -1.0, 0.5, ]);
    
    query608.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    
    render_pass_encoder6060.setStencilReference(1);
    query601.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    const render_pass_encoder6070 = command_encoder607.beginRenderPass({
        label: "render_pass_encoder6070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query608
    });
    render_pass_encoder6070.setPipeline(render_pipeline605);
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    query608.destroy()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    
    render_pass_encoder6060.setPipeline(render_pipeline605);
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    
    render_pass_encoder6070.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    
    
    compute_pass_encoder6040.insertDebugMarker("marker")
    render_bundle_encoder601.insertDebugMarker("marker");
    
    query602.destroy()
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    const render_pass_encoder6080 = command_encoder608.beginRenderPass({
        label: "render_pass_encoder6080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query604
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder6060.setStencilReference(1);
    
    render_pass_encoder6080.insertDebugMarker("marker");
    render_pass_encoder6080.setPipeline(render_pipeline604);
    query700.destroy()
    render_pass_encoder6060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6060.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    const command_encoder609 = device60.createCommandEncoder({ label: "command_encoder609" });
    const render_pass_encoder6090 = command_encoder609.beginRenderPass({
        label: "render_pass_encoder6090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    render_pass_encoder6070.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_pass_encoder6080.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    render_pass_encoder6090.setPipeline(render_pipeline602);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    render_pass_encoder6090.insertDebugMarker("marker");
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    render_pass_encoder6060.setStencilReference(1);
    
    
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
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    render_pass_encoder6070.setStencilReference(1);
    compute_pass_encoder6010.popDebugGroup()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query700.destroy()
    query607.destroy()
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder601.popDebugGroup();
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    query604.destroy()
    query601.destroy()
    compute_pass_encoder6050.insertDebugMarker("marker")
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query608.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    device70.destroy();
    
    render_pass_encoder6090.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_pass_encoder6060.setStencilReference(1);
    render_pass_encoder6080.pushDebugGroup("group_marker");
    render_pass_encoder6090.setStencilReference(1);
    render_pass_encoder6070.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    query600.destroy()
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
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    query607.destroy()
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    query600.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_pass_encoder6070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query604.destroy()
    render_pass_encoder6070.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    query602.destroy()
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6040.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    query603.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_pass_encoder6060.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device100.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    query603.destroy()
    texture602.destroy();
    render_pass_encoder6090.insertDebugMarker("marker");
    
    render_pass_encoder6090.pushDebugGroup("group_marker");
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    
    query607.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    render_pass_encoder6060.popDebugGroup();
    query601.destroy()
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder6060.pushDebugGroup("group_marker");
    
    query606.destroy()
    const command_encoder6010 = device60.createCommandEncoder({ label: "command_encoder6010" });
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
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_pass_encoder60100 = command_encoder6010.beginRenderPass({
        label: "render_pass_encoder60100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query600
    });
    query605.destroy()
    render_pass_encoder6080.setStencilReference(1);
    
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder6090.popDebugGroup();
    compute_pass_encoder6050.insertDebugMarker("marker")
    
    render_pass_encoder6060.popDebugGroup();
    render_pass_encoder6070.pushDebugGroup("group_marker");
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder6080.insertDebugMarker("marker");
    query608.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder6060.setStencilReference(1);
    render_pass_encoder6080.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    
    query608.destroy()
    render_pass_encoder6080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6070.setStencilReference(1);
    render_pass_encoder6080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module606,
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
            module: shader_module606,
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
    query601.destroy()
    render_pass_encoder60100.pushDebugGroup("group_marker");
    const command_encoder6011 = device60.createCommandEncoder({ label: "command_encoder6011" });
    const array12 = new Float32Array([-0.25, 0.5, 0.5, -0.25, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, -0.5, 0.75, 1.0, 1.0, 0.25, 1.0, -0.5, -0.5, -0.25, -0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.75, -0.75, -0.75, -1.0, 0.5, 0.25, 0.25, 0.5, 0.25, 0.5, -1.0, 0.25, 1.0, 0.0, -0.25, 0.25, -0.5, -0.5, -0.5, -0.5, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.0, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, 0.25, 1.0, -0.5, -0.75, 0.25, -0.25, 0.5, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, ]);
    render_pass_encoder6070.popDebugGroup();
    command_encoder6011.pushDebugGroup("mygroupmarker")
    
    query606.destroy()
    const query609 = device60.createQuerySet({
        label: "query609",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder60110 = command_encoder6011.beginRenderPass({
        label: "render_pass_encoder60110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder60100.setPipeline(render_pipeline604);
    compute_pass_encoder6050.insertDebugMarker("marker")
    query600.destroy()
    render_pass_encoder60110.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_pass_encoder60110.setPipeline(render_pipeline609);
    render_pass_encoder60100.popDebugGroup();
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    render_pass_encoder60110.setStencilReference(1);
    const render_pipeline6012 = device60.createRenderPipeline({
        label: "render_pipeline6012",
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
    render_pass_encoder6060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_pipeline6013 = device60.createRenderPipeline({
        label: "render_pipeline6013",
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
    render_pass_encoder6090.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    query602.destroy()
    render_pass_encoder6090.setStencilReference(1);
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    render_pass_encoder60110.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    
    query605.destroy()
    query603.destroy()
    render_pass_encoder6060.pushDebugGroup("group_marker");
    
    
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    render_pass_encoder60100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6090.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_pass_encoder6080.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    render_pass_encoder6080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder60100.pushDebugGroup("group_marker");
    
    
    render_pass_encoder6090.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    const render_pipeline6014 = device60.createRenderPipeline({
        label: "render_pipeline6014",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6080.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const query6010 = device60.createQuerySet({
        label: "query6010",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    render_pass_encoder6090.pushDebugGroup("group_marker");
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const array13 = new Float32Array([0.0, -0.25, 0.5, 0.0, 0.0, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 0.5, -1.0, -0.5, -0.25, 1.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.75, -0.25, -0.75, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, -0.25, -0.25, 0.25, 0.25, 0.75, 0.5, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 0.75, 0.5, -0.75, 0.0, -0.5, -0.75, -0.75, 0.75, 0.75, -0.75, 0.25, 0.0, -0.5, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, -0.75, 1.0, -0.75, -0.5, 0.75, 0.0, 0.75, -0.75, -0.25, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.75, 0.75, -0.5, ]);
    render_pass_encoder6060.setStencilReference(1);
    render_pass_encoder6090.setScissorRect(0, 0, texture602.width / 2, texture602.height / 2);
    const query6011 = device60.createQuerySet({
        label: "query6011",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline6015 = device60.createRenderPipeline({
        label: "render_pipeline6015",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    compute_pass_encoder6050.insertDebugMarker("marker")
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    compute_pass_encoder6050.insertDebugMarker("marker")
    render_pass_encoder6080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query6011.destroy()
    
    render_pass_encoder60100.popDebugGroup();
    render_pass_encoder6080.popDebugGroup();
    
    device90.destroy();
    
    render_pass_encoder6060.insertDebugMarker("marker");
    render_pass_encoder6060.popDebugGroup();
    
    render_pass_encoder60110.insertDebugMarker("marker");
    
    render_pass_encoder6090.popDebugGroup();
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder6080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6060.pushDebugGroup("group_marker");
    
    
    query601.destroy()
    render_pass_encoder60110.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    query604.destroy()
    
    
    
    
    
    render_pass_encoder6080.setStencilReference(1);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder6030.popDebugGroup()
    
    const render_pipeline6016 = device60.createRenderPipeline({
        label: "render_pipeline6016",
        vertex: {
            module: shader_module6010,
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
            module: shader_module6010,
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
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder6070.pushDebugGroup("group_marker");
    query6011.destroy()
    compute_pass_encoder6040.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6070.popDebugGroup();
    render_pass_encoder6060.popDebugGroup();
    compute_pass_encoder6050.popDebugGroup()
}