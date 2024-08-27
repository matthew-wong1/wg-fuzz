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
    
    
    
    const array0 = new Float32Array([-0.25, 1.0, 0.5, 0.0, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, -0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 0.75, -0.25, 0.0, -1.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.75, -0.25, 0.5, 1.0, 0.25, -0.75, 0.75, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, 0.75, 0.25, 0.5, 0.0, -0.75, -0.25, -0.5, -0.75, -0.25, 1.0, -1.0, 0.75, 0.25, 0.0, -0.5, -0.75, 0.25, -0.75, 0.5, 0.75, 0.0, 0.0, 0.0, -0.5, 0.25, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array1 = new Float32Array([0.5, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, -0.5, 0.5, 0.75, -0.25, -1.0, -0.75, 0.0, -1.0, -0.5, -0.75, 0.75, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.0, 0.0, -1.0, -0.5, 0.0, 0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 0.0, -0.25, -1.0, -0.25, -0.75, 0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, -0.25, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, -0.75, 0.75, 0.5, 0.0, -0.25, -0.25, 1.0, -0.25, -0.25, -1.0, -0.75, 0.25, 0.25, -0.5, ]);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer200.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    device10.destroy();
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([0.75, -0.75, -0.25, 1.0, -1.0, 0.5, 1.0, 0.25, -0.25, 0.75, -0.25, 1.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, -0.25, 0.75, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.25, -0.5, 0.75, -0.75, -0.75, 0.75, 1.0, -0.5, -0.25, 0.75, -0.5, 0.25, -0.75, -0.75, -0.25, 1.0, 0.5, 0.25, -0.25, -0.5, -1.0, -0.25, 0.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 0.5, 0.5, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 0.5, 0.75, 0.25, -0.5, 0.0, 0.5, 0.25, 0.25, 0.0, -1.0, -0.75, -1.0, 0.0, -0.5, 0.5, 0.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, ]);
    const array3 = new Float32Array([-0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.75, 0.0, -0.25, 0.0, 0.0, -1.0, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, -0.75, 0.75, -0.75, -0.75, 0.5, -0.5, -1.0, -0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 0.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.25, 0.25, 0.75, 1.0, -0.5, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, -0.75, -0.5, -0.75, 0.25, 0.75, 0.0, 0.75, 0.0, -1.0, 0.0, -0.5, 0.5, -0.25, 0.75, -1.0, 0.75, 0.0, -1.0, -0.75, 1.0, -1.0, 0.5, -0.25, ]);
    
    const array4 = new Float32Array([-1.0, -0.25, 0.75, 0.0, 1.0, -0.25, -0.5, -0.25, -0.5, 0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, 1.0, 0.25, 1.0, 1.0, -0.5, 0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 1.0, -0.5, -1.0, -0.25, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, 0.25, -0.75, 1.0, 0.5, 1.0, -1.0, 0.25, 0.25, -0.75, -1.0, 0.0, 0.25, -1.0, -0.25, -1.0, 0.75, 0.25, 0.5, -0.75, 0.75, 1.0, -0.5, 0.5, -0.75, 0.25, -0.75, -0.5, -0.5, -1.0, -0.5, -0.25, -0.25, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.0, -0.25, 0.5, 1.0, ]);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer000.destroy()
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device40.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array5 = new Float32Array([-0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, -0.5, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, 0.25, -0.25, -1.0, 0.0, 0.25, -1.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 0.5, -0.5, 0.0, -0.75, -0.5, -0.25, 1.0, -1.0, 0.25, 0.25, 0.75, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, -1.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.0, -0.25, 0.75, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, -1.0, 0.0, -0.5, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, 0.25, -1.0, 0.25, -0.75, 0.75, 1.0, 1.0, 0.25, -0.25, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, 0.75, -1.0, -1.0, 1.0, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, -1.0, -0.5, 0.5, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder500.pushDebugGroup("mygroupmarker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.pushErrorScope("internal");
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
    const command_buffer300 = command_encoder300.finish();
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    query300.destroy()
    command_encoder500.popDebugGroup()
    const array6 = new Float32Array([-0.75, 0.0, 0.25, -0.25, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.0, -1.0, -1.0, 0.0, 0.25, -0.75, -0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 0.0, -1.0, 0.0, -0.75, -1.0, -0.5, -1.0, 0.5, -0.75, 0.75, 0.75, -0.5, 0.0, 0.5, -0.5, 0.5, 0.75, 1.0, 1.0, -0.25, -0.5, -0.75, 0.75, 1.0, -1.0, ]);
    
    buffer300.destroy()
    
    const array7 = new Float32Array([0.75, 0.5, 0.75, 0.0, 0.75, 1.0, 0.75, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -0.25, 0.25, -1.0, -0.5, -0.75, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -0.5, -0.25, 0.25, 0.25, -0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, -1.0, -1.0, -0.25, 0.75, 0.5, -0.25, -0.25, 0.0, 0.0, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, -0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -0.5, 0.25, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, -1.0, 0.0, 0.0, 0.0, -0.25, -0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, -1.0, 1.0, ]);
    device60.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.popDebugGroup();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device60.pushErrorScope("out-of-memory");
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device70.destroy();
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder500.popDebugGroup()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, 0.0, 0.75, -0.75, 0.75, 1.0, -0.5, 0.0, 1.0, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 0.0, -0.5, -1.0, 0.25, 0.25, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.0, 0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 1.0, 0.75, 1.0, 1.0, 0.5, 0.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.25, 0.0, 0.25, -0.75, 1.0, 0.75, 0.0, -1.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.75, 0.75, -0.75, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.25, 1.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.5, -0.75, 0.5, ]);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.popDebugGroup()
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
    
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    
    query500.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.destroy();
    render_bundle_encoder501.setPipeline(render_pipeline501);
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
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
    const command_buffer900 = command_encoder900.finish();
    device30.queue.submit([command_buffer300, ]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    query500.destroy()
    const command_buffer502 = command_encoder502.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    device30.pushErrorScope("internal");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.pushErrorScope("out-of-memory");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer500 = command_encoder500.finish();
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    command_encoder501.insertDebugMarker("mymarker");
    
    
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
    command_encoder501.insertDebugMarker("mymarker");
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
    
    
    texture900.destroy();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
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
    buffer502.destroy()
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    device90.queue.writeBuffer(buffer900, 0, array6, 0, array6.length);
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture503.destroy();
    device90.queue.writeBuffer(buffer900, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    device80.destroy();
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    buffer501.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    
    render_bundle_encoder502.setPipeline(render_pipeline503);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_buffer901 = command_encoder901.finish();
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5002,
            },
        ],
        occlusionQuerySet: query501
    });
    compute_pass_encoder5030.setPipeline(compute_pipeline503);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    query501.destroy()
    render_pass_encoder5040.setPipeline(render_pipeline503);
    query500.destroy()
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    compute_pass_encoder5010.popDebugGroup()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setStencilReference(1);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query502
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5060.setPipeline(render_pipeline504);
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.queue.submit([command_buffer500, ]);
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
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.pushErrorScope("validation");
    
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const texture_view9011 = texture901.createView({ label: "texture_view9011" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group501);
    
    buffer503.destroy()
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder507 = device50.createCommandEncoder({ label: "command_encoder507" });
    render_pass_encoder5010.pushDebugGroup("group_marker");
    render_pass_encoder5010.setPipeline(render_pipeline500);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device100.destroy();
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5030.pushDebugGroup("group_marker");
    render_pass_encoder5050.setPipeline(render_pipeline503);
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    buffer500.destroy()
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    const render_pass_encoder5070 = command_encoder507.beginRenderPass({
        label: "render_pass_encoder5070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    device90.queue.writeTexture({ texture: texture901 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const render_pass_encoder5051 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: query502
    });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    
    render_pass_encoder5010.setVertexBuffer(0, buffer506);
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5030.setStencilReference(1);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5070.insertDebugMarker("marker");
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder5070.setPipeline(render_pipeline503);
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pass_encoder5071 = command_encoder507.beginRenderPass({
        label: "render_pass_encoder5071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: query501
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5031.setPipeline(render_pipeline501);
    query502.destroy()
    
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
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
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_pass_encoder5060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5071.setStencilReference(1);
    
    buffer506.destroy()
    render_pass_encoder5060.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_pass_encoder5010.pushDebugGroup("group_marker");
    
    render_pass_encoder5071.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    render_pass_encoder5051.insertDebugMarker("marker");
    texture501.destroy();
    
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    buffer503.destroy()
    render_pass_encoder5031.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5071.setPipeline(render_pipeline502);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group503);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder5050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5050.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_pass_encoder5060.insertDebugMarker("marker");
    query500.destroy()
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
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
    const render_pipeline906 = device90.createRenderPipeline({
        label: "render_pipeline906",
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
    render_pass_encoder5030.setPipeline(render_pipeline500);
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5070.setStencilReference(1);
    render_pass_encoder5051.setPipeline(render_pipeline500);
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group504);
    
    render_pass_encoder5040.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view9021 = texture902.createView({ label: "texture_view9021" });
    const texture_view9012 = texture901.createView({ label: "texture_view9012" });
    render_pass_encoder5070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5050.setBindGroup(0, bind_group505);
    render_pass_encoder5051.pushDebugGroup("group_marker");
    buffer5011.destroy()
    {
        await buffer505.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer505.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer505.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer503,
        0
    )
    
    buffer5010.destroy()
    render_pass_encoder5051.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture500.destroy();
    const render_pipeline907 = device90.createRenderPipeline({
        label: "render_pipeline907",
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
    
    query502.destroy()
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device50.queue.writeBuffer(buffer504, 0, array7, 0, array7.length);
    compute_pass_encoder5030.insertDebugMarker("marker")
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder5072 = command_encoder507.beginRenderPass({
        label: "render_pass_encoder5072",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder5072.setPipeline(render_pipeline505);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder5060.beginOcclusionQuery(0)
    render_pass_encoder5030.endOcclusionQuery()
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5011.setPipeline(render_pipeline504);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    render_pass_encoder5071.setBindGroup(0, bind_group506);
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const texture_view9030 = texture903.createView({ label: "texture_view9030" });
    const render_pass_encoder5061 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_pass_encoder5061.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5010.drawIndirect(buffer5014, 0);
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    render_pass_encoder5072.setBindGroup(0, bind_group507);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5050.setVertexBuffer(0, buffer504);
    render_pass_encoder5030.popDebugGroup();
    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5018,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group508);
    render_pass_encoder5072.setVertexBuffer(0, buffer506);
    render_pass_encoder5072.setIndexBuffer(buffer5017, "uint16");
    render_pass_encoder5060.endOcclusionQuery()
    render_pass_encoder5071.setVertexBuffer(0, buffer5012);
    render_pass_encoder5061.setPipeline(render_pipeline502);
    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5020,
                },
            },
        ],
    });

    render_pass_encoder5051.setBindGroup(0, bind_group509);
    render_pass_encoder5050.drawIndirect(buffer505, 0);
    render_pass_encoder5072.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5051.setVertexBuffer(0, buffer509);
    render_pass_encoder5071.drawIndirect(buffer5015, 0);
    render_pass_encoder5072.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5071.draw(3);
    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5010 = device50.createBindGroup({
        label: "bind_group5010",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5022,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group5010);
    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5024 = device50.createBuffer({
        label: "buffer5024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5011 = device50.createBindGroup({
        label: "bind_group5011",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5024,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5011);
    const buffer5025 = device50.createBuffer({
        label: "buffer5025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5026 = device50.createBuffer({
        label: "buffer5026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5012 = device50.createBindGroup({
        label: "bind_group5012",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5026,
                },
            },
        ],
    });

    render_pass_encoder5070.setBindGroup(0, bind_group5012);
    const buffer5027 = device50.createBuffer({
        label: "buffer5027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5028 = device50.createBuffer({
        label: "buffer5028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5013 = device50.createBindGroup({
        label: "bind_group5013",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5028,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group5013);
    compute_pass_encoder5030.dispatchWorkgroups(100);
    render_pass_encoder5040.setVertexBuffer(0, buffer5027);
    render_pass_encoder5051.drawIndirect(buffer5023, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5070.setVertexBuffer(0, buffer5014);
    render_pass_encoder5040.draw(3);
    render_pass_encoder5050.end();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5070.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5072.draw(3);
    render_pass_encoder5070.drawIndexedIndirect(buffer5014, 0);
    command_encoder501.popDebugGroup()
    render_pass_encoder5011.setVertexBuffer(0, buffer508);
    render_pass_encoder5072.end();
    render_pass_encoder5072.drawIndirect(buffer5013, 0);
    render_pass_encoder5050.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5051.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5011.drawIndirect(buffer508, 0);
    render_pass_encoder5031.setVertexBuffer(0, buffer5025);
    render_pass_encoder5040.setIndexBuffer(buffer5014, "uint16");
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5031.drawIndirect(buffer5017, 0);
    const command_buffer506 = command_encoder506.finish();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5031.end();
    const command_buffer507 = command_encoder507.finish();
    render_pass_encoder5040.end();
    device90.queue.submit([command_buffer900, command_buffer901, ]);
    render_pass_encoder5070.draw(3);
    render_pass_encoder5010.end();
    const buffer5029 = device50.createBuffer({
        label: "buffer5029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5030 = device50.createBuffer({
        label: "buffer5030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5014 = device50.createBindGroup({
        label: "bind_group5014",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5030,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group5014);
    render_pass_encoder5051.drawIndirect(buffer5022, 0);
    render_pass_encoder5031.drawIndirect(buffer500, 0);
    const buffer5031 = device50.createBuffer({
        label: "buffer5031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5032 = device50.createBuffer({
        label: "buffer5032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5015 = device50.createBindGroup({
        label: "bind_group5015",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5032,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5015);
    render_pass_encoder5030.setVertexBuffer(0, buffer5016);
    render_pass_encoder5071.end();
    render_pass_encoder5011.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer5010, "uint16");
    compute_pass_encoder5010.end();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer506, command_buffer507, ]);
    render_pass_encoder5072.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5011.end();
    render_pass_encoder5060.popDebugGroup();
    compute_pass_encoder5030.dispatchWorkgroups(100);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5030.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder5040.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder5070.draw(3);
    render_pass_encoder5031.setIndexBuffer(buffer5029, "uint16");
    render_pass_encoder5051.endOcclusionQuery()
    const buffer5033 = device50.createBuffer({
        label: "buffer5033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5034 = device50.createBuffer({
        label: "buffer5034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5016 = device50.createBindGroup({
        label: "bind_group5016",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5034,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5016);
    const buffer5035 = device50.createBuffer({
        label: "buffer5035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5036 = device50.createBuffer({
        label: "buffer5036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5017 = device50.createBindGroup({
        label: "bind_group5017",
        layout: render_pipeline504.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5036,
                },
            },
        ],
    });

    render_pass_encoder5060.setBindGroup(0, bind_group5017);
    render_pass_encoder5060.setVertexBuffer(0, buffer5015);
    const buffer5037 = device50.createBuffer({
        label: "buffer5037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5038 = device50.createBuffer({
        label: "buffer5038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group5018 = device50.createBindGroup({
        label: "bind_group5018",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5038,
                },
            },
        ],
    });

    render_pass_encoder5061.setBindGroup(0, bind_group5018);
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5061.setVertexBuffer(0, buffer5035);
    render_pass_encoder5061.setIndexBuffer(buffer5013, "uint16");
    render_pass_encoder5061.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5060.setIndexBuffer(buffer5037, "uint16");
    render_pass_encoder5061.draw(3);
    render_pass_encoder5060.draw(3);
    render_pass_encoder5051.end();
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder5072.drawIndexedIndirect(buffer5038, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder5060.drawIndirect(buffer509, 0);
    render_pass_encoder5040.drawIndexed(3);
    render_pass_encoder5030.drawIndirect(buffer501, 0);
    render_pass_encoder5072.drawIndirect(buffer5011, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5060.drawIndexedIndirect(buffer506, 0);
    device90.queue.submit([command_buffer900, ]);
    const buffer5039 = device50.createBuffer({
        label: "buffer5039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5040 = device50.createBuffer({
        label: "buffer5040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group5019 = device50.createBindGroup({
        label: "bind_group5019",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5040,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group5019);
    render_pass_encoder5010.drawIndirect(buffer5015, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5031.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder5070.drawIndirect(buffer5027, 0);
    render_pass_encoder5050.drawIndirect(buffer500, 0);
    render_pass_encoder5060.end();
    render_pass_encoder5061.draw(3);
    render_pass_encoder5061.end();
    render_pass_encoder5060.endOcclusionQuery()
    render_pass_encoder5051.draw(3);
    render_pass_encoder5061.drawIndexed(3);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5070.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5010.setIndexBuffer(buffer5036, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5010.end();
    render_pass_encoder5010.drawIndirect(buffer5040, 0);
    render_pass_encoder5061.end();
    device50.queue.submit([]);
    compute_pass_encoder5030.end();
    render_pass_encoder5010.setIndexBuffer(buffer5024, "uint16");
    render_pass_encoder5011.end();
    const command_buffer505 = command_encoder505.finish();
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5072.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5061.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5070.setIndexBuffer(buffer5010, "uint16");
    device90.queue.submit([]);
    device90.queue.submit([command_buffer901, ]);
    render_pass_encoder5061.drawIndirect(buffer5030, 0);
    render_pass_encoder5030.endOcclusionQuery()
    device90.queue.submit([]);
    render_pass_encoder5011.end();
    render_pass_encoder5040.drawIndirect(buffer5033, 0);
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer504, command_buffer506, ]);
    render_pass_encoder5070.end();
    render_pass_encoder5061.setIndexBuffer(buffer5031, "uint16");
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5071.drawIndirect(buffer5032, 0);
    render_pass_encoder5011.setIndexBuffer(buffer5015, "uint16");
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder5061.setIndexBuffer(buffer5021, "uint16");
    render_pass_encoder5070.setIndexBuffer(buffer505, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder5031.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5031.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5051.drawIndirect(buffer5022, 0);
    render_pass_encoder5070.drawIndirect(buffer5039, 0);
    render_pass_encoder5011.drawIndirect(buffer5031, 0);
    device50.queue.submit([command_buffer501, command_buffer505, ]);
    render_pass_encoder5070.drawIndexedIndirect(buffer5020, 0);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder5030.drawIndexedIndirect(buffer5036, 0);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder5010.drawIndexed(3);
    device110.queue.submit([]);
    compute_pass_encoder5030.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer503, command_buffer507, ]);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5030.drawIndexedIndirect(buffer5024, 0);
    render_pass_encoder5061.drawIndexedIndirect(buffer5017, 0);
    device50.queue.submit([command_buffer506, ]);
    render_pass_encoder5011.end();
    render_pass_encoder5071.popDebugGroup();
    render_pass_encoder5072.drawIndexed(3);
    render_pass_encoder5010.drawIndirect(buffer506, 0);
    render_pass_encoder5030.end();
    render_pass_encoder5060.drawIndirect(buffer5027, 0);
    render_pass_encoder5030.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5050.setIndexBuffer(buffer5030, "uint16");
    render_pass_encoder5070.drawIndirect(buffer502, 0);
    render_pass_encoder5070.drawIndirect(buffer5027, 0);
    device50.queue.submit([command_buffer503, ]);
    device110.queue.submit([]);
    render_pass_encoder5061.setIndexBuffer(buffer5011, "uint16");
    render_pass_encoder5070.draw(3);
    render_pass_encoder5031.drawIndirect(buffer5024, 0);
    render_pass_encoder5072.drawIndirect(buffer5033, 0);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder5010.setIndexBuffer(buffer5018, "uint16");
    render_pass_encoder5070.setIndexBuffer(buffer5030, "uint16");
    compute_pass_encoder5030.end();
    render_pass_encoder5010.drawIndexedIndirect(buffer5033, 0);
    render_pass_encoder5051.drawIndirect(buffer509, 0);
    render_pass_encoder5051.drawIndirect(buffer5019, 0);
    render_pass_encoder5072.drawIndirect(buffer5035, 0);
    render_pass_encoder5060.end();
    render_pass_encoder5061.drawIndexedIndirect(buffer509, 0);
    render_pass_encoder5061.drawIndirect(buffer5026, 0);
    compute_pass_encoder5030.popDebugGroup()
    render_pass_encoder5051.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5011.drawIndirect(buffer5037, 0);
    device50.queue.submit([command_buffer506, ]);
    render_pass_encoder5031.drawIndirect(buffer507, 0);
    render_pass_encoder5030.drawIndexed(3);
    render_pass_encoder5031.setIndexBuffer(buffer5037, "uint16");
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5071.end();
    render_pass_encoder5071.end();
    render_pass_encoder5040.end();
    const uint32_5030 = new Uint32Array(3);

    uint32_5030[0] = 100;
    uint32_5030[1] = 1;
    uint32_5030[2] = 1;

    const buffer5041 = device50.createBuffer({
        label: "buffer5041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5041, 0, uint32_5030, 0, uint32_5030.length);

    compute_pass_encoder5030.dispatchWorkgroupsIndirect(buffer5041, 0);
    render_pass_encoder5072.drawIndirect(buffer5012, 0);
    render_pass_encoder5011.end();
    render_pass_encoder5061.drawIndexed(3);
    render_pass_encoder5050.popDebugGroup();
    render_pass_encoder5040.endOcclusionQuery()
    render_pass_encoder5010.drawIndirect(buffer5019, 0);
    compute_pass_encoder5030.end();
    render_pass_encoder5011.drawIndexedIndirect(buffer5035, 0);
    render_pass_encoder5031.drawIndirect(buffer503, 0);
    render_pass_encoder5071.setIndexBuffer(buffer5020, "uint16");
    render_pass_encoder5070.drawIndirect(buffer5041, 0);
    render_pass_encoder5061.setIndexBuffer(buffer5013, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5051.popDebugGroup();
    render_pass_encoder5050.drawIndexedIndirect(buffer5041, 0);
    device90.queue.submit([command_buffer900, ]);
    render_pass_encoder5051.drawIndirect(buffer505, 0);
    render_pass_encoder5010.popDebugGroup();
    device110.queue.submit([]);
    render_pass_encoder5030.end();
    render_pass_encoder5060.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5031.drawIndirect(buffer5013, 0);
    render_pass_encoder5011.drawIndirect(buffer5039, 0);
    render_pass_encoder5070.drawIndirect(buffer500, 0);
    render_pass_encoder5040.popDebugGroup();
    device110.queue.submit([]);
    render_pass_encoder5010.drawIndirect(buffer504, 0);
    render_pass_encoder5011.end();
    render_pass_encoder5040.setIndexBuffer(buffer5016, "uint16");
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer508, 0);
    render_pass_encoder5071.drawIndirect(buffer5039, 0);
    device50.queue.submit([command_buffer502, command_buffer507, ]);
    render_pass_encoder5031.end();
    render_pass_encoder5050.drawIndirect(buffer501, 0);
    device50.queue.submit([command_buffer502, command_buffer504, ]);
    render_pass_encoder5030.drawIndexedIndirect(buffer5037, 0);
    compute_pass_encoder5010.end();
    render_pass_encoder5050.drawIndexedIndirect(buffer5031, 0);
    render_pass_encoder5051.drawIndexedIndirect(buffer5037, 0);
    render_pass_encoder5072.end();
    render_pass_encoder5061.popDebugGroup();
    device50.queue.submit([command_buffer500, command_buffer507, ]);
    render_pass_encoder5031.setIndexBuffer(buffer5025, "uint16");
    compute_pass_encoder5010.end();
    device50.queue.submit([command_buffer504, ]);
    render_pass_encoder5061.draw(3);
    render_pass_encoder5040.setIndexBuffer(buffer5037, "uint16");
}