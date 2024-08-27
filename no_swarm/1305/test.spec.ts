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
    
    const array0 = new Float32Array([-0.5, -0.5, 0.5, -0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, 0.25, -0.5, 0.25, 0.5, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.0, -0.25, 0.25, -0.25, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, 0.75, 0.5, 0.5, 0.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -0.5, 1.0, -1.0, 0.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.0, 0.25, -0.5, -0.75, 0.5, 1.0, 0.25, 1.0, -0.5, -0.5, 0.0, -0.75, 0.25, 0.0, -0.5, 0.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.0, -0.5, 0.0, -0.25, -0.5, 0.25, 0.25, -0.5, -0.75, -1.0, 0.75, -0.25, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.25, -0.5, -0.5, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, -0.5, 0.0, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, 0.0, 0.25, 0.25, 0.0, 0.25, -0.75, -1.0, -0.25, -0.75, 0.0, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, 0.5, -0.25, 1.0, 0.0, 0.25, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.75, 0.75, -1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 1.0, 0.5, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, -0.5, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.0, 0.25, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer000.destroy()
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.5, -0.25, 0.0, -0.25, 0.25, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, -0.75, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, 0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, -1.0, 0.0, -0.5, 0.25, -1.0, 0.0, 1.0, 0.75, -0.25, -0.25, 0.75, 0.0, -1.0, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.25, 0.25, -0.25, 0.75, 0.75, -0.75, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, 1.0, -1.0, 0.0, -0.5, -0.5, -0.25, -0.25, -0.75, -0.75, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, 1.0, -1.0, 0.5, -0.25, ]);
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
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.pushErrorScope("internal");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.destroy();
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device30.pushErrorScope("internal");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array3 = new Float32Array([1.0, 0.0, 0.75, -0.25, 1.0, 0.5, -0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.5, 0.25, 0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 0.0, -1.0, -0.75, -0.5, 1.0, -0.75, 1.0, 0.75, 0.5, 0.25, 0.75, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.5, -1.0, -0.25, 0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.75, 0.5, 0.0, 0.5, 0.0, -0.75, -0.75, -0.25, 0.75, 0.75, 1.0, 0.75, 0.0, 0.25, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, -1.0, 0.75, 0.25, -0.25, -0.5, 0.25, 0.75, 0.75, 1.0, ]);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array4 = new Float32Array([-0.5, 0.5, -0.25, 0.5, -1.0, 0.75, 0.75, 0.5, -0.25, 0.0, -0.25, 0.75, 0.25, 0.5, 0.25, 1.0, -0.25, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, 0.75, 1.0, 0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -0.75, 0.75, -1.0, -1.0, 1.0, -0.5, 0.5, 0.0, 0.75, 0.75, -1.0, 1.0, -0.25, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, 1.0, 0.5, 0.75, 0.25, 0.0, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 0.5, 0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -0.75, 1.0, -1.0, 1.0, -0.75, 0.25, 1.0, -0.75, 0.25, 0.0, -0.5, 0.25, 0.5, -0.75, -0.75, 0.5, -1.0, 1.0, 0.25, -1.0, -0.25, -0.5, 0.0, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture300.destroy();
    
    
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device70.pushErrorScope("out-of-memory");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer100.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    device60.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device60.pushErrorScope("internal");
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.popDebugGroup();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_bundle_encoder301.setPipeline(render_pipeline300);
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
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    device70.pushErrorScope("validation");
    
    query200.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device70.destroy();
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    texture302.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder301.popDebugGroup();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder302.setPipeline(render_pipeline302);
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array5 = new Float32Array([0.5, 0.25, 0.25, -0.25, -0.25, 0.25, 0.0, -0.25, -0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.25, 1.0, -0.25, 1.0, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.75, -0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -1.0, -1.0, -0.75, -0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 1.0, 1.0, 0.5, 0.25, -1.0, 0.75, -0.5, -1.0, 0.25, -0.5, -0.75, 1.0, -1.0, 0.5, 0.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.25, -0.75, -0.75, -1.0, -0.75, 0.0, -0.75, 0.75, 0.0, 1.0, -0.25, 0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.75, -1.0, ]);
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.setPipeline(render_pipeline302);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder000.insertDebugMarker("mymarker");
    query200.destroy()
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer302.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    buffer301.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    command_encoder301.clearBuffer(buffer303);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    
    buffer300.destroy()
    
    
    
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device30.queue.writeTexture({ texture: texture303 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    render_pass_encoder3010.insertDebugMarker("marker");
    texture303.destroy();
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const array6 = new Float32Array([1.0, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 1.0, -0.75, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.5, -0.5, 0.5, 0.25, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, -1.0, -0.25, 0.5, 0.5, -1.0, 0.75, 0.25, 0.0, 0.25, 0.75, 0.25, 0.5, -0.5, 1.0, 0.75, -0.25, -0.75, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -0.25, -0.75, -0.5, 0.5, 0.75, -0.5, 0.25, -1.0, 0.75, -0.5, -1.0, -0.5, -0.75, -0.75, -0.25, 1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.75, 0.0, -1.0, 0.0, 1.0, -0.5, -0.5, -0.5, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 0.25, 0.75, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, 0.75, -1.0, 0.25, ]);
    device30.queue.writeTexture({ texture: texture304 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    {
        await buffer304.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer304.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer304.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_pass_encoder3010.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
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
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    buffer303.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3010.popDebugGroup();
    
    query700.destroy()
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const compute_pass_encoder3031 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3031" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline305);
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    texture301.destroy();
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer307, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    query300.destroy()
    texture304.destroy();
    compute_pass_encoder3031.setPipeline(compute_pipeline300);
    compute_pass_encoder3031.insertDebugMarker("marker")
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query600.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    compute_pass_encoder3031.insertDebugMarker("marker")
    buffer306.destroy()
    device30.queue.writeBuffer(buffer309, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer309, 0, array6, 0, array6.length);
    buffer309.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    compute_pass_encoder3031.insertDebugMarker("marker")
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    buffer305.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    
    
    render_pass_encoder3010.end();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    command_encoder301.insertDebugMarker("mymarker");
    buffer307.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder303.copyBufferToBuffer(
        buffer300,
        0,
        buffer3010,
        0,
        400
    );
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    buffer3010.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer3012, 0, array0, 0, array0.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    command_encoder301.copyBufferToBuffer(
        buffer307,
        0,
        buffer301,
        0,
        400
    );
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer308
        },
        {
            texture: texture303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer308, 0, array4, 0, array4.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3011.executeBundles([])
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture305 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    query301.destroy()
    buffer300.destroy()
    buffer308.destroy()
    render_bundle_encoder302.setVertexBuffer(0, buffer300);
    render_bundle_encoder301.setVertexBuffer(0, buffer302);
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
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder3011.setScissorRect(0, 0, texture304.width / 2, texture304.height / 2);
    buffer304.destroy()
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder301.draw(3);
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group303);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3011.setPipeline(render_pipeline303);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3013,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer309,
        0
    )
    render_pass_encoder3040.setPipeline(render_pipeline309);
    query300.destroy()
    buffer3014.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    buffer3013.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    texture305.destroy();
    render_pass_encoder3041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder305.copyBufferToBuffer(
        buffer3010,
        0,
        buffer3010,
        0,
        400
    );
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: query301
    });
    compute_pass_encoder3031.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3041.setPipeline(render_pipeline309);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group304);
    device30.queue.writeBuffer(buffer3010, 0, array5, 0, array5.length);
    render_pass_encoder3050.setPipeline(render_pipeline301);
    render_bundle_encoder302.draw(3);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3041.pushDebugGroup("group_marker");
    
    render_pass_encoder3011.insertDebugMarker("marker");
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
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
    
    buffer3016.destroy()
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    render_pass_encoder3011.setVertexBuffer(0, buffer308);
    
    texture304.destroy();
    
    render_pass_encoder3040.setStencilReference(1);
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3031.setBindGroup(0, bind_group305);
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder306.copyBufferToBuffer(
        buffer3017,
        0,
        buffer3013,
        0,
        400
    );
    command_encoder304.copyTextureToBuffer(
        {
            texture: texture304
        },
        {
            buffer: buffer303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3014, 0, array0, 0, array0.length);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3011.drawIndirect(buffer3010, 0);
    render_pass_encoder3011.setViewport(0, 0, texture304.width / 2, texture304.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer3011, 0, array4, 0, array4.length);
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer308.destroy()
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3060.setPipeline(render_pipeline302);
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3030.popDebugGroup()
    buffer3018.destroy()
    render_pass_encoder3041.insertDebugMarker("marker");
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group306);
    buffer3015.destroy()
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3060.setVertexBuffer(0, buffer3018);
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    device30.queue.writeBuffer(buffer3010, 0, array4, 0, array4.length);
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module3010,
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
            module: shader_module3010,
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
    const uint32_3031 = new Uint32Array(3);

    uint32_3031[0] = 100;
    uint32_3031[1] = 1;
    uint32_3031[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3031, 0, uint32_3031.length);

    compute_pass_encoder3031.dispatchWorkgroupsIndirect(buffer3022, 0);
    buffer301.destroy()
    device30.queue.writeBuffer(buffer3012, 0, array4, 0, array4.length);
    render_pass_encoder3050.setStencilReference(1);
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3041.setViewport(0, 0, texture304.width / 2, texture304.height / 2, 0, 1);
    
    command_encoder306.pushDebugGroup("mygroupmarker")
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer3022.destroy()
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group307);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group308);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3050.setVertexBuffer(0, buffer303);
    render_pass_encoder3050.draw(3);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3027, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3027, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3060.drawIndirect(buffer3027, 0);
    render_pass_encoder3041.setVertexBuffer(0, buffer300);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3041.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer3027, 0);
    render_pass_encoder3041.drawIndirect(buffer3019, 0);
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group309);
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3040.drawIndirect(buffer3027, 0);
    render_pass_encoder3041.drawIndirect(buffer3027, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3027, 0);
    render_pass_encoder3060.end();
    render_pass_encoder3060.drawIndirect(buffer308, 0);
    render_pass_encoder3050.setIndexBuffer(buffer3029, "uint16");
    render_pass_encoder3041.end();
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3010, "uint16");
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3010);
    render_pass_encoder3010.drawIndirect(buffer3015, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder3060.drawIndirect(buffer3016, 0);
    render_pass_encoder3040.popDebugGroup();
    command_encoder306.popDebugGroup()
    render_pass_encoder3040.drawIndirect(buffer3024, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3013, "uint16");
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3032, 0);
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3010.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3040.end();
    device30.queue.submit([command_buffer305, ]);
    command_encoder301.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder3060.drawIndexed(3);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3041.drawIndexedIndirect(buffer3019, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3011.draw(3);
    render_pass_encoder3011.end();
    render_pass_encoder3041.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3011.drawIndirect(buffer309, 0);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3041.drawIndirect(buffer3022, 0);
    device30.queue.submit([command_buffer306, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3010.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3041.setIndexBuffer(buffer301, "uint16");
    device30.queue.submit([command_buffer302, ]);
    const uint32_3031 = new Uint32Array(3);

    uint32_3031[0] = 100;
    uint32_3031[1] = 1;
    uint32_3031[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3031, 0, uint32_3031.length);

    compute_pass_encoder3031.dispatchWorkgroupsIndirect(buffer3033, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3017, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3050.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3050.drawIndexedIndirect(buffer3022, 0);
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3011);
    render_pass_encoder3050.drawIndirect(buffer3022, 0);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder3031.popDebugGroup()
    render_pass_encoder3041.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3050.popDebugGroup();
    compute_pass_encoder3031.end();
    render_pass_encoder3060.drawIndexed(3);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer3018, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3030, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3040.end();
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndexedIndirect(buffer3022, 0);
    device30.queue.submit([command_buffer303, ]);
}