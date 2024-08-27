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
    const array0 = new Float32Array([0.75, -0.25, 0.75, -0.25, 0.25, 0.0, 0.0, 0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 0.0, -0.75, 0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.75, 0.25, 1.0, -0.75, -0.75, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.75, 0.25, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 0.25, 1.0, 1.0, -0.5, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, -1.0, 0.25, 0.5, 0.5, -0.25, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, 0.5, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, -1.0, -1.0, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.25, 0.0, 0.5, 1.0, -0.25, -0.25, 1.0, 0.5, 0.25, -0.75, 1.0, 0.0, 0.25, -0.75, 0.0, 0.25, 0.0, -0.75, -1.0, -0.25, 0.75, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, -1.0, 0.25, -0.75, 1.0, 0.25, 1.0, 1.0, 1.0, 0.75, 0.5, -0.5, -0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.75, -0.75, -0.25, -0.25, 1.0, 0.25, 1.0, -0.25, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 0.5, 0.5, -0.5, 0.0, -0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, 0.25, -1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 1.0, -0.5, -0.75, 0.0, 0.5, 1.0, -1.0, -0.25, 1.0, -0.5, -0.5, 0.5, 0.5, 0.5, -0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array2 = new Float32Array([-0.5, -0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 0.25, 0.0, -0.75, -1.0, 0.5, -1.0, -1.0, 0.75, 0.5, 0.0, 0.0, -0.75, -0.5, 0.75, -0.75, 0.0, 0.25, -1.0, 1.0, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, 0.5, -0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, 0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 0.75, -0.25, 0.25, -0.25, 0.25, 0.5, 1.0, 0.25, -0.25, -0.5, -1.0, -0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 1.0, -1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.25, -1.0, 0.5, 1.0, -1.0, 0.0, -0.75, -0.25, -0.75, -0.75, -0.5, 0.0, 0.0, -0.75, 0.5, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 0.25, 0.75, -0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array3 = new Float32Array([-0.75, -0.25, 0.0, 0.5, 0.25, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, -0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, -0.75, 0.75, 0.75, -0.75, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, -1.0, -0.5, -0.5, -0.75, 0.25, -0.25, -0.5, 0.0, 0.25, -0.75, -0.5, -0.75, 0.0, 0.0, 0.5, -1.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.25, 1.0, -0.75, -0.5, 0.0, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.25, -0.5, 1.0, 0.0, 1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 0.25, 1.0, -1.0, 0.0, -0.25, -0.75, 0.5, -0.5, 1.0, -0.25, -0.25, -0.5, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.25, 1.0, 1.0, 0.0, -1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, -0.75, 0.5, 0.5, -0.25, 0.5, -0.75, 0.0, 1.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 0.75, 0.75, -0.75, -0.5, -0.5, 0.75, 0.5, -0.75, -0.25, -0.25, 0.0, 0.0, 0.75, 0.25, 0.75, -1.0, 1.0, -0.75, -0.75, -0.5, 0.25, 0.5, 0.75, 1.0, 0.75, 0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 1.0, -0.5, 0.5, 0.0, 0.75, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, 0.25, -1.0, 0.0, -1.0, -1.0, -0.5, -1.0, 0.75, 0.75, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 0.5, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.75, -0.75, 0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, -0.5, -1.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, 0.25, 1.0, 0.75, 0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 0.0, 0.0, -0.75, -1.0, 0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -0.75, -1.0, 0.75, 0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -1.0, 1.0, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 0.0, 0.5, -0.5, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 0.5, 0.5, 1.0, -0.5, -0.75, 1.0, 1.0, 0.75, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder101.popDebugGroup();
    
    const array6 = new Float32Array([0.75, 0.5, -0.5, 0.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, -1.0, -0.5, -0.25, 0.5, -0.5, 0.75, -1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.25, -0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, 0.25, 0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, -0.5, -0.75, 0.0, -0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.25, 0.5, -0.75, -1.0, 0.0, 0.25, -0.25, 1.0, -0.75, 0.25, 1.0, 0.5, 0.0, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, 0.25, -0.75, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, -0.25, 1.0, 1.0, ]);
    const array7 = new Float32Array([-0.75, -1.0, -1.0, 0.0, -1.0, 0.0, 0.25, -0.75, -1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, 0.25, 0.5, -0.25, 0.5, 0.0, 0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, 0.0, 0.5, -0.25, -0.75, -0.75, 1.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, 1.0, 0.75, -0.5, -0.75, 0.5, -0.25, -0.5, 0.25, 0.25, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 0.25, 1.0, -0.5, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, 0.75, 0.5, -0.75, 0.25, -0.5, -0.75, -0.25, -1.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.5, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer300.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
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
    
    query200.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device30.destroy();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.0, -0.75, -0.75, 0.75, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.5, -0.75, -0.25, -0.75, 1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 0.0, -1.0, -0.75, 1.0, -0.75, 0.0, 0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.25, -0.75, -0.75, 0.5, 0.25, -0.75, -0.75, -1.0, 0.25, -0.75, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, -0.25, -0.25, -0.25, 0.75, -0.25, -0.5, 1.0, 0.0, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, 0.75, 0.25, 0.0, -0.75, 0.0, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder500.popDebugGroup();
    
    query201.destroy()
    query500.destroy()
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    query202.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    buffer500.destroy()
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    query500.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
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
    render_bundle_encoder100.popDebugGroup();
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array9 = new Float32Array([0.0, -0.5, 0.25, -0.5, -1.0, 0.0, -0.75, -0.5, 0.75, 0.25, 1.0, 0.25, 0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.75, -0.75, 0.0, 0.75, 1.0, -0.25, 0.5, 1.0, -0.25, 0.5, 0.75, 0.5, 1.0, 1.0, -0.25, -0.25, 0.5, -0.75, 0.5, -0.75, 0.25, -1.0, 1.0, -0.25, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, -0.5, 0.0, 1.0, 0.5, 0.25, 0.5, -1.0, -0.5, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 1.0, 0.5, -1.0, 0.75, -0.75, -0.75, 0.75, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -1.0, -0.25, -0.5, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 0.75, -0.25, -0.75, -0.5, 1.0, -0.5, 1.0, -1.0, 0.75, -0.75, -1.0, -0.5, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.destroy();
    
    
    
    const array10 = new Float32Array([0.5, 0.75, -1.0, 0.5, 0.0, 1.0, -0.25, 0.75, -0.25, -1.0, 1.0, 0.25, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, -0.5, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, -0.5, 0.5, 0.25, 1.0, -0.25, -0.25, -0.75, -1.0, 0.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.25, 0.25, -0.25, 1.0, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.5, -0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.5, -0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer200.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device70.destroy();
    const array11 = new Float32Array([-0.5, 0.5, -0.25, 0.5, -0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 0.0, 0.75, 0.25, -0.5, 0.0, 1.0, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, -1.0, 0.75, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, -0.25, 0.75, 0.0, 0.25, 1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, -1.0, 0.0, -0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, 1.0, -0.25, -0.5, 0.5, 0.25, -0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.0, 0.0, -0.5, 0.25, 0.5, -0.75, -0.5, 0.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.75, 0.75, 0.5, 0.75, -0.5, 0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 0.0, 1.0, 1.0, -1.0, 0.25, -0.75, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    
    query200.destroy()
    
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    buffer100.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const array12 = new Float32Array([0.0, -0.25, 0.5, 1.0, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, -0.75, -0.75, -1.0, 0.25, 0.75, 1.0, 1.0, -0.75, 0.5, -1.0, 0.0, 0.75, -0.5, -1.0, 0.0, 0.25, 0.75, 0.5, -0.75, -1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -1.0, 0.0, 0.0, 0.75, -0.75, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.0, 0.5, 1.0, -0.25, -0.5, 0.25, 0.75, 0.5, 0.5, -0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.0, -0.5, -0.75, -0.75, 0.5, 0.25, 0.5, 1.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.25, 0.0, -0.25, ]);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const array13 = new Float32Array([-0.5, 0.5, -0.75, 0.75, 0.0, 0.25, 0.5, -1.0, 0.75, -0.75, -0.75, -0.25, 0.25, 1.0, -0.25, 0.75, -0.25, -0.25, 0.5, 0.75, -1.0, -0.5, 0.25, 0.5, 0.0, 0.75, -1.0, -1.0, 1.0, 0.75, 0.5, 0.0, 0.0, 0.5, -0.25, -0.75, 0.75, -0.5, 0.0, -1.0, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.25, -0.5, -1.0, 0.25, -0.25, -0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.75, -1.0, -0.75, -1.0, 0.75, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, 0.0, -1.0, 0.5, -1.0, -0.75, -0.75, -0.25, 1.0, 1.0, 0.75, 0.5, 0.5, -0.5, 0.0, 0.75, ]);
    device60.destroy();
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    query002.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
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
    
    
    const array14 = new Float32Array([-0.5, -0.75, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, -0.5, 0.75, 0.25, 0.25, 0.25, -0.5, -0.75, 0.0, 0.0, -0.75, 0.75, -1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, 1.0, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, -0.25, 0.75, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.25, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.75, -0.5, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, -0.25, ]);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([-0.5, 0.25, 1.0, -0.5, 0.5, -0.25, -0.5, 0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 0.75, -0.25, -0.5, 0.5, 1.0, 0.25, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, -0.75, -0.25, -1.0, 0.0, -1.0, -1.0, 0.25, -1.0, 0.0, 0.75, 0.75, -1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, -0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.25, -0.25, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 1.0, -0.25, 0.75, 0.25, -0.25, 0.25, -0.25, -0.5, 1.0, 0.0, 0.75, 0.75, -0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, 0.25, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, ]);
    const array16 = new Float32Array([-1.0, 0.75, 0.25, -0.5, 0.25, 1.0, 0.5, 0.25, 0.0, -0.75, 0.5, 0.25, -0.5, -1.0, -0.75, -0.25, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, 1.0, -0.5, -1.0, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, -1.0, 1.0, -1.0, 0.25, -0.5, -0.25, 1.0, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.5, 0.5, 0.5, 1.0, -0.25, 0.75, -0.25, 1.0, -0.5, 0.75, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, -1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -1.0, 0.0, -0.25, 0.25, 0.75, 1.0, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
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
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    query801.destroy()
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const compute_pipeline802 = device80.createComputePipeline({
        label: "compute_pipeline802",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    query801.destroy()
    const compute_pipeline803 = device80.createComputePipeline({
        label: "compute_pipeline803",
        layout: pipeline_layout800,
        compute: {
            module: shader_module802,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline804 = device80.createComputePipeline({
        label: "compute_pipeline804",
        layout: pipeline_layout801,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device30.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder801.popDebugGroup();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder101.popDebugGroup();
    device80.destroy();
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    
    
    
    
    buffer301.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device50.destroy();
    query000.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query200.destroy()
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    device60.destroy();
    
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device10.destroy();
    
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.destroy();
    
    device50.queue.writeTexture({ texture: texture501 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array17 = new Float32Array([1.0, 0.75, 0.25, 1.0, -0.75, -1.0, 1.0, 0.75, -0.5, 0.0, -1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 0.75, 0.5, 0.25, 0.75, -0.25, 0.25, 0.75, 0.5, 0.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, -0.75, 0.0, 1.0, 0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, -0.25, -0.5, 0.0, 0.25, 1.0, -0.25, -0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -0.25, 0.0, 0.25, 1.0, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, -1.0, -0.5, -1.0, 0.0, 0.75, 0.0, -0.75, 0.75, ]);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.destroy();
    
    
    device20.destroy();
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    
    query501.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.destroy();
    
    query002.destroy()
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const compute_pipeline805 = device80.createComputePipeline({
        label: "compute_pipeline805",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    
    
    const compute_pipeline806 = device80.createComputePipeline({
        label: "compute_pipeline806",
        layout: pipeline_layout801,
        compute: {
            module: shader_module803,
            entryPoint: "main"
        }
    });
    query002.destroy()
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array18 = new Float32Array([-0.25, -1.0, -0.25, 0.5, -0.5, 0.0, -0.25, -0.75, -0.25, 0.25, -0.25, -0.25, -0.5, 0.75, -0.25, -1.0, -0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.75, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, 0.75, -1.0, 0.0, -0.75, -1.0, 1.0, -0.75, -0.25, -0.5, 0.25, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 0.75, -1.0, 1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, -0.25, 0.0, 1.0, 1.0, 0.75, -0.25, -1.0, 0.5, 0.5, 0.0, -0.5, 0.5, -0.25, -0.75, 0.0, 0.5, 0.0, 0.0, 0.0, 0.5, 0.0, 0.25, 0.0, 0.25, 0.75, -0.5, 0.0, 0.5, 0.25, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, ]);
    const array19 = new Float32Array([-0.25, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, 1.0, 1.0, 0.0, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 0.75, 0.0, -0.75, -0.25, -1.0, -0.5, -0.75, 0.5, 0.5, 0.75, -0.25, 0.0, 0.75, 1.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.75, -0.75, -0.5, 0.25, -0.25, -0.5, 0.75, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, -0.75, -0.25, -0.75, 0.25, ]);
    
    
    
    render_bundle_encoder800.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    
    
    
    
    
    
    
    query801.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder000.popDebugGroup();
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    
    
    
    
    device20.queue.writeTexture({ texture: texture200 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder200.popDebugGroup();
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device50.queue.writeTexture({ texture: texture500 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.queue.writeTexture({ texture: texture1000 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture200 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture700 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}