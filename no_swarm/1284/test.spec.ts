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
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    query201.destroy()
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query202.destroy()
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    query200.destroy()
    
    
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query202.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer201.destroy()
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    render_bundle_encoder201.insertDebugMarker("marker");
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer202.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder200.popDebugGroup();
    
    query201.destroy()
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
    query202.destroy()
    buffer200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2001.popDebugGroup()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query202.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    render_bundle_encoder202.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
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
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query204.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    query202.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
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
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    compute_pass_encoder2001.insertDebugMarker("marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([0.5, 0.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, -0.75, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, 1.0, 1.0, 0.25, -0.5, -0.75, 0.0, 1.0, 0.25, 0.75, 0.0, 1.0, 0.75, -0.25, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 0.25, 0.75, 0.75, 1.0, 0.75, 0.75, 1.0, 0.5, -0.75, -0.25, -1.0, -0.75, 0.0, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.5, -0.25, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, 0.25, 0.0, -0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.0, 1.0, ]);
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query201.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
    render_bundle_encoder201.setPipeline(render_pipeline201);
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
        occlusionQuerySet: query201
    });
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    compute_pass_encoder2001.setBindGroup(0, bind_group200);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder2010.executeBundles([])
    
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    query206.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query201.destroy()
    query202.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder2001.popDebugGroup()
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer206.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture201
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
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
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    
    texture200.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    query203.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query100.destroy()
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2001.dispatchWorkgroups(100);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    compute_pass_encoder2000.popDebugGroup()
    query201.destroy()
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device20.queue.submit([]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device40.destroy();
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    query202.destroy()
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    compute_pass_encoder2001.end();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    buffer204.destroy()
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder200.popDebugGroup();
    buffer204.destroy()
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2020.setPipeline(render_pipeline201);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    query205.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    buffer2013.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder201.clearBuffer(buffer202);
    
    query200.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder200.copyBufferToBuffer(
        buffer2014,
        0,
        buffer208,
        0,
        400
    );
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
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

    render_bundle_encoder200.setBindGroup(0, bind_group206);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    render_bundle_encoder202.setVertexBuffer(0, buffer2012);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query204.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    buffer2014.destroy()
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    command_encoder201.resolveQuerySet(
        query205,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2021.setStencilReference(1);
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    buffer209.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2019, 0);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query205
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer208.destroy()
    
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
    device50.destroy();
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer202,
        0
    )
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    render_bundle_encoder400.popDebugGroup();
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_bundle_encoder202.setIndexBuffer(buffer2015, "uint16");
    
    texture203.destroy();
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
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
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder200.resolveQuerySet(
        query206,
        0,
        32,
        buffer207,
        0
    )
    render_pass_encoder2011.setPipeline(render_pipeline202);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2030.setPipeline(render_pipeline200);
    command_encoder202.copyBufferToBuffer(
        buffer206,
        0,
        buffer2019,
        0,
        400
    );
    render_pass_encoder2021.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group207);
    
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer2015.destroy()
    render_bundle_encoder202.drawIndexedIndirect(buffer2020, 0);
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
        occlusionQuerySet: query203
    });
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2031.setPipeline(render_pipeline203);
    const render_pass_encoder2012 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    compute_pass_encoder2010.popDebugGroup()
    buffer207.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder2020.popDebugGroup();
    
    render_bundle_encoder200.setVertexBuffer(0, buffer2012);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeBuffer(buffer2019, 0, array0, 0, array0.length);
    query200.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array1 = new Float32Array([-0.75, -1.0, -0.75, -0.25, -0.5, -0.75, 1.0, 1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, -0.25, -1.0, -0.25, -0.25, -0.25, 0.25, 0.0, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.25, -0.25, 0.75, 0.5, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.25, -0.5, 0.25, 0.75, -0.5, 0.0, -0.75, -0.5, 0.75, 0.0, -0.5, 0.5, 0.5, -0.25, -0.5, 0.5, -0.5, -1.0, 0.5, 0.25, -0.25, -0.75, 0.5, 0.25, 0.75, 0.25, 0.0, -1.0, -0.25, 0.25, 0.25, 0.25, 0.75, 0.0, 0.0, 0.75, -0.75, -0.5, 1.0, 0.25, 0.75, ]);
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    
    
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    texture202.destroy();
    render_pass_encoder2031.insertDebugMarker("marker");
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.pushDebugGroup("group_marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder200.drawIndirect(buffer2019, 0);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query207
    });
    render_pass_encoder2012.setPipeline(render_pipeline200);
    render_pass_encoder2011.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    
    device20.queue.writeBuffer(buffer2021, 0, array1, 0, array1.length);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query206.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder202.clearBuffer(buffer2015);
    render_pass_encoder2021.setStencilReference(1);
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setIndexBuffer(buffer207, "uint16");
    texture204.destroy();
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
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group208);
    command_encoder200.copyBufferToBuffer(
        buffer2015,
        0,
        buffer2012,
        0,
        400
    );
    
    render_pass_encoder2040.setPipeline(render_pipeline201);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.drawIndexed(3);
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2030.setStencilReference(1);
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer2020,
        0
    )
    
    query202.destroy()
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer208.destroy()
    
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    query205.destroy()
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer208,
        0
    )
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    command_encoder204.copyBufferToTexture(
        {
            buffer: buffer203
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder201.setIndexBuffer(buffer2019, "uint16");
    render_bundle_encoder201.popDebugGroup();
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    command_encoder204.copyBufferToBuffer(
        buffer2020,
        0,
        buffer2019,
        0,
        400
    );
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2012.insertDebugMarker("marker");
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2000.setPipeline(render_pipeline203);
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2011.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    render_pass_encoder2021.setVertexBuffer(0, buffer2014);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.setStencilReference(1);
    
    const array2 = new Float32Array([0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.75, -0.25, -0.75, -0.5, -0.75, -0.75, 0.0, -0.75, -0.75, -0.5, 1.0, -1.0, 0.25, -0.25, 0.25, 1.0, 0.25, 0.25, -0.5, -0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -0.25, -0.75, -0.5, 0.25, 0.5, -1.0, -1.0, 0.75, -1.0, 0.75, 0.75, 0.75, 0.0, -0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.25, 0.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.25, -1.0, 0.75, -0.5, 0.25, -0.5, -0.5, -0.25, -0.25, -0.5, 0.75, 0.25, -1.0, -0.5, 1.0, -0.75, -0.75, -0.5, -1.0, 0.0, 0.75, 0.25, 0.75, 0.75, -0.75, ]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    {
        await buffer2021.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2021.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2021.unmap();
        console.log(new Float32Array(data));
    }
    
    
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2030.setStencilReference(1);
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
        occlusionQuerySet: query204
    });
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group209);
    device20.queue.writeBuffer(buffer2019, 0, array2, 0, array2.length);
    render_bundle_encoder202.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.setPipeline(render_pipeline200);
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
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group2010);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer2020);
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2011);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
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
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group2012);
    render_pass_encoder2011.setVertexBuffer(0, buffer2018);
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2031.setVertexBuffer(0, buffer2031);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group2013);
    render_pass_encoder2031.drawIndirect(buffer206, 0);
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
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder2031.end();
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    render_pass_encoder2012.setBindGroup(0, bind_group2015);
    render_pass_encoder2021.drawIndirect(buffer2026, 0);
    render_pass_encoder2012.setVertexBuffer(0, buffer2028);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2021.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2012.drawIndirect(buffer2035, 0);
    render_pass_encoder2040.setVertexBuffer(0, buffer2012);
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2040.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2012.drawIndirect(buffer2014, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group2016);
    render_pass_encoder2010.setVertexBuffer(0, buffer200);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2038, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2040.end();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2030.end();
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2012.end();
    render_pass_encoder2010.end();
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2000.setVertexBuffer(0, buffer203);
    render_pass_encoder2000.drawIndirect(buffer2027, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    command_encoder201.popDebugGroup()
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2044, 0);
    render_pass_encoder2010.drawIndirect(buffer2019, 0);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group2018);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer2020);
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2012.setIndexBuffer(buffer2038, "uint16");
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2001.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2010.drawIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer208, 0);
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder2000.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2020.end();
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2048, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2026, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2000.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2040.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2001.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder2040.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2012.drawIndirect(buffer2030, 0);
    render_pass_encoder2012.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2012.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2044, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2011.end();
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2012.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder2031.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2029, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    compute_pass_encoder2001.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2049, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2000.drawIndirect(buffer2044, 0);
    render_pass_encoder2031.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer2022, 0);
    render_pass_encoder2011.drawIndirect(buffer2044, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2012.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2013, 0);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer2049, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2012.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2040.drawIndirect(buffer2038, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2044, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2050, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2035, "uint16");
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2012.drawIndirect(buffer2049, 0);
    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2054,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    render_pass_encoder2030.setIndexBuffer(buffer2029, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2040.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2049, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2050, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2055, 0);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2049, 0);
    render_pass_encoder2021.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer2041, "uint16");
    device20.queue.submit([command_buffer201, ]);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2012.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2021.popDebugGroup();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.end();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2057, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2012.drawIndirect(buffer2029, 0);
    render_pass_encoder2012.drawIndirect(buffer2049, 0);
    render_pass_encoder2001.drawIndirect(buffer2055, 0);
    render_pass_encoder2021.drawIndirect(buffer2049, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2057, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2049, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2001.setBindGroup(0, bind_group2022);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder2031.drawIndirect(buffer2019, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2012.drawIndirect(buffer2020, 0);
    render_pass_encoder2012.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.end();
    device10.queue.submit([]);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2044, 0);
    render_pass_encoder2012.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.endOcclusionQuery()
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2021.drawIndirect(buffer2057, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2050, 0);
    render_pass_encoder2010.end();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    render_pass_encoder2001.end();
    render_pass_encoder2012.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2040.drawIndirect(buffer2044, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2063,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2024);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2041, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2012.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.drawIndirect(buffer207, 0);
    render_pass_encoder2000.popDebugGroup();
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2012.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2012.drawIndexedIndirect(buffer2056, 0);
}