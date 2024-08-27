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
    
    
    const array0 = new Float32Array([1.0, 0.75, 0.0, -0.5, -0.25, 0.0, 1.0, 0.75, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.0, 0.5, -0.25, 1.0, 0.0, 1.0, -0.75, 0.75, 0.5, -1.0, 0.5, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 0.0, -1.0, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.25, -0.5, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 0.75, 0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.5, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.75, -0.25, -0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.75, -0.5, -0.75, -0.75, -0.25, -1.0, -1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array1 = new Float32Array([0.5, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, -0.25, 0.0, 1.0, 0.0, -0.5, -0.5, -0.5, -0.5, 0.5, 1.0, -1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, -0.25, 0.25, 0.75, -0.75, 0.5, 0.75, 0.25, -0.75, 0.0, -0.75, -0.25, -0.25, -0.75, -0.75, -1.0, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 0.75, 0.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.25, 0.25, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, 0.25, 0.25, 0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.5, 0.5, -0.5, 0.5, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, 1.0, -0.75, ]);
    
    
    const array2 = new Float32Array([-0.5, 1.0, 0.75, -0.5, 0.75, -0.75, -0.75, 1.0, 0.75, 0.5, 0.5, 0.25, 0.75, -0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.5, 0.75, -0.25, 0.0, -0.5, -0.25, 1.0, 0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -1.0, -0.5, 0.5, -0.75, 1.0, 0.5, 1.0, 0.25, 0.5, 0.5, -1.0, 1.0, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, -0.5, 1.0, 0.5, -1.0, -0.75, 0.5, 0.25, 0.75, 1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.75, 1.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.0, 0.75, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    
    device10.pushErrorScope("validation");
    const array3 = new Float32Array([-1.0, 1.0, 0.75, 0.25, 0.25, 0.0, 0.5, -0.5, 0.25, 0.25, 1.0, -1.0, 0.25, 0.75, -0.75, -0.75, -0.25, -1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.0, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 1.0, 1.0, 0.0, -0.25, -0.75, -0.75, 1.0, 0.0, 1.0, -0.75, -1.0, -1.0, 1.0, -0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, 0.25, 0.5, -0.5, 0.25, -1.0, 0.5, -0.25, 1.0, -1.0, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, -0.5, -0.5, -1.0, -1.0, -0.5, -1.0, -0.75, 0.5, 1.0, 1.0, -0.5, -0.5, 0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -1.0, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -0.5, -0.25, -1.0, 1.0, 0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    
    
    
    query100.destroy()
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array4 = new Float32Array([-0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, -0.25, -0.25, -0.75, -0.25, 0.25, 0.0, -0.75, -0.5, 1.0, 0.25, 1.0, 1.0, -1.0, 0.25, 0.0, 1.0, -0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 0.25, -1.0, -0.5, 0.25, -1.0, 0.5, -1.0, 1.0, -0.75, -0.25, -0.25, 0.75, 0.5, 0.25, -0.25, -1.0, -0.25, -0.5, 0.0, 1.0, -0.75, -1.0, 0.25, 1.0, -0.25, 0.75, -0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, -0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 0.75, 0.25, 0.0, 1.0, 0.75, 0.5, 0.75, 0.75, 1.0, -1.0, -1.0, 1.0, ]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    query100.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1000.executeBundles([])
    query101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1010.executeBundles([])
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_pass_encoder1010.setPipeline(render_pipeline101);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([-0.75, -0.25, 0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.0, -0.5, 1.0, 1.0, 0.0, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -0.75, 0.25, 1.0, -1.0, -0.5, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.5, -0.5, 0.75, 0.75, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.5, 0.0, -0.5, -0.25, 1.0, 0.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, 0.75, -0.25, 0.0, -1.0, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, 0.25, 0.75, -0.25, -0.5, 0.75, -1.0, 0.25, -1.0, 0.5, -0.75, ]);
    
    render_pass_encoder1000.beginOcclusionQuery(0)
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query104.destroy()
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query105.destroy()
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer101,
        0
    )
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    query105.destroy()
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    device00.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1000.popDebugGroup();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    query100.destroy()
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1010.insertDebugMarker("marker");
    buffer103.destroy()
    query102.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device00.destroy();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group101);
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
    render_pass_encoder1000.setStencilReference(1);
    
    query100.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1021.beginOcclusionQuery(0)
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.end();
    buffer101.destroy()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    query101.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    query104.destroy()
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.setPipeline(render_pipeline101);
    command_encoder100.resolveQuerySet(
        query106,
        0,
        32,
        buffer105,
        0
    )
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    command_encoder100.clearBuffer(buffer101);
    query102.destroy()
    query106.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    buffer106.destroy()
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer106,
        0
    )
    buffer104.destroy()
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer105.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    buffer107.destroy()
    
    
    
    render_pass_encoder1001.setPipeline(render_pipeline104);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group102);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer105,
        0,
        400
    );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder101.setPipeline(render_pipeline104);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    buffer102.destroy()
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    render_bundle_encoder102.setPipeline(render_pipeline104);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1011.setPipeline(render_pipeline102);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.destroy();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query107
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setVertexBuffer(0, buffer109);
    
    command_encoder103.clearBuffer(buffer105);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.setPipeline(render_pipeline105);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1041.setPipeline(render_pipeline103);
    buffer102.destroy()
    render_pass_encoder1031.setPipeline(render_pipeline103);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1040.setPipeline(render_pipeline101);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    render_pass_encoder1001.setVertexBuffer(0, buffer107);
    
    render_pass_encoder1041.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer102 = command_encoder102.finish();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const array6 = new Float32Array([0.75, 0.75, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.5, 1.0, -0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, 0.25, 1.0, 0.5, -0.5, -0.25, 1.0, 0.5, -0.75, -0.5, 0.0, -0.25, -0.75, -0.25, 0.25, -1.0, -1.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.5, 0.5, 0.0, 0.75, -1.0, 1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.5, 0.75, 0.25, 0.25, -0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 0.75, 1.0, -1.0, ]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    query107.destroy()
    device10.pushErrorScope("internal");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer1010.destroy()
    render_pass_encoder1001.draw(3);
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query106.destroy()
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder100.setIndexBuffer(buffer108, "uint16");
    command_encoder105.resolveQuerySet(
        query107,
        0,
        32,
        buffer108,
        0
    )
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query107
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.setPipeline(render_pipeline103);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    
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
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer1012,
        0
    )
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1041.popDebugGroup();
    buffer109.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer1014.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder100.copyBufferToBuffer(
        buffer1014,
        0,
        buffer1011,
        0,
        400
    );
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder105.resolveQuerySet(
        query106,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.drawIndexed(3);
    query108.destroy()
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.popDebugGroup();
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1041.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1021.setStencilReference(1);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
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
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setStencilReference(1);
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout108,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    render_bundle_encoder100.drawIndirect(buffer1013, 0);
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder104.copyBufferToBuffer(
        buffer107,
        0,
        buffer103,
        0,
        400
    );
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1021.endOcclusionQuery()
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer1016.destroy()
    buffer1015.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.popDebugGroup();
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query106.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group107);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1011.destroy()
    buffer102.destroy()
    command_encoder103.resolveQuerySet(
        query106,
        0,
        32,
        buffer1016,
        0
    )
    query101.destroy()
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer1012);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer1019, 0, array6, 0, array6.length);
    render_pass_encoder1001.end();
    query1010.destroy()
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    render_bundle_encoder102.setVertexBuffer(0, buffer109);
    render_pass_encoder1040.setVertexBuffer(0, buffer1012);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1000.end();
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query105.destroy()
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    command_encoder100.resolveQuerySet(
        query104,
        0,
        32,
        buffer1013,
        0
    )
    
    command_encoder100.resolveQuerySet(
        query1010,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout109,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    render_pass_encoder1040.setIndexBuffer(buffer1020, "uint16");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group108);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1041.setVertexBuffer(0, buffer1020);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group109);
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1041.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.setVertexBuffer(0, buffer1024);
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer102, ]);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1010);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer104);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.popDebugGroup();
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device40.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1021.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1001.end();
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group1011);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1012);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1013);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.setVertexBuffer(0, buffer1011);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1020.end();
    render_pass_encoder1031.end();
    command_encoder101.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexed(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.end();
    device40.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1011.end();
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([]);
    render_pass_encoder1031.end();
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    device40.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.end();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1050.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer100, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndexed(3);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1041.end();
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    device10.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1021.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.end();
    device10.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1028, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer100, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
}