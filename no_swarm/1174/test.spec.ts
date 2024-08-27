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
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.5, -1.0, 1.0, 0.25, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, 0.25, -0.75, 0.75, -1.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.75, 0.5, 0.25, 0.25, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, -0.5, 0.0, 1.0, 1.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 0.25, 0.75, 0.0, 1.0, -0.25, 0.0, -0.75, -0.25, -0.75, -0.5, 0.25, 0.75, 1.0, -0.5, 0.5, -0.25, -0.5, 0.5, -1.0, -0.25, 0.5, -0.75, 0.0, 0.25, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.75, 0.75, -0.25, 0.5, -0.75, -0.75, 1.0, -1.0, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, ]);
    
    
    const array1 = new Float32Array([-1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, 1.0, 0.75, -0.5, 0.25, 0.25, -0.5, 0.75, -0.25, 0.75, -0.25, 1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.0, 0.5, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, -0.5, 0.25, 0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 0.75, 1.0, 0.75, 0.0, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.25, -0.25, -0.5, -0.25, 0.5, -0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.25, -0.25, 1.0, -0.75, -0.75, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, -0.25, 0.25, -0.25, 0.5, -0.75, -0.5, -0.5, -1.0, 0.0, 0.0, -0.25, 1.0, -0.75, -0.5, 1.0, -1.0, ]);
    const array2 = new Float32Array([0.75, -0.25, -0.75, -0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 0.25, 0.0, 0.5, 0.0, 0.25, -0.75, -1.0, 1.0, 1.0, -0.25, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, 1.0, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.75, 0.25, 0.25, -0.75, -1.0, -0.75, -0.5, 0.0, 1.0, -0.75, 0.75, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 0.5, -0.25, 1.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.0, 0.5, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, 0.0, -1.0, -0.5, -0.75, 0.5, 1.0, 0.0, 1.0, 0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.submit([]);
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
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
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder001.insertDebugMarker("mymarker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.pushErrorScope("internal");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("validation");
    const command_buffer200 = command_encoder200.finish();
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.setPipeline(render_pipeline002);
    render_pass_encoder0000.setStencilReference(1);
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
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
    render_pass_encoder0001.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0001.setPipeline(render_pipeline001);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0001.pushDebugGroup("group_marker");
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_pass_encoder0000.executeBundles([])
    
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.beginOcclusionQuery(1)
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline006);
    
    render_pass_encoder0011.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    texture500.destroy();
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0010.endOcclusionQuery()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0011.setPipeline(render_pipeline007);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device40.pushErrorScope("internal");
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
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    
    render_pass_encoder0000.setStencilReference(1);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_buffer500 = command_encoder500.finish();
    command_encoder401.insertDebugMarker("mymarker");
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture001.destroy();
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    buffer300.destroy()
    texture201.destroy();
    query002.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
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
    
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    query200.destroy()
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder0001.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer200.destroy()
    device50.pushErrorScope("internal");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder0001.setStencilReference(1);
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0011.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder4000.popDebugGroup()
    buffer301.destroy()
    buffer000.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query004.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group002);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const array3 = new Float32Array([0.0, 1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 0.25, -0.75, -0.5, 0.5, -1.0, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.0, -0.25, -0.75, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 0.0, 0.0, -0.75, 0.0, -0.5, -1.0, -1.0, 0.0, 0.25, 1.0, -0.25, 1.0, -0.25, -0.5, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -1.0, 1.0, -0.5, 0.75, 0.5, 0.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 0.75, 0.0, -0.75, -0.5, -0.75, -0.25, 0.25, ]);
    texture200.destroy();
    buffer004.destroy()
    
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder0011.popDebugGroup();
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    render_pass_encoder0000.setVertexBuffer(0, buffer003);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture501.destroy();
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const command_buffer401 = command_encoder401.finish();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder201.pushDebugGroup("mygroupmarker")
    query400.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query201.destroy()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("internal");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.setVertexBuffer(0, buffer006);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_pass_encoder0011.draw(3);
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer401.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
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
    render_pass_encoder0011.setStencilReference(1);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.beginOcclusionQuery(0)
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout007]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout007]
    });
    device40.pushErrorScope("validation");
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2010.setPipeline(render_pipeline201);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    buffer601.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    query000.destroy()
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2031.setPipeline(render_pipeline204);
    render_pass_encoder2021.setPipeline(render_pipeline207);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder2021.insertDebugMarker("marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    query003.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("internal");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("internal");
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query201
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder2021.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder600.insertDebugMarker("marker");
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    
    
    buffer600.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group003);
    compute_pass_encoder0000.popDebugGroup()
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer001, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0011.end();
    compute_pass_encoder3010.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0011, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    command_encoder302.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setVertexBuffer(0, buffer003);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group202);
    render_pass_encoder2030.setVertexBuffer(0, buffer206);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2021.setVertexBuffer(0, buffer202);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    command_encoder301.popDebugGroup()
    render_pass_encoder2010.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
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
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group203);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    command_encoder201.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group204);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder2011.setVertexBuffer(0, buffer205);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2031.setVertexBuffer(0, buffer209);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2031.end();
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2015, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    compute_pass_encoder3010.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.end();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder2031.drawIndirect(buffer209, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2010.end();
    render_pass_encoder2010.end();
    render_pass_encoder2031.end();
    render_pass_encoder0011.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2015, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder2011.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group005);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    device30.queue.submit([]);
    render_pass_encoder0010.setVertexBuffer(0, buffer0012);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    render_pass_encoder0000.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2020.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2031.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    device10.queue.submit([]);
    compute_pass_encoder3010.end();
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder3000.end();
    device70.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0010.draw(3);
    device70.queue.submit([]);
    render_pass_encoder0010.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    command_encoder001.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.end();
    device50.queue.submit([command_buffer500, ]);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder2020.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0010.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2021.drawIndirect(buffer2015, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0000.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2018, 0);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2030.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.draw(3);
    render_pass_encoder2031.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0011.endOcclusionQuery()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2021, 0);
    render_pass_encoder0001.popDebugGroup();
    device70.queue.submit([]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    render_pass_encoder0000.popDebugGroup();
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    render_pass_encoder2021.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    device40.queue.submit([]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder0011.end();
    render_pass_encoder0010.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0001.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer308, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    device40.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0015, 0);
    device60.queue.submit([]);
    device50.queue.submit([]);
    render_pass_encoder0000.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.end();
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0011.drawIndirect(buffer001, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2031.drawIndexed(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2021.drawIndirect(buffer2017, 0);
    compute_pass_encoder3000.end();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer309, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2021, 0);
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0011.popDebugGroup();
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3010, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3011, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3011, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    device60.queue.submit([]);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    device00.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder2010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    device20.queue.submit([command_buffer202, ]);
    device50.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    device50.queue.submit([]);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder2030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer004, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device60.queue.submit([]);
    render_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder0000.popDebugGroup()
    device60.queue.submit([]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0011, "uint16");
    device60.queue.submit([]);
    render_pass_encoder0011.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.end();
    device60.queue.submit([]);
    compute_pass_encoder3000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2026, 0);
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2026, 0);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    device50.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer2018, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0001.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    device70.queue.submit([]);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.popDebugGroup();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2012);
    device50.queue.submit([command_buffer500, ]);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    render_pass_encoder2031.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2021.setIndexBuffer(buffer2018, "uint16");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer000, "uint16");
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

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0011.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2021.end();
    device00.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    device50.queue.submit([]);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder2011.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2014);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0011.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    device60.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3020, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    device50.queue.submit([]);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0011.drawIndirect(buffer0015, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2038, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2038, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder0000.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0010.drawIndirect(buffer0015, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder0001.drawIndirect(buffer003, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0011.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer202, ]);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder2010.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2026, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.end();
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3021, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2010.drawIndirect(buffer2015, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2023, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    device10.queue.submit([]);
    render_pass_encoder0011.draw(3);
    render_pass_encoder0011.drawIndirect(buffer0011, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder2021.drawIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2031.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder0011.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2030.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    device50.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer2026, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.end();
    render_pass_encoder0011.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0011.end();
    render_pass_encoder0001.drawIndirect(buffer0011, 0);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    compute_pass_encoder3010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
}