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
    const array0 = new Float32Array([0.5, -0.75, 0.0, 0.75, -0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -0.25, -1.0, -1.0, 0.0, -0.25, 0.0, 0.0, 0.5, -0.5, 1.0, 0.5, -0.75, -1.0, -1.0, 0.5, -0.5, -0.5, 0.5, -0.25, -1.0, -1.0, -0.5, 0.5, 1.0, -0.5, -0.75, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 1.0, -0.25, 1.0, 1.0, 0.75, -0.25, -0.25, -0.75, 0.75, 0.0, 1.0, -0.25, -0.75, -1.0, -0.5, 1.0, 0.25, -0.25, 0.25, -0.25, 1.0, -1.0, 0.5, 1.0, -0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 0.5, 0.75, 1.0, -1.0, 0.5, 0.25, 0.0, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.25, -1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.destroy();
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.25, -0.75, -0.5, 1.0, 1.0, 0.75, 1.0, -1.0, -0.75, 0.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.0, -0.5, 0.5, 0.75, -0.5, 0.5, 0.5, 1.0, 0.25, -1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, 1.0, 1.0, -1.0, -1.0, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -1.0, -0.25, -1.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.25, 0.75, -0.25, 0.0, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, -0.75, -0.5, 0.0, 0.5, 1.0, -0.25, -0.5, 0.75, 0.5, 0.75, 0.0, -0.75, -0.75, 0.25, -0.5, -0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.0, 0.5, -0.25, 0.25, 0.75, -1.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    texture200.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture202.destroy();
    
    texture200.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.insertDebugMarker("mymarker");
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2000.setPipeline(render_pipeline201);
    
    const array2 = new Float32Array([-0.25, 0.0, -0.5, 0.75, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, -0.75, 0.5, 0.25, 0.0, 0.0, -0.25, -0.25, -1.0, -1.0, -0.5, -0.25, -1.0, -0.75, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 0.25, -1.0, -0.5, -0.5, -0.25, -0.5, 0.25, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, 0.75, 0.25, 0.5, -0.5, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, 0.25, 0.75, 1.0, -0.75, -0.75, -0.5, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.0, -0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 1.0, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    buffer203.destroy()
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array3 = new Float32Array([0.5, 1.0, 0.75, -0.25, 0.25, -1.0, 1.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.5, 0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 1.0, -1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 0.25, -0.5, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -0.75, -0.25, 0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 1.0, 0.0, -1.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 1.0, 0.25, 0.25, 0.75, 0.5, -1.0, 0.5, 0.25, ]);
    buffer202.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: query202
    });
    render_bundle_encoder200.popDebugGroup();
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
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
        occlusionQuerySet: query200
    });
    buffer201.destroy()
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder202.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2010.setPipeline(render_pipeline200);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
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
    device20.queue.submit([]);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    texture201.destroy();
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder201.popDebugGroup();
    query202.destroy()
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer206.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer205.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder2021.executeBundles([])
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2021.executeBundles([])
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: query203
    });
    query203.destroy()
    
    query201.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2021.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query202.destroy()
    render_pass_encoder2021.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
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
    
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder202.popDebugGroup();
    query202.destroy()
    query201.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder2021.executeBundles([render_bundle_encoder201, ])
    query203.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group203);
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer204.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer205
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
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
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
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.destroy();
    render_pass_encoder2021.setVertexBuffer(0, buffer2010);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.popDebugGroup();
    const array4 = new Float32Array([0.5, -0.25, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, -0.75, -0.75, 0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -0.5, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 0.25, -0.75, -1.0, -0.75, 0.0, 0.75, -0.5, -0.25, -0.5, 1.0, 0.75, 0.5, 0.75, -1.0, -1.0, -0.5, -0.5, 0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 0.25, -1.0, -0.75, 0.75, 1.0, 1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.0, -0.25, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, 1.0, -0.75, ]);
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2011.setPipeline(render_pipeline200);
    buffer2010.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.setVertexBuffer(0, buffer203);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.drawIndirect(buffer204, 0);
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    
    
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
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
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group205);
    
    buffer2011.destroy()
    render_pass_encoder2001.beginOcclusionQuery(0)
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
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
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group206);
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
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
    command_encoder202.clearBuffer(buffer2014);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group207);
    buffer2013.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_pass_encoder2011.setVertexBuffer(0, buffer2017);
    render_pass_encoder2021.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
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
    const texture_view2032 = texture203.createView({ label: "texture_view2032" });
    buffer2017.destroy()
    render_bundle_encoder202.finish();
    {
        await buffer2016.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer2016.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer2016.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder202.clearBuffer(buffer2011);
    
    device20.pushErrorScope("validation");
    buffer208.destroy()
    buffer207.destroy()
    render_pass_encoder2011.beginOcclusionQuery(0)
    render_pass_encoder2020.draw(3);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer2014.destroy()
    
    texture204.destroy();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder202.drawIndirect(buffer208, 0);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder201.setVertexBuffer(0, buffer2015);
    render_pass_encoder2011.endOcclusionQuery()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_bundle_encoder201.drawIndirect(buffer2011, 0);
    
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.destroy();
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer2018,
        0
    )
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture001.destroy();
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2010.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2018, 0, array0, 0, array0.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    texture200.destroy();
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    
    render_pass_encoder2040.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer2015, 0, array2, 0, array2.length);
    query201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder201.finish();
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer202.destroy()
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    buffer2012.destroy()
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.draw(3);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.endOcclusionQuery()
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    query200.destroy()
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const array5 = new Float32Array([-0.25, 0.5, 0.0, -1.0, -0.5, -1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, 0.0, 0.25, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, 0.75, -0.75, -1.0, -0.5, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, 0.5, -0.25, -1.0, 0.0, -1.0, -0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -1.0, -1.0, -1.0, -1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 0.5, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, -0.5, -1.0, -1.0, -0.25, 0.5, -0.75, -0.5, -0.75, 0.25, -0.75, 0.75, ]);
    const array6 = new Float32Array([-0.5, 0.25, -0.25, -0.25, -1.0, 0.25, -0.75, -0.75, -0.25, 0.75, -0.5, 0.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.75, 0.75, -1.0, -1.0, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 1.0, 0.75, -0.75, 0.0, -0.75, -0.25, 1.0, -0.5, -0.25, -0.5, 0.25, -1.0, 0.75, -0.25, -0.75, -0.75, -0.25, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, -0.5, -0.5, -0.75, 0.5, -0.5, -0.5, 0.5, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.5, 0.25, -0.25, 1.0, 0.25, -1.0, 0.75, -0.25, -0.25, -0.75, 0.75, 0.75, 0.25, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, -0.75, -0.75, 1.0, 0.0, 0.0, 0.25, 0.75, 0.25, 0.75, ]);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_bundle_encoder200.setVertexBuffer(0, buffer2019);
    command_encoder200.copyBufferToBuffer(
        buffer2013,
        0,
        buffer207,
        0,
        400
    );
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2013,
            },
        ],
        occlusionQuerySet: query203
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer2020.destroy()
    render_pass_encoder2031.setPipeline(render_pipeline203);
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2032,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    render_bundle_encoder200.setIndexBuffer(buffer2010, "uint16");
    command_encoder204.copyTextureToTexture(
        {
            texture: texture206
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    render_pass_encoder2042.setPipeline(render_pipeline205);
    device20.queue.writeBuffer(buffer2018, 0, array2, 0, array2.length);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    render_pass_encoder2042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group209);
    
    
    texture206.destroy();
    render_pass_encoder2001.setVertexBuffer(0, buffer2010);
    render_pass_encoder2001.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_bundle_encoder200.drawIndexed(3);
    command_encoder203.copyTextureToTexture(
        {
            texture: texture207
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
    device20.queue.writeBuffer(buffer2021, 0, array3, 0, array3.length);
    texture203.destroy();
    
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2041.setPipeline(render_pipeline203);
    
    
    device20.queue.writeTexture({ texture: texture207 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2031.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2040.beginOcclusionQuery(2)
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture207.destroy();
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2042.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_pass_encoder2042.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.draw(3);
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer209.destroy()
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
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
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
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

    render_pass_encoder2030.setBindGroup(0, bind_group2010);
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    buffer2018.destroy()
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.clearBuffer(buffer2022);
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer2011,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer2015,
        0
    )
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    
    device20.queue.writeBuffer(buffer2022, 0, array4, 0, array4.length);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2031.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.beginOcclusionQuery(1)
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2013,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2022.setPipeline(render_pipeline200);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2000.drawIndexedIndirect(buffer2015, 0);
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture205.destroy();
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    command_encoder201.copyBufferToBuffer(
        buffer2013,
        0,
        buffer2011,
        0,
        400
    );
    render_pass_encoder2040.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer2024, 0, array2, 0, array2.length);
    render_pass_encoder2042.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer2024,
        0
    )
    
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
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group2011);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder2041.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.setVertexBuffer(0, buffer208);
    device20.queue.writeBuffer(buffer2025, 0, array5, 0, array5.length);
    query201.destroy()
    command_encoder202.clearBuffer(buffer2011);
    
    render_pass_encoder2011.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer2019.destroy()
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    render_pass_encoder2041.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer2027.destroy()
    buffer2024.destroy()
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer2024,
        0,
        400
    );
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
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array7 = new Float32Array([0.5, -1.0, 0.0, 0.5, 0.75, -0.5, 0.25, -0.5, 0.75, -0.75, 1.0, -1.0, 0.25, 0.5, 0.5, 0.0, -0.25, -0.75, 0.75, 0.0, -0.25, -0.75, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -0.5, -0.25, -1.0, -0.25, -0.75, -0.5, 0.0, 0.25, -0.75, -0.25, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, 0.75, 1.0, 0.75, -0.5, -0.5, 0.5, -0.75, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 0.0, 0.0, -0.25, 0.5, -1.0, 0.0, -1.0, 0.5, -0.75, 1.0, 0.5, 0.5, -0.25, 0.5, -0.25, 0.5, -0.25, 0.75, 0.0, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, ]);
    render_pass_encoder2022.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer2016, 0, array7, 0, array7.length);
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    render_pass_encoder2040.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline205.getBindGroupLayout(0),
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

    render_pass_encoder2042.setBindGroup(0, bind_group2012);
    render_pass_encoder2040.setIndexBuffer(buffer2013, "uint16");
    device60.queue.submit([]);
    render_pass_encoder2040.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
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
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2041.setBindGroup(0, bind_group2013);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.setVertexBuffer(0, buffer209);
    render_pass_encoder2040.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2042.setVertexBuffer(0, buffer203);
    render_pass_encoder2042.drawIndirect(buffer202, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2040.draw(3);
    render_pass_encoder2042.endOcclusionQuery()
    render_pass_encoder2042.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2031.setVertexBuffer(0, buffer2029);
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2024, 0);
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
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2022.setBindGroup(0, bind_group2014);
    render_pass_encoder2022.setVertexBuffer(0, buffer204);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2022.drawIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder2022.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2042.draw(3);
    command_encoder203.popDebugGroup()
    render_pass_encoder2000.draw(3);
    const command_buffer204 = command_encoder204.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2040.endOcclusionQuery()
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2011.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2042.drawIndirect(buffer209, 0);
    render_pass_encoder2041.endOcclusionQuery()
    render_pass_encoder2022.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2041.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.endOcclusionQuery()
}