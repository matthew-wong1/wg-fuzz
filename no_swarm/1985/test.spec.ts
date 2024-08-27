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
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array0 = new Float32Array([-0.75, -0.5, -0.25, 0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.5, 0.5, 0.0, -0.5, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, 0.0, 0.75, -0.5, 0.0, 0.25, -0.25, 0.5, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -1.0, 0.0, -0.25, -0.5, 0.0, 0.25, 0.0, 0.0, -1.0, 0.25, 1.0, 0.5, -0.25, 0.75, 0.75, 0.5, 0.75, -0.25, -0.75, -0.5, -0.25, 0.0, 0.5, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, -1.0, -0.75, 1.0, 0.5, -0.75, 0.75, 0.5, 0.25, 0.0, 1.0, 0.75, 0.25, 0.0, -0.5, 0.0, 0.5, 0.5, -0.25, -0.5, -0.25, 1.0, 1.0, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.75, -1.0, -0.75, -1.0, -0.5, 0.25, 0.5, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    command_encoder201.insertDebugMarker("mymarker");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    
    device20.pushErrorScope("internal");
    device10.destroy();
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device20.pushErrorScope("validation");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.insertDebugMarker("mymarker");
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
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
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    texture200.destroy();
    command_encoder203.pushDebugGroup("mygroupmarker")
    query200.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array1 = new Float32Array([-0.75, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, 0.25, 0.75, 0.75, -0.5, -1.0, -0.5, 0.5, 0.75, 0.5, 0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, -1.0, 0.25, -0.75, 0.25, 0.0, -0.25, 0.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.0, -0.75, 0.25, -0.75, -0.25, 0.0, -0.5, -1.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.0, 0.5, -0.25, -0.5, -0.75, -1.0, 1.0, 1.0, 1.0, 0.75, 0.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.25, 0.0, 1.0, -0.5, -1.0, -1.0, -0.25, -0.5, 0.25, 0.25, -0.75, 0.25, -0.75, 0.25, -0.5, ]);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder202.popDebugGroup()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.pushErrorScope("internal");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setStencilReference(1);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device10.queue.submit([]);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder201.popDebugGroup()
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2020.insertDebugMarker("marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
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
    query000.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    render_pass_encoder2010.setStencilReference(1);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.popDebugGroup()
    
    compute_pass_encoder2030.setPipeline(compute_pipeline202);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.setStencilReference(1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    buffer000.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder2040.setPipeline(compute_pipeline202);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    render_pass_encoder2000.setStencilReference(1);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group200);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer001.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2001.setPipeline(render_pipeline200);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    query000.destroy()
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2010.setStencilReference(1);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.executeBundles([])
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2001.popDebugGroup();
    render_bundle_encoder202.popDebugGroup();
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder2001.setStencilReference(1);
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
        occlusionQuerySet: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder2050.setPipeline(compute_pipeline200);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group201);
    compute_pass_encoder0010.popDebugGroup()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2050.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    compute_pass_encoder0010.end();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    command_encoder002.insertDebugMarker("mymarker");
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder2020.executeBundles([])
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
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
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer201.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    buffer204.destroy()
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.clearBuffer(buffer004);
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2020.executeBundles([])
    
    
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer005.destroy()
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_buffer002 = command_encoder002.finish();
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer204,
        0
    )
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    query201.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    {
        await buffer2010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2010.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2012, 0);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const array2 = new Float32Array([0.25, -0.25, -0.5, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, -1.0, -0.25, 0.0, -0.75, -1.0, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, 1.0, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, 0.75, 0.5, 0.75, 1.0, -0.25, 1.0, 0.5, 0.0, -1.0, -0.25, -1.0, 1.0, -0.25, 0.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.75, -0.5, 0.75, -0.5, 0.75, 0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, -0.5, 1.0, -0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, 0.5, 0.75, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, 0.75, 0.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group204);
    buffer206.destroy()
    
    buffer209.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer2011, 0, array1, 0, array1.length);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer205.destroy()
    render_pass_encoder0010.setStencilReference(1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer2014.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2010.pushDebugGroup("group_marker");
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2012, 0, array0, 0, array0.length);
    buffer003.destroy()
    render_bundle_encoder000.setIndexBuffer(buffer008, "uint16");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0000.setPipeline(render_pipeline003);
    render_bundle_encoder002.setPipeline(render_pipeline002);
    device20.pushErrorScope("internal");
    device30.destroy();
    device40.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer2012.destroy()
    render_pass_encoder0010.setVertexBuffer(0, buffer005);
    buffer2011.destroy()
    
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    
    
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    device20.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.popDebugGroup();
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0010.setIndexBuffer(buffer008, "uint16");
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder2001.setStencilReference(1);
    command_encoder205.copyBufferToBuffer(
        buffer2012,
        0,
        buffer202,
        0,
        400
    );
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder202.setPipeline(render_pipeline201);
    texture202.destroy();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group206);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    render_pass_encoder2001.setVertexBuffer(0, buffer2016);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2050.insertDebugMarker("marker")
    buffer006.destroy()
    render_pass_encoder2050.insertDebugMarker("marker");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.setVertexBuffer(0, buffer0012);
    
    buffer2017.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    buffer2013.destroy()
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder2020.setPipeline(compute_pipeline207);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder201.setPipeline(render_pipeline201);
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setIndexBuffer(buffer001, "uint16");
    render_bundle_encoder000.drawIndexedIndirect(buffer004, 0);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const array3 = new Float32Array([-0.25, -0.25, 0.25, 0.75, 0.0, 0.0, -0.5, 0.0, 0.75, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -0.75, -0.5, -0.25, -1.0, -1.0, 0.5, -0.25, -0.5, 1.0, -0.75, -0.5, -0.25, -1.0, -0.75, 0.0, -1.0, 0.0, 0.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.25, 0.75, 0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -0.75, 0.5, -0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 0.0, -1.0, -1.0, -1.0, 0.0, -1.0, 0.75, 0.25, -0.75, 0.5, -1.0, -0.25, -0.75, 1.0, -0.25, 1.0, 0.5, 0.0, 1.0, -0.75, 0.25, 0.5, -0.5, -0.75, 0.5, 0.5, 0.5, -0.75, 0.0, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, ]);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0010.setStencilReference(1);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture000.destroy();
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder000.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2019, 0);
    buffer002.destroy()
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer003, 0);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer200.destroy()
    buffer008.destroy()
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer2015.destroy()
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group207);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group208);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder2050.executeBundles([])
    command_encoder203.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2050.setPipeline(render_pipeline201);
    render_pass_encoder2001.endOcclusionQuery()
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group209);
    command_encoder100.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.setPipeline(render_pipeline203);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group2010);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2040.end();
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group2011);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group004);
    render_pass_encoder2010.setVertexBuffer(0, buffer208);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2020.drawIndirect(buffer2027, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder0000.end();
    render_pass_encoder2050.setVertexBuffer(0, buffer201);
    compute_pass_encoder2050.end();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    command_encoder204.popDebugGroup()
    render_pass_encoder2050.draw(3);
    render_pass_encoder0000.setVertexBuffer(0, buffer000);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2030, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2000.draw(3);
    compute_pass_encoder2040.popDebugGroup()
    command_encoder200.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder0000.end();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group006);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2012);
    render_pass_encoder2011.setVertexBuffer(0, buffer202);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    const command_buffer204 = command_encoder204.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder0000.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2011.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2050.end();
    compute_pass_encoder2030.end();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2020.end();
    const command_buffer205 = command_encoder205.finish();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2033, 0);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0021, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0021, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder2020.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2050.drawIndirect(buffer203, 0);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2013);
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    compute_pass_encoder2050.end();
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2019, 0);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndirect(buffer2010, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2036, 0);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder2011.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer2034, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2050.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2040.popDebugGroup()
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0025, 0);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2014);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2031, "uint16");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2039, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0000.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2040, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2050.draw(3);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.end();
    render_pass_encoder2020.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2001.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2043, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2043, 0);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2016);
    render_pass_encoder2020.drawIndexedIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndirect(buffer2043, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2017);
    compute_pass_encoder2040.end();
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2046, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2049, 0);
    compute_pass_encoder0010.popDebugGroup()
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.drawIndirect(buffer2048, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2018);
    render_pass_encoder2050.drawIndirect(buffer2040, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder2050.endOcclusionQuery()
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2019);
    render_pass_encoder2010.drawIndexedIndirect(buffer2048, 0);
    device20.queue.submit([command_buffer205, ]);
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2020);
    compute_pass_encoder2040.end();
    render_pass_encoder2000.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2034, 0);
    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2057,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2021);
    compute_pass_encoder2050.end();
    render_pass_encoder2010.end();
    compute_pass_encoder0000.end();
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2022);
    render_pass_encoder0010.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer003, 0);
    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2061,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2050.drawIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2020, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2020.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2055, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder0010.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2062, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0010.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2012, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder2020.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2001.end();
    render_pass_encoder2050.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2024);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2050.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2049, 0);
    compute_pass_encoder2040.end();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2062, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2032, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2011.draw(3);
    compute_pass_encoder0010.end();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2030, 0);
    device30.queue.submit([]);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2050.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2030, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    compute_pass_encoder2040.end();
    render_pass_encoder2010.drawIndirect(buffer2062, 0);
    render_pass_encoder2001.drawIndirect(buffer2058, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    render_pass_encoder2011.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2063, 0);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0012);
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2025);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0000.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2057, "uint16");
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2067, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2067, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder2050.popDebugGroup();
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2026);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder2050.draw(3);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2000.end();
    compute_pass_encoder0010.end();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2049, 0);
    device00.queue.submit([]);
    device00.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2043, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2068, "uint16");
    compute_pass_encoder2040.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2050.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2011.drawIndirect(buffer2049, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2071, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2071, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2050.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2011.end();
    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2073,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2027);
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2028);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer2076, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2029);
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    compute_pass_encoder0010.popDebugGroup()
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2030);
    render_pass_encoder2050.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2047, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0034, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2001.setIndexBuffer(buffer2063, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2067, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.end();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2050.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2075, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2020.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2081, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.end();
    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2083,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2031);
    render_pass_encoder2000.drawIndexedIndirect(buffer2071, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2049, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0035, 0);
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0013);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0038, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2084, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2084, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2001.end();
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    device20.queue.submit([command_buffer200, command_buffer203, command_buffer204, ]);
    render_pass_encoder0010.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer009, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2010.drawIndirect(buffer2059, 0);
    render_pass_encoder2001.drawIndirect(buffer2067, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0015);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2032);
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.popDebugGroup()
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2033);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2089, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2089, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2050.drawIndirect(buffer2067, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2013, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0010.end();
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2067, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.drawIndirect(buffer2084, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndirect(buffer2089, 0);
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2000.end();
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder2020.end();
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2034);
    render_pass_encoder2050.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2039, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2035);
    render_pass_encoder0000.popDebugGroup();
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2036);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2086, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0048, 0);
    render_pass_encoder2010.drawIndirect(buffer2091, 0);
    render_pass_encoder2011.drawIndirect(buffer2039, 0);
    device10.queue.submit([]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2092, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndirect(buffer2062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2096, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2096, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2097, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2097, 0);
    render_pass_encoder2011.drawIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2050.end();
    compute_pass_encoder2040.end();
    render_pass_encoder2000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2010.drawIndirect(buffer2034, 0);
    compute_pass_encoder2020.end();
    device20.queue.submit([command_buffer205, ]);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0010.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2030.popDebugGroup()
    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2099,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2037);
    render_pass_encoder2010.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2078, "uint16");
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2014, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0010.drawIndirect(buffer0012, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndirect(buffer2097, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2010.drawIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20100, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20100, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2050.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2071, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2049, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2050.setIndexBuffer(buffer2087, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2081, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20101, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20101, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder2020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder2020.drawIndirect(buffer2096, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder2040.end();
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2037, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2084, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.drawIndirect(buffer2084, 0);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer001, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20102, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20102, 0);
    render_pass_encoder0010.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0019);
    render_pass_encoder2050.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2038);
    render_pass_encoder2000.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0000.drawIndirect(buffer0045, 0);
    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20106,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2039);
    render_pass_encoder2011.drawIndirect(buffer2070, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0010.end();
    render_pass_encoder2020.drawIndirect(buffer20102, 0);
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20107, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20107, 0);
    render_pass_encoder2001.drawIndirect(buffer2048, 0);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder2010.setIndexBuffer(buffer2053, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20108, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20108, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2020.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    compute_pass_encoder2050.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer2040, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20102, "uint16");
    render_pass_encoder0000.popDebugGroup();
    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20110,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2040);
    render_pass_encoder2011.drawIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2049, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2051, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2027, "uint16");
    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20112,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2041);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder2001.drawIndirect(buffer2076, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20102, 0);
    render_pass_encoder2010.drawIndirect(buffer2043, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2089, 0);
    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20114,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2042);
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20115, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20101, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer2098, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2074, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20116, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20116, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2050.end();
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20118,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2043);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.drawIndirect(buffer2095, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer2067, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.setIndexBuffer(buffer2025, "uint16");
    compute_pass_encoder2030.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.end();
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2014, 0);
    render_pass_encoder2011.drawIndirect(buffer20115, 0);
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndirect(buffer2048, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    device20.queue.submit([]);
    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20120,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2044);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer20116, 0);
    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20121,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20122,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2045);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2076, 0);
    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20124,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2046);
    render_pass_encoder2000.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2097, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20125, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20125, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20101, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder2010.drawIndirect(buffer2092, 0);
    render_pass_encoder2000.drawIndirect(buffer2039, 0);
    device00.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2096, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2070, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder2011.drawIndirect(buffer20113, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2097, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20127,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2047);
    render_pass_encoder2000.drawIndexedIndirect(buffer2097, 0);
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer20125, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20128, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20128, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndirect(buffer20102, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndirect(buffer20128, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20129, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20129, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0060, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0000.draw(3);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2050.drawIndirect(buffer2080, 0);
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder2050.popDebugGroup()
    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20131,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2048);
    render_pass_encoder2010.drawIndirect(buffer20102, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2064, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0048, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.drawIndirect(buffer0035, 0);
    compute_pass_encoder0000.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20132, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20132, 0);
    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20134,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2049);
    render_pass_encoder2010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder0000.drawIndirect(buffer0034, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    compute_pass_encoder2050.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer20102, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder2020.drawIndirect(buffer2075, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2001.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0024);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20135, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20135, 0);
    render_pass_encoder2000.drawIndirect(buffer2069, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer20102, 0);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.drawIndirect(buffer20116, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    device00.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2000.setIndexBuffer(buffer20122, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20137,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2050);
    render_pass_encoder2020.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2075, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20138, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20138, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder2000.drawIndirect(buffer20134, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2083, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2050.setIndexBuffer(buffer2038, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer20132, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20139, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20139, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.end();
    compute_pass_encoder2050.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer20129, 0);
    render_pass_encoder0000.drawIndirect(buffer0030, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2081, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2076, 0);
    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20141,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2051);
    render_pass_encoder2000.drawIndexedIndirect(buffer20138, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20143,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2052);
    render_pass_encoder2010.drawIndirect(buffer2071, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.drawIndirect(buffer20102, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0045, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2011.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20144, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20144, 0);
    render_pass_encoder2001.drawIndirect(buffer20129, 0);
    render_pass_encoder0000.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.drawIndirect(buffer20111, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20102, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2011.drawIndirect(buffer2097, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2010.drawIndirect(buffer20128, 0);
    render_pass_encoder0000.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0047, 0);
    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20146,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2053);
    render_pass_encoder2000.drawIndirect(buffer2084, 0);
    render_pass_encoder2010.end();
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2048, 0);
    compute_pass_encoder0010.end();
    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20148,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2054);
    render_pass_encoder2000.drawIndirect(buffer20101, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20149, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20149, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2064, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20150, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20150, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2023, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0062, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2068, 0);
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0026);
    render_pass_encoder2001.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder2011.drawIndirect(buffer2086, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2001.drawIndirect(buffer2065, 0);
    render_pass_encoder2010.drawIndirect(buffer2089, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2020.drawIndirect(buffer2076, 0);
    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20152,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2055);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0072, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer20150, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20135, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20102, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2011.end();
    render_pass_encoder2050.drawIndirect(buffer2071, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2001.drawIndirect(buffer2049, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0027);
    render_pass_encoder2011.drawIndirect(buffer2076, 0);
    render_pass_encoder2050.popDebugGroup();
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    render_pass_encoder2020.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder2050.drawIndirect(buffer20149, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0029);
    render_pass_encoder0010.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20110, "uint16");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20153, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20153, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20105, 0);
    render_pass_encoder2000.drawIndirect(buffer20100, 0);
    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20155,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2056);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2076, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20156, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20156, 0);
    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20158,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2057);
    render_pass_encoder0010.drawIndexedIndirect(buffer0022, 0);
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    device00.queue.submit([]);
    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20160,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2058);
    render_pass_encoder2020.drawIndexedIndirect(buffer20150, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer20149, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer20156, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2050.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2001.drawIndirect(buffer20144, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20161, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20161, 0);
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2058, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.end();
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20144, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20138, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder2050.drawIndirect(buffer20135, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20152, 0);
    render_pass_encoder2011.drawIndirect(buffer20144, 0);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder0010.drawIndirect(buffer0066, 0);
    render_pass_encoder0010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer20118, 0);
    render_pass_encoder2010.setIndexBuffer(buffer20118, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0067, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20162, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20162, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer20161, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2048, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer20108, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20163, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20163, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20128, "uint16");
    render_pass_encoder2000.end();
    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20165,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2059);
    render_pass_encoder2000.drawIndirect(buffer2080, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20150, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2067, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2048, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer20116, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2096, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20166, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20166, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer20101, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndirect(buffer20163, 0);
    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20167,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20168,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2060);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2048, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder2020.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2061 = device20.createBindGroup({
        label: "bind_group2061",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20169,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20170,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2061);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2067, 0);
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder0000.drawIndirect(buffer0017, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20110, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.drawIndirect(buffer20163, 0);
    render_pass_encoder2000.setIndexBuffer(buffer20121, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer20139, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20139, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20166, 0);
    const buffer20171 = device20.createBuffer({
        label: "buffer20171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20172 = device20.createBuffer({
        label: "buffer20172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2062 = device20.createBindGroup({
        label: "bind_group2062",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20172,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2062);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2011.drawIndirect(buffer20121, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer20116, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20121, 0);
    render_pass_encoder2010.drawIndirect(buffer20128, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([]);
    const buffer20173 = device20.createBuffer({
        label: "buffer20173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20174 = device20.createBuffer({
        label: "buffer20174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2063 = device20.createBindGroup({
        label: "bind_group2063",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20174,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2063);
    render_pass_encoder2001.drawIndirect(buffer2045, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2067, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder2011.drawIndirect(buffer20100, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2084, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20138, 0);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2084, 0);
    render_pass_encoder2001.drawIndirect(buffer2089, 0);
    render_pass_encoder2001.drawIndirect(buffer20124, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20160, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2011.drawIndirect(buffer2030, 0);
    render_pass_encoder2011.drawIndirect(buffer2070, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0021, 0);
    render_pass_encoder2020.drawIndirect(buffer2075, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0030);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0081, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0081, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2088, "uint16");
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20175 = device20.createBuffer({
        label: "buffer20175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20175, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20175, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer20102, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.drawIndirect(buffer20135, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer20149, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20149, 0);
    render_pass_encoder2020.drawIndirect(buffer2085, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20102, 0);
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.drawIndirect(buffer2033, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder2001.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20149, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer20125, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer20132, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer20116, 0);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    render_pass_encoder2050.drawIndirect(buffer2043, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2070, 0);
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder2010.drawIndirect(buffer2076, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer20109, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2011.setIndexBuffer(buffer20167, "uint16");
    render_pass_encoder2011.drawIndirect(buffer20118, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer20161, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2050.drawIndirect(buffer20148, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2050.drawIndirect(buffer20132, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer20168, 0);
    device00.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2093, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2000.drawIndirect(buffer20102, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20135, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20153, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder2001.drawIndirect(buffer20115, 0);
    render_pass_encoder2011.setIndexBuffer(buffer20133, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder2001.end();
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder2000.end();
    const buffer20176 = device20.createBuffer({
        label: "buffer20176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20177 = device20.createBuffer({
        label: "buffer20177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2064 = device20.createBindGroup({
        label: "bind_group2064",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20177,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2064);
    render_pass_encoder2000.setIndexBuffer(buffer2078, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20175, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2073, "uint16");
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2011.drawIndirect(buffer2071, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20140, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.drawIndirect(buffer20150, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20125, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2050.drawIndirect(buffer20128, 0);
    render_pass_encoder0010.end();
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer20100, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20163, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0034, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0084, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2087, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer20125, 0);
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer20116, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndirect(buffer2071, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20178 = device20.createBuffer({
        label: "buffer20178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20178, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20178, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer20102, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20179 = device20.createBuffer({
        label: "buffer20179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20179, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20179, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20119, 0);
    render_pass_encoder0000.drawIndirect(buffer0060, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20103, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer20163, 0);
    render_pass_encoder2010.drawIndirect(buffer2040, 0);
    render_pass_encoder0010.drawIndirect(buffer0021, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20180 = device20.createBuffer({
        label: "buffer20180",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20180, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20180, 0);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.drawIndirect(buffer20129, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0033);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer20124, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20180, 0);
    render_pass_encoder2050.drawIndirect(buffer2067, 0);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder2050.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder2010.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const buffer20181 = device20.createBuffer({
        label: "buffer20181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20182 = device20.createBuffer({
        label: "buffer20182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2065 = device20.createBindGroup({
        label: "bind_group2065",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20182,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2065);
    render_pass_encoder2001.setIndexBuffer(buffer20153, "uint16");
    render_pass_encoder2011.drawIndirect(buffer20144, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder0010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.drawIndirect(buffer20129, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20183 = device20.createBuffer({
        label: "buffer20183",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20183, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20183, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0088, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2050.setIndexBuffer(buffer20126, "uint16");
    render_pass_encoder2020.drawIndirect(buffer20111, 0);
    device10.queue.submit([]);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20184 = device20.createBuffer({
        label: "buffer20184",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20184, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20184, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder0000.drawIndirect(buffer0020, 0);
    render_pass_encoder2020.drawIndirect(buffer20161, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    const buffer20185 = device20.createBuffer({
        label: "buffer20185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20186 = device20.createBuffer({
        label: "buffer20186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2066 = device20.createBindGroup({
        label: "bind_group2066",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20186,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2066);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer20135, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2068, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20187 = device20.createBuffer({
        label: "buffer20187",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20187, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20187, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20162, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder2001.drawIndirect(buffer20116, 0);
    render_pass_encoder0000.drawIndirect(buffer0051, 0);
    render_pass_encoder2011.drawIndirect(buffer20107, 0);
    compute_pass_encoder2050.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2081, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder2011.setIndexBuffer(buffer20144, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2070, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0091, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0091, 0);
    render_pass_encoder2011.drawIndirect(buffer2083, 0);
    render_pass_encoder2050.drawIndirect(buffer2066, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2001.setIndexBuffer(buffer20122, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0010.drawIndirect(buffer0067, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2030.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0092, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0035);
    render_pass_encoder2010.drawIndirect(buffer2067, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2040, "uint16");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20188 = device20.createBuffer({
        label: "buffer20188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20188, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20188, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0076, 0);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20189 = device20.createBuffer({
        label: "buffer20189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20189, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20189, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer20166, 0);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0091, 0);
    compute_pass_encoder0000.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0095, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0095, 0);
    const buffer20190 = device20.createBuffer({
        label: "buffer20190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20191 = device20.createBuffer({
        label: "buffer20191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2067 = device20.createBindGroup({
        label: "bind_group2067",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20191,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2067);
    render_pass_encoder0000.end();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer20173, 0);
    render_pass_encoder2010.drawIndirect(buffer20114, 0);
    render_pass_encoder2000.end();
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20192 = device20.createBuffer({
        label: "buffer20192",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20192, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20192, 0);
    const buffer20193 = device20.createBuffer({
        label: "buffer20193",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20194 = device20.createBuffer({
        label: "buffer20194",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2068 = device20.createBindGroup({
        label: "bind_group2068",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20193,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20194,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2068);
    render_pass_encoder2000.drawIndirect(buffer20162, 0);
    compute_pass_encoder2040.popDebugGroup()
    const uint32_2050 = new Uint32Array(3);

    uint32_2050[0] = 100;
    uint32_2050[1] = 1;
    uint32_2050[2] = 1;

    const buffer20195 = device20.createBuffer({
        label: "buffer20195",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20195, 0, uint32_2050, 0, uint32_2050.length);

    compute_pass_encoder2050.dispatchWorkgroupsIndirect(buffer20195, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2062, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer20153, 0);
    const buffer20196 = device20.createBuffer({
        label: "buffer20196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20197 = device20.createBuffer({
        label: "buffer20197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2069 = device20.createBindGroup({
        label: "bind_group2069",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20197,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2069);
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndirect(buffer2050, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer20198 = device20.createBuffer({
        label: "buffer20198",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20198, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer20198, 0);
    render_pass_encoder2010.setIndexBuffer(buffer20154, "uint16");
    compute_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer20115, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2047, 0);
    const buffer20199 = device20.createBuffer({
        label: "buffer20199",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20200 = device20.createBuffer({
        label: "buffer20200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2070 = device20.createBindGroup({
        label: "bind_group2070",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20199,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20200,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2070);
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndirect(buffer20139, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20129, 0);
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder0010.drawIndirect(buffer0072, 0);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0010.popDebugGroup();
    const buffer20201 = device20.createBuffer({
        label: "buffer20201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20202 = device20.createBuffer({
        label: "buffer20202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2071 = device20.createBindGroup({
        label: "bind_group2071",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20202,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2071);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer20203 = device20.createBuffer({
        label: "buffer20203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20204 = device20.createBuffer({
        label: "buffer20204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2072 = device20.createBindGroup({
        label: "bind_group2072",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20204,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2072);
    const buffer20205 = device20.createBuffer({
        label: "buffer20205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20206 = device20.createBuffer({
        label: "buffer20206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2073 = device20.createBindGroup({
        label: "bind_group2073",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20206,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2073);
    render_pass_encoder2020.drawIndexedIndirect(buffer20132, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer20192, 0);
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer2097, 0);
    const buffer20207 = device20.createBuffer({
        label: "buffer20207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20208 = device20.createBuffer({
        label: "buffer20208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2074 = device20.createBindGroup({
        label: "bind_group2074",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20208,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2074);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20161, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20103, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0072, "uint16");
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2020.drawIndirect(buffer20129, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0098, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0098, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2061, 0);
    compute_pass_encoder2040.end();
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer20162, 0);
    render_pass_encoder2011.setIndexBuffer(buffer20108, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer20150, 0);
    render_pass_encoder2000.drawIndirect(buffer2089, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2075, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00100,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0037);
    const buffer20209 = device20.createBuffer({
        label: "buffer20209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20210 = device20.createBuffer({
        label: "buffer20210",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2075 = device20.createBindGroup({
        label: "bind_group2075",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20210,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2075);
    render_pass_encoder2010.drawIndexedIndirect(buffer20195, 0);
    render_pass_encoder2001.drawIndirect(buffer20132, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20128, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer20149, 0);
    const buffer20211 = device20.createBuffer({
        label: "buffer20211",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20212 = device20.createBuffer({
        label: "buffer20212",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2076 = device20.createBindGroup({
        label: "bind_group2076",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20211,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20212,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group2076);
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer20185, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.end();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.end();
    compute_pass_encoder2020.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer20192, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.setIndexBuffer(buffer20165, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder2050.popDebugGroup()
    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00102,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0038);
    render_pass_encoder2001.drawIndirect(buffer20153, 0);
    render_pass_encoder2011.drawIndirect(buffer20127, 0);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer20179, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndirect(buffer20188, 0);
    render_pass_encoder2001.drawIndirect(buffer2039, 0);
    render_pass_encoder2000.drawIndirect(buffer20192, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00103, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00103, 0);
    compute_pass_encoder2050.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer20125, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer20108, 0);
    render_pass_encoder2010.drawIndirect(buffer2040, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer20163, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer20195, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    device20.queue.submit([]);
}