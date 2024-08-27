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
    const array0 = new Float32Array([-0.25, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, 0.5, -1.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.5, -0.5, 0.5, 0.0, 0.75, 0.75, 1.0, -0.5, -0.75, -1.0, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.5, 0.5, -1.0, 0.0, 0.5, -0.5, 0.25, 0.25, -1.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.25, -1.0, 0.75, 0.25, -0.75, -0.25, -0.75, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, 0.25, 0.0, 0.5, -0.25, -0.5, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.5, 0.25, -0.25, 0.0, -0.75, 0.75, 1.0, 0.25, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture100.destroy();
    
    device10.destroy();
    
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture201.destroy();
    
    
    device20.destroy();
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.75, -0.25, 0.0, -0.25, -0.5, 0.0, -0.75, -0.5, 0.75, 0.0, 0.5, -0.25, 0.25, 0.5, 0.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.25, 1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.0, -0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.75, 0.5, 0.0, -0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 1.0, 0.25, 0.25, 1.0, 1.0, 0.25, 0.5, -0.75, 1.0, -0.25, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, 1.0, -1.0, -0.75, -1.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 0.75, 0.75, -0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 1.0, 1.0, 0.75, 0.0, 0.5, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([1.0, -0.25, 0.5, -1.0, -0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.75, 1.0, 0.75, 0.5, 0.75, -0.75, 1.0, 0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 1.0, -1.0, 0.75, -1.0, -0.25, 1.0, 0.5, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, -1.0, 0.75, 0.5, -1.0, 0.0, 0.25, -0.25, 0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, -1.0, 0.0, -1.0, 1.0, -0.25, 0.75, -0.75, -0.75, 0.25, -1.0, 0.5, 0.75, -0.75, 0.5, -1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 1.0, -0.5, 0.25, 0.5, -0.75, -0.5, -0.5, -1.0, 0.0, -1.0, -0.25, -0.5, 0.0, -1.0, 0.5, 0.0, 1.0, 0.25, 0.0, 0.0, -0.25, 0.5, -0.25, -0.75, 0.25, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const array3 = new Float32Array([0.75, -0.5, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 1.0, -0.75, 0.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, 1.0, 1.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.25, 0.5, 0.0, 0.0, 0.5, -0.75, 0.75, -0.25, -0.75, -1.0, 1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 0.75, 0.0, 0.0, -0.25, 1.0, 1.0, 1.0, 1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, 0.5, -0.5, -0.5, -0.5, 0.0, 0.5, 0.0, 0.0, 0.0, -0.25, 0.25, 0.0, -1.0, 0.5, 1.0, 0.0, 1.0, 1.0, 0.0, -0.5, 0.5, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.destroy();
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([0.25, 0.75, 0.25, 0.75, -0.5, 0.0, -1.0, -0.5, 0.75, 1.0, -0.25, -0.5, 0.25, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, -0.5, 0.5, 0.25, 0.0, -1.0, 0.75, -0.5, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, 0.25, -0.5, -0.75, -1.0, -0.5, -0.5, 1.0, 0.25, 1.0, 0.5, -0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 1.0, -0.25, -1.0, 0.25, -0.25, 0.75, -0.75, -0.25, 1.0, 0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.25, -0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, 0.75, -0.75, 0.0, -0.25, 0.25, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 0.5, 0.25, -0.75, -0.75, -0.5, -0.75, -0.5, ]);
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const array5 = new Float32Array([-1.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.5, -1.0, 0.25, -0.5, 0.5, -0.75, -1.0, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.75, 0.25, -1.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, -0.5, -1.0, 0.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, 0.5, -0.5, -0.25, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -1.0, 0.0, -0.25, 0.25, -1.0, 0.75, 0.75, 0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 0.25, -0.25, 0.25, 0.75, -1.0, ]);
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    buffer500.destroy()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_bundle_encoder501.setPipeline(render_pipeline500);
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
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
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    device50.pushErrorScope("internal");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder5000.popDebugGroup()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    const array6 = new Float32Array([-0.25, -0.75, 0.0, -0.5, 0.25, -1.0, -0.5, -1.0, 0.75, 0.5, -0.25, -0.25, -0.75, 0.25, -0.25, -1.0, -0.25, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -0.25, 0.25, -0.25, 0.75, -0.5, 0.0, 0.75, -0.75, -0.5, 0.0, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, -1.0, 0.0, 1.0, 0.75, 1.0, 0.75, -1.0, 0.0, -0.75, 0.25, -0.25, -0.25, -0.75, -1.0, 0.25, 0.75, 1.0, 0.25, -0.25, 1.0, -1.0, -0.25, 0.0, 0.75, 1.0, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, 0.75, 0.75, -0.25, 0.5, 0.0, 0.0, -0.75, -1.0, 0.0, 0.0, 0.25, 0.0, -1.0, 0.0, -0.25, -1.0, 0.75, 1.0, -0.5, 0.75, 1.0, -0.25, -0.5, 0.0, -1.0, -1.0, -0.75, ]);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
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
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    buffer503.destroy()
    render_bundle_encoder502.setPipeline(render_pipeline500);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("out-of-memory");
    
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    texture502.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    texture501.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder5000.popDebugGroup()
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer001.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device00.queue.submit([command_buffer000, ]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    query500.destroy()
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer502.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5020.executeBundles([])
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder5020.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.setPipeline(render_pipeline502);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout507,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const command_buffer001 = command_encoder001.finish();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder501.insertDebugMarker("marker");
    texture000.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array7 = new Float32Array([-0.25, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.0, -0.75, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.5, -0.25, 0.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, 0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.5, -0.75, -0.75, 0.25, -0.5, 0.0, 1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, -0.25, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, 0.25, -1.0, 0.75, -0.75, 0.75, 0.5, -0.25, -0.75, 0.75, 1.0, 0.5, 1.0, 0.0, 0.75, 0.75, 0.5, -0.25, 1.0, -0.75, 1.0, -0.5, 0.25, -0.5, 1.0, 0.5, 0.25, -0.5, ]);
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_pass_encoder5020.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setPipeline(render_pipeline503);
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder5030.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5020.setPipeline(render_pipeline501);
    buffer505.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder002.popDebugGroup();
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout506,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5010 = device50.createPipelineLayout({ 
        label: "pipeline_layout5010",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout509,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const pipeline_layout5011 = device50.createPipelineLayout({ 
        label: "pipeline_layout5011",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder5030.setStencilReference(1);
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    
    render_bundle_encoder502.popDebugGroup();
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
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
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    render_pass_encoder5030.setStencilReference(1);
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5020.insertDebugMarker("marker");
    const array8 = new Float32Array([0.75, -0.5, -1.0, -0.75, 0.25, 0.25, 0.0, 0.25, 1.0, -0.75, 1.0, 0.25, 0.0, 0.25, 0.0, 0.0, 0.25, 0.25, 0.0, 0.25, 1.0, 0.5, -0.25, 1.0, 1.0, 0.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 0.25, 0.5, -0.5, -1.0, -0.75, 0.25, 0.75, -0.5, 1.0, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -1.0, -0.5, 0.75, 0.25, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, -0.25, 0.75, 0.0, 0.75, 0.5, 0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.5, -0.5, 0.5, 0.75, -1.0, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 0.25, -0.75, -0.25, ]);
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5012 = device50.createPipelineLayout({ 
        label: "pipeline_layout5012",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    render_pass_encoder5030.setScissorRect(0, 0, texture502.width / 2, texture502.height / 2);
    
    query500.destroy()
    const pipeline_layout5013 = device50.createPipelineLayout({ 
        label: "pipeline_layout5013",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    buffer507.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout508,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
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
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
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

    render_pass_encoder5030.setBindGroup(0, bind_group503);
    const array9 = new Float32Array([-1.0, -0.25, -0.25, -1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 1.0, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, 1.0, 0.5, 0.0, 0.5, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, -1.0, 0.25, -0.25, 1.0, 0.25, -0.75, 0.75, -1.0, 1.0, 0.5, -0.25, -0.75, -1.0, -0.5, -0.75, -0.5, 0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.5, 0.25, 0.5, 1.0, 0.5, -0.75, -1.0, 0.5, 0.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.75, 1.0, 1.0, -0.25, -0.5, 0.75, -1.0, 0.75, 0.0, 0.5, ]);
    
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    const pipeline_layout5014 = device50.createPipelineLayout({ 
        label: "pipeline_layout5014",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout5015 = device50.createPipelineLayout({ 
        label: "pipeline_layout5015",
        bindGroupLayouts: [bind_group_layout505]
    });
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout5012,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout5016 = device50.createPipelineLayout({ 
        label: "pipeline_layout5016",
        bindGroupLayouts: [bind_group_layout504]
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const pipeline_layout5017 = device50.createPipelineLayout({ 
        label: "pipeline_layout5017",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder5030.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    const pipeline_layout5018 = device50.createPipelineLayout({ 
        label: "pipeline_layout5018",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.popDebugGroup();
    const array10 = new Float32Array([-1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -1.0, 0.5, -0.5, 0.0, -0.5, 0.5, 0.25, -0.5, -0.75, 1.0, 0.75, 0.25, -1.0, 0.75, -0.25, 1.0, -0.5, -0.5, 0.75, 1.0, -1.0, 0.0, -0.25, -0.5, -0.25, -0.75, -0.5, 1.0, -0.5, 0.25, -0.25, 0.5, -0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.5, -0.75, 1.0, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 0.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.25, -0.75, -0.5, 0.25, 1.0, -0.25, -0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, 0.0, -0.25, 0.75, 0.75, ]);
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer506.destroy()
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout5015,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5039 = device50.createComputePipeline({
        label: "compute_pipeline5039",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline5040 = device50.createComputePipeline({
        label: "compute_pipeline5040",
        layout: pipeline_layout5015,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5041 = device50.createComputePipeline({
        label: "compute_pipeline5041",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    render_bundle_encoder502.insertDebugMarker("marker");
    const compute_pipeline5042 = device50.createComputePipeline({
        label: "compute_pipeline5042",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5019 = device50.createPipelineLayout({ 
        label: "pipeline_layout5019",
        bindGroupLayouts: [bind_group_layout501]
    });
    const array11 = new Float32Array([0.0, 0.25, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.0, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.5, -0.25, 0.25, -0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.5, 0.5, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 1.0, 0.25, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.0, 0.5, 0.25, 0.0, -0.75, -1.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, -1.0, 0.25, 0.75, 0.25, 0.0, -0.75, 0.0, -0.5, -0.5, -0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 0.25, 0.5, -0.5, -0.25, 1.0, 0.25, -1.0, -0.75, 0.5, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder5020.insertDebugMarker("marker");
    const compute_pipeline5043 = device50.createComputePipeline({
        label: "compute_pipeline5043",
        layout: pipeline_layout5016,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const compute_pipeline5044 = device50.createComputePipeline({
        label: "compute_pipeline5044",
        layout: pipeline_layout5018,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5045 = device50.createComputePipeline({
        label: "compute_pipeline5045",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const pipeline_layout5020 = device50.createPipelineLayout({ 
        label: "pipeline_layout5020",
        bindGroupLayouts: [bind_group_layout505]
    });
    const compute_pipeline5046 = device50.createComputePipeline({
        label: "compute_pipeline5046",
        layout: pipeline_layout507,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([1.0, 0.0, 0.0, 0.0, -0.5, 0.5, 0.0, -0.5, 0.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.5, 0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.75, -0.25, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.75, 0.25, 0.25, -0.75, -0.75, -0.75, 0.5, -0.75, -0.25, 0.5, 0.75, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.5, 0.75, 0.5, 0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.25, -0.75, -0.5, -0.5, -0.5, 0.25, -0.5, 0.75, 0.25, 0.5, 0.25, 0.75, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.25, -1.0, -0.75, -1.0, 0.75, 0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -1.0, 0.0, 1.0, ]);
    const compute_pipeline5047 = device50.createComputePipeline({
        label: "compute_pipeline5047",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    const compute_pipeline5048 = device50.createComputePipeline({
        label: "compute_pipeline5048",
        layout: pipeline_layout5019,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5049 = device50.createComputePipeline({
        label: "compute_pipeline5049",
        layout: pipeline_layout5014,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5050 = device50.createComputePipeline({
        label: "compute_pipeline5050",
        layout: pipeline_layout5013,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const pipeline_layout5021 = device50.createPipelineLayout({ 
        label: "pipeline_layout5021",
        bindGroupLayouts: [bind_group_layout503]
    });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    const compute_pipeline5051 = device50.createComputePipeline({
        label: "compute_pipeline5051",
        layout: pipeline_layout5021,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline5052 = device50.createComputePipeline({
        label: "compute_pipeline5052",
        layout: pipeline_layout5021,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout5022 = device50.createPipelineLayout({ 
        label: "pipeline_layout5022",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    
    const compute_pipeline5053 = device50.createComputePipeline({
        label: "compute_pipeline5053",
        layout: pipeline_layout5019,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5054 = device50.createComputePipeline({
        label: "compute_pipeline5054",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module507,
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
            module: shader_module507,
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
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    const compute_pipeline5055 = device50.createComputePipeline({
        label: "compute_pipeline5055",
        layout: pipeline_layout5019,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.popDebugGroup();
    const compute_pipeline5056 = device50.createComputePipeline({
        label: "compute_pipeline5056",
        layout: pipeline_layout508,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5057 = device50.createComputePipeline({
        label: "compute_pipeline5057",
        layout: pipeline_layout5021,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5050.setPipeline(compute_pipeline508);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
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
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline501.getBindGroupLayout(0),
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

    render_pass_encoder5020.setBindGroup(0, bind_group504);
    const compute_pipeline5058 = device50.createComputePipeline({
        label: "compute_pipeline5058",
        layout: pipeline_layout5011,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    texture503.destroy();
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline5059 = device50.createComputePipeline({
        label: "compute_pipeline5059",
        layout: pipeline_layout5021,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout5023 = device50.createPipelineLayout({ 
        label: "pipeline_layout5023",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const compute_pipeline5060 = device50.createComputePipeline({
        label: "compute_pipeline5060",
        layout: pipeline_layout5023,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout5024 = device50.createPipelineLayout({ 
        label: "pipeline_layout5024",
        bindGroupLayouts: [bind_group_layout502]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture002.destroy();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout5025 = device50.createPipelineLayout({ 
        label: "pipeline_layout5025",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    const compute_pipeline5061 = device50.createComputePipeline({
        label: "compute_pipeline5061",
        layout: pipeline_layout5010,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const command_buffer504 = command_encoder504.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    device50.queue.submit([command_buffer504, ]);
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
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline508.getBindGroupLayout(0),
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

    compute_pass_encoder5050.setBindGroup(0, bind_group505);
    compute_pass_encoder5050.dispatchWorkgroups(100);
    compute_pass_encoder5050.end();
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5000.popDebugGroup()
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
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group506);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    const command_buffer505 = command_encoder505.finish();
    compute_pass_encoder5000.end();
    device50.queue.submit([command_buffer505, ]);
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}