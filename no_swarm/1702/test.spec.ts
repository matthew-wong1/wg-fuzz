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
    const array0 = new Float32Array([0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, 0.75, -0.75, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, -0.25, 0.25, 0.75, 0.75, -0.75, 1.0, -0.75, -0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, 1.0, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 0.0, -0.75, -0.5, -0.25, -0.75, 1.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.5, 0.5, -0.5, -1.0, 1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 0.75, 1.0, 0.5, 0.75, -0.75, -0.5, -0.75, 0.75, -0.75, -1.0, -0.75, 0.0, 0.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, -1.0, 0.25, 0.75, 1.0, 1.0, 0.75, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, -0.25, -1.0, 1.0, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-0.25, 0.5, 0.75, -1.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.25, 0.25, 1.0, -0.25, -0.75, 0.75, 1.0, 0.5, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, 0.5, -0.75, -1.0, -0.25, -0.5, -0.75, -0.5, 0.5, -0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -1.0, 1.0, -0.25, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, -0.5, 0.75, 1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 1.0, 0.75, -1.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.75, -0.75, -0.25, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 0.5, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    buffer100.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    texture101.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    buffer101.destroy()
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array2 = new Float32Array([-0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.5, 0.5, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, -1.0, -1.0, 0.75, 0.0, 0.75, 0.75, 0.25, 0.25, -0.75, -0.5, 0.75, 0.25, 0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 1.0, -0.5, -0.5, 0.5, 0.25, 0.75, -0.25, 0.5, 0.75, 0.5, -0.25, -0.25, 0.25, -0.75, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, -1.0, -0.5, 1.0, 0.5, 0.25, 0.0, 0.0, 1.0, 1.0, 1.0, -1.0, 0.5, 0.75, -0.75, -1.0, 1.0, 0.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, -0.5, 0.75, -0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.75, -0.75, 0.0, 0.0, -0.5, -0.25, ]);
    
    device00.destroy();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    
    texture102.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
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
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("out-of-memory");
    device10.queue.submit([]);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array3 = new Float32Array([0.75, 0.0, -0.5, -0.25, -0.75, 0.75, 1.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.5, 1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.25, 0.5, -1.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.0, 0.5, -0.75, 1.0, 0.75, 0.0, -0.75, 0.0, 0.25, 0.75, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.5, 1.0, -1.0, -1.0, -0.5, -0.5, 0.75, -1.0, -1.0, -0.75, -0.75, 1.0, 1.0, 0.0, 0.5, -0.5, 0.5, 0.75, 0.25, 1.0, 0.75, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.0, -0.75, -0.5, -1.0, 0.25, 1.0, 0.5, 1.0, 1.0, 0.75, -0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, -0.75, -0.5, ]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.5, -0.5, -0.25, 0.75, -0.5, -0.5, 0.75, -0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 0.5, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 0.25, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.0, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, 0.25, -0.25, 0.5, 1.0, 0.25, 0.5, 0.75, 0.5, 0.0, 1.0, 0.5, -0.75, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.5, -1.0, 1.0, 0.25, -0.75, 0.5, 0.25, -1.0, 0.25, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, 0.75, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, 0.75, ]);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder1000.popDebugGroup();
    query102.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setStencilReference(1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.5, -0.5, 0.25, 0.0, -0.75, -1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.25, 0.0, 0.25, -0.25, -1.0, 1.0, 0.0, 0.75, -0.5, 0.5, 0.75, -0.25, -0.75, 0.0, -0.75, 1.0, 1.0, -0.25, -0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 0.0, 0.75, 1.0, -0.75, 0.5, -0.25, -0.5, 0.75, -0.75, 0.25, -0.5, -0.25, -1.0, 0.25, -0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 0.5, -0.75, 0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 0.75, 0.5, -0.25, -1.0, 0.0, 0.25, -0.75, 0.75, -0.25, -0.5, -0.75, 0.25, 0.5, -1.0, -0.5, -1.0, 1.0, ]);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    
    query102.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1000.setPipeline(render_pipeline100);
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
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
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
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer102.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setStencilReference(1);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer104.destroy()
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.setVertexBuffer(0, buffer105);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    
    
    render_pass_encoder1011.beginOcclusionQuery(0)
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1001.insertDebugMarker("marker");
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_pass_encoder1000.beginOcclusionQuery(1)
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer103.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.drawIndirect(buffer108, 0);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1001.setStencilReference(1);
    texture103.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1020.setPipeline(render_pipeline101);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    buffer103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
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
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group104);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1001.setPipeline(render_pipeline100);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer1012,
        0
    )
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer1013.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_bundle_encoder102.popDebugGroup();
    
    
    render_pass_encoder1021.setPipeline(render_pipeline104);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1001.setStencilReference(1);
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    texture100.destroy();
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    buffer104.destroy()
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setPipeline(render_pipeline103);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1030.setPipeline(render_pipeline104);
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    device10.queue.writeBuffer(buffer1013, 0, array5, 0, array5.length);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1021.insertDebugMarker("marker");
    texture104.destroy();
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.endOcclusionQuery()
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.setVertexBuffer(0, buffer105);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_pass_encoder1041.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder100.drawIndirect(buffer108, 0);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer1011.destroy()
    render_pass_encoder1011.setVertexBuffer(0, buffer1011);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer1016.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
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
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1041.setPipeline(render_pipeline101);
    render_pass_encoder1030.setVertexBuffer(0, buffer108);
    render_pass_encoder1010.insertDebugMarker("marker");
    command_encoder101.copyBufferToBuffer(
        buffer104,
        0,
        buffer101,
        0,
        400
    );
    device20.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    render_pass_encoder1021.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1011.draw(3);
    render_bundle_encoder102.setVertexBuffer(0, buffer1012);
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group108);
    render_pass_encoder1040.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    buffer1021.destroy()
    render_bundle_encoder102.setIndexBuffer(buffer1013, "uint16");
    device10.queue.writeBuffer(buffer1019, 0, array1, 0, array1.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query100.destroy()
    render_bundle_encoder102.drawIndirect(buffer1016, 0);
    buffer1018.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer1017, 0, array4, 0, array4.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    command_encoder104.pushDebugGroup("mygroupmarker")
    query100.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.setStencilReference(1);
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
        occlusionQuerySet: query101
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    query100.destroy()
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1031.beginOcclusionQuery(1)
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
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
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1010);
    buffer1025.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1021.setStencilReference(1);
    
    render_pass_encoder1001.setStencilReference(1);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    buffer201.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1021,
        0
    )
    render_pass_encoder1040.setVertexBuffer(0, buffer104);
    render_pass_encoder1041.setVertexBuffer(0, buffer1010);
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    buffer1016.destroy()
    buffer1024.destroy()
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1030.end();
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer1024,
        0
    )
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.end();
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.endOcclusionQuery()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer108, 0, array5, 0, array5.length);
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    
    
    command_encoder104.clearBuffer(buffer106);
    command_encoder102.popDebugGroup()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1041.drawIndexed(3);
    
    query102.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder1001.setStencilReference(1);
    query200.destroy()
    render_pass_encoder1000.popDebugGroup();
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder1031.setPipeline(render_pipeline102);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.beginOcclusionQuery(2)
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1031.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer108.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1031.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1017.destroy()
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_pass_encoder1031.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1023,
        0
    )
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    buffer1014.destroy()
    
    render_pass_encoder1001.setVertexBuffer(0, buffer104);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group1011);
    
    
    render_bundle_encoder102.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    buffer1023.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    buffer107.destroy()
    render_pass_encoder1040.setStencilReference(1);
    texture107.destroy();
    device10.queue.writeBuffer(buffer1027, 0, array0, 0, array0.length);
    device10.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_pass_encoder1012.setPipeline(render_pipeline106);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer106.destroy()
    texture105.destroy();
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device50.destroy();
    
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.endOcclusionQuery()
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
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
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group1012);
    
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.end();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer1011,
        0
    )
    render_pass_encoder1040.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    device10.queue.writeBuffer(buffer1022, 0, array1, 0, array1.length);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1013);
    render_pass_encoder1041.setStencilReference(1);
    device10.queue.writeBuffer(buffer1029, 0, array5, 0, array5.length);
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder102.copyBufferToBuffer(
        buffer1013,
        0,
        buffer1011,
        0,
        400
    );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    buffer1012.destroy()
    render_pass_encoder1041.pushDebugGroup("group_marker");
    buffer1019.destroy()
    
    
    render_pass_encoder1012.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer1021,
        0
    )
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    query102.destroy()
    render_pass_encoder1011.popDebugGroup();
    device10.pushErrorScope("validation");
    render_pass_encoder1021.setVertexBuffer(0, buffer103);
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    command_encoder102.clearBuffer(buffer1030);
    render_pass_encoder1010.setVertexBuffer(0, buffer105);
    device10.queue.writeTexture({ texture: texture106 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    
    
    render_bundle_encoder101.finish();
    render_pass_encoder1041.setStencilReference(1);
    device10.queue.writeBuffer(buffer1010, 0, array0, 0, array0.length);
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer1031.destroy()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1032, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1032, 0);
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer1011,
        0
    )
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1021.end();
    render_pass_encoder1020.end();
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group1014);
    render_pass_encoder1031.setVertexBuffer(0, buffer1014);
    command_encoder103.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1012.setVertexBuffer(0, buffer1017);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1012.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    const command_buffer102 = command_encoder102.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1040.end();
    render_pass_encoder1012.end();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1012.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    command_encoder100.popDebugGroup()
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    const command_buffer103 = command_encoder103.finish();
    command_encoder104.popDebugGroup()
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    const command_buffer104 = command_encoder104.finish();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, ]);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1012.end();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1012.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1012.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1012.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1012.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1012.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1012.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.draw(3);
}