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
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([1.0, 1.0, -0.5, 0.5, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.5, -0.75, -1.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.25, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -1.0, -0.25, 1.0, -0.5, 0.0, 0.75, -1.0, 0.75, -1.0, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 0.25, -1.0, 0.0, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.75, 0.75, 0.25, -0.75, 0.5, -1.0, -0.5, -0.25, -0.5, 0.25, -0.75, 1.0, -0.75, 1.0, 0.25, 0.25, -1.0, -0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.75, -0.25, 1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -1.0, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    texture000.destroy();
    const array1 = new Float32Array([0.0, -0.25, -0.5, -0.5, 0.5, 0.25, -1.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.5, -1.0, 0.5, 1.0, 1.0, -0.75, -0.5, 1.0, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, 0.0, 0.5, -1.0, 0.75, -0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 0.0, -1.0, 0.25, -1.0, -0.5, -0.25, 0.25, -0.75, -1.0, 0.75, -0.5, -1.0, 0.5, 1.0, 0.75, 0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, -1.0, 0.0, 0.75, 1.0, 0.75, 0.25, 0.25, 0.0, -1.0, 0.5, -0.5, -1.0, 0.75, 0.5, -0.5, -0.75, -0.25, -1.0, -0.75, -1.0, -0.5, 1.0, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, 0.0, 1.0, -1.0, 0.0, 1.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.75, ]);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    const array2 = new Float32Array([-1.0, -0.75, -1.0, -0.5, -1.0, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, 0.25, 0.25, -0.5, 0.0, -0.75, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, 0.0, 1.0, 0.25, 0.5, 0.25, 0.0, 0.75, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, -0.25, 0.5, 0.25, 0.0, 1.0, -0.5, 0.75, 0.75, 0.0, 0.5, 1.0, -0.5, -1.0, -1.0, -1.0, -0.5, 0.0, 0.25, 0.0, 0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 0.25, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, -0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 0.5, 0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.25, 0.0, 0.0, -0.75, 0.5, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-1.0, 0.5, 1.0, -0.75, 0.25, 1.0, -1.0, 0.0, -1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.5, 1.0, 0.0, -1.0, 0.75, 1.0, -1.0, -0.5, 1.0, 0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 1.0, 1.0, 0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 0.75, 0.25, 0.75, 1.0, 0.5, -0.5, -0.25, 1.0, -0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 0.5, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 0.5, -0.5, 1.0, -0.75, -0.5, -1.0, -0.25, 0.25, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, 0.75, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
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
    device40.destroy();
    
    
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    query301.destroy()
    query300.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    query001.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query300.destroy()
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.pushErrorScope("validation");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query300.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array4 = new Float32Array([1.0, 0.0, 0.5, 0.5, 1.0, 0.25, 0.0, 0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.25, 0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, 0.5, -0.25, -0.5, 1.0, -0.25, 0.0, -0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.25, 0.75, -1.0, 0.5, 0.0, 0.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.75, 0.0, -0.75, 1.0, -0.25, -0.25, 0.5, 0.25, -1.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.75, -0.25, 0.0, -1.0, 0.0, -0.5, 1.0, 0.0, -0.5, 1.0, 1.0, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -1.0, ]);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    device30.pushErrorScope("out-of-memory");
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
    query101.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query301.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device70.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([0.0, 0.25, -0.5, -1.0, -0.5, 1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, 0.5, 0.75, 0.75, -0.75, -1.0, 0.25, -0.25, -1.0, 0.5, 0.0, 1.0, -0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, 1.0, 0.5, 0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 1.0, -0.5, 1.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.25, -0.25, 1.0, 0.75, 0.5, 0.5, -0.75, 1.0, -0.75, 0.0, -0.25, 0.75, 0.25, 0.0, -0.25, 0.75, 0.0, 1.0, 0.0, -0.75, -0.25, -0.5, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, -1.0, -0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 1.0, -0.5, 1.0, -0.75, 0.75, -1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -0.75, ]);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.75, -1.0, 0.25, 0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.25, 0.5, 0.0, -0.25, -0.25, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, 0.5, -0.25, 0.75, -1.0, -0.25, -0.25, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.75, 0.5, 0.25, -0.25, -0.5, -0.5, -0.25, 0.0, 0.5, -0.75, 1.0, 0.5, -0.75, 0.0, -1.0, -1.0, -0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 1.0, -0.25, 0.75, -0.75, 0.75, -0.75, 0.5, 0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -0.5, 0.5, 0.25, 1.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -0.25, 0.0, -0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, -1.0, -1.0, 0.5, 1.0, ]);
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    device90.destroy();
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
        bindGroupLayouts: [bind_group_layout102]
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    
    
    const array7 = new Float32Array([-0.75, -0.25, 0.75, 1.0, -0.25, 0.5, -1.0, 0.75, 1.0, -0.5, -0.75, -0.75, 1.0, -0.5, 1.0, -0.5, 0.5, -0.5, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, -0.25, 0.5, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 0.75, 0.25, -0.25, 0.25, -1.0, -0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.5, -0.75, 0.25, 0.75, 0.0, 0.0, 0.5, 0.5, 1.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, 0.25, 0.5, 0.5, -0.75, -0.75, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.5, -0.25, -0.75, 1.0, 0.0, 0.25, -1.0, -1.0, 0.25, 1.0, 1.0, -0.75, 1.0, -1.0, 0.25, -0.75, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder0000.popDebugGroup()
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_buffer002 = command_encoder002.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    query100.destroy()
    
    query302.destroy()
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query101.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder301.resolveQuerySet(
        query305,
        0,
        32,
        buffer300,
        0
    )
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder301.resolveQuerySet(
        query305,
        0,
        32,
        buffer300,
        0
    )
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -0.5, -0.5, 0.5, 0.0, 0.5, 0.0, 0.5, 0.75, -0.25, -1.0, 1.0, -0.75, -0.5, -0.75, -0.25, -1.0, 0.75, 0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.0, 0.25, 0.75, 0.25, 0.0, -0.5, -1.0, 0.5, 0.25, 0.75, 0.25, 0.0, 0.0, -1.0, -0.5, -0.25, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 1.0, -0.5, 0.5, -0.25, -0.5, 0.0, -0.5, 0.0, -0.5, -1.0, -0.75, -0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.25, 0.75, -0.25, 0.0, 0.75, -0.75, 0.75, -0.25, 0.25, -1.0, 0.5, -0.25, ]);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    command_encoder301.resolveQuerySet(
        query306,
        0,
        32,
        buffer300,
        0
    )
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const array9 = new Float32Array([0.5, 0.5, -1.0, -0.25, 0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, -1.0, -0.25, 1.0, 0.75, -1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, -0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -0.25, -0.5, -0.5, 0.75, 0.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.25, 0.75, 0.25, 0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, -0.75, 0.25, -0.25, 0.5, -0.25, 0.5, 1.0, 1.0, 0.5, -1.0, -1.0, 0.25, 0.5, 1.0, -0.75, -1.0, -0.75, 0.5, -0.25, -0.5, 0.5, 1.0, -0.75, 0.25, 1.0, -0.5, 0.25, 0.0, -1.0, ]);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    query303.destroy()
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device80.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    texture100.destroy();
    query303.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    query500.destroy()
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device110.pushErrorScope("validation");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    query304.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout303]
    });
    
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
    query306.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const command_buffer1100 = command_encoder1100.finish();
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    device110.queue.submit([command_buffer1100, ]);
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder301.resolveQuerySet(
        query306,
        0,
        32,
        buffer300,
        0
    )
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    query500.destroy()
    command_encoder301.resolveQuerySet(
        query305,
        0,
        32,
        buffer301,
        0
    )
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query307.destroy()
    query101.destroy()
    device100.pushErrorScope("validation");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_buffer1000 = command_encoder1000.finish();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const array10 = new Float32Array([0.0, 0.5, 0.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, -0.5, 0.25, 0.75, 0.75, -0.5, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, 0.75, 0.0, -0.5, 0.5, -0.5, 0.5, -0.25, 1.0, 0.75, 0.0, -1.0, 0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.25, -0.25, -0.5, 0.75, 0.0, -0.75, 0.5, 0.5, 0.0, -0.5, -0.25, 0.75, 0.75, 0.5, 1.0, 0.25, 0.75, 1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 0.75, 1.0, 0.5, 0.5, 0.0, -0.25, -1.0, 0.25, 0.0, -0.5, -0.25, 0.25, 0.5, 0.25, 1.0, 0.0, -0.5, -0.75, -0.75, -1.0, -1.0, -0.25, 0.0, 1.0, 0.25, -0.25, ]);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    
    
    query307.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
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
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    query300.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    command_encoder302.resolveQuerySet(
        query306,
        0,
        32,
        buffer300,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    command_encoder302.resolveQuerySet(
        query306,
        0,
        32,
        buffer300,
        0
    )
    texture101.destroy();
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query304.destroy()
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder303.resolveQuerySet(
        query306,
        0,
        32,
        buffer300,
        0
    )
    texture001.destroy();
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    command_encoder302.insertDebugMarker("mymarker");
    
    command_encoder302.resolveQuerySet(
        query306,
        0,
        32,
        buffer303,
        0
    )
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array10, 0, array10.length);
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout304]
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_pass_encoder0040.setPipeline(render_pipeline000);
    command_encoder302.resolveQuerySet(
        query303,
        0,
        32,
        buffer301,
        0
    )
    
    texture1001.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    texture002.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    query305.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    command_encoder303.resolveQuerySet(
        query307,
        0,
        32,
        buffer300,
        0
    )
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const array11 = new Float32Array([0.5, 1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, 0.0, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.75, -0.5, 0.5, 0.5, 0.25, -0.25, -0.5, -0.5, 0.0, 0.75, 0.25, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.75, 0.25, -1.0, 1.0, 0.75, 0.25, -0.75, 1.0, 0.5, -0.25, 0.0, -0.75, 1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 0.75, -0.75, -0.75, 0.0, 0.5, -0.25, 0.5, -0.75, 0.5, 0.0, 0.5, -0.75, -0.5, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, ]);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout305]
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query300.destroy()
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device100.queue.submit([command_buffer1000, ]);
    device30.queue.submit([command_buffer300, ]);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([command_buffer002, ]);
}