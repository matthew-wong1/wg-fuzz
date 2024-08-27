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
    const array0 = new Float32Array([-1.0, 1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.25, 0.75, -1.0, 0.75, -0.75, 0.5, -0.5, -0.5, -0.5, 0.25, -0.75, -0.5, -1.0, -0.75, 0.0, 0.25, 0.75, -1.0, -0.25, 0.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.5, 1.0, 0.0, 0.75, -0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.5, 0.0, -0.5, 0.25, 0.5, 0.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -0.5, 0.75, -1.0, -0.75, -0.25, -1.0, -0.75, -1.0, 0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, -1.0, 0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 0.0, 0.75, -1.0, -1.0, 0.0, -0.25, -0.75, ]);
    
    const array1 = new Float32Array([-1.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.5, 0.25, 0.5, -0.5, -1.0, -1.0, 0.5, -0.5, 0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 0.0, 0.25, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, -1.0, -0.5, -0.75, 0.75, 0.5, 0.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.0, 0.0, -0.75, 0.5, -0.75, 0.25, 1.0, 0.0, 1.0, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, 0.75, -1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 1.0, 0.25, 0.75, 0.5, 0.0, -0.75, 0.25, -0.75, 0.75, ]);
    const array2 = new Float32Array([0.5, 0.0, 0.5, -0.25, -0.75, -0.75, 0.0, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.0, -0.25, 0.75, 1.0, 0.75, 0.0, 0.25, -0.5, -1.0, 0.25, -0.5, 1.0, -0.5, 0.0, -1.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.5, 0.5, 1.0, 1.0, 0.25, -1.0, 0.75, -0.25, 1.0, 0.25, -1.0, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.5, 1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -1.0, -0.75, 0.5, 0.75, -0.75, -0.75, 0.75, 0.5, 0.5, -0.25, 0.75, 0.25, ]);
    const array3 = new Float32Array([1.0, -1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 1.0, 0.75, -0.5, -0.25, 0.75, -0.25, 0.5, 0.25, 0.25, -0.25, -0.5, 0.0, 0.0, 1.0, 0.25, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, 0.25, 0.75, -0.5, 0.75, 0.25, 0.5, -0.25, 0.75, 0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.75, 1.0, -0.75, 0.0, -1.0, -1.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, 0.5, -0.25, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, -1.0, -1.0, ]);
    const array4 = new Float32Array([0.75, -0.25, -0.75, -0.75, 0.0, -0.25, 0.75, -0.25, -0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 0.75, -1.0, -0.75, -0.5, 0.0, 0.75, 0.25, -1.0, 0.0, 1.0, 0.75, 0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.75, -0.75, 1.0, 0.0, 0.75, 0.0, 1.0, 0.5, 1.0, -0.75, 0.75, -0.25, 0.25, 0.0, 1.0, -0.75, 0.5, -1.0, -0.75, -0.25, 0.25, 1.0, -1.0, 0.0, 0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 0.5, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.0, -0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array5 = new Float32Array([1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.5, -0.25, 0.25, -1.0, 0.0, -0.25, -1.0, -0.25, 0.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.25, 1.0, -0.75, -1.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.75, -0.5, 0.0, -0.75, 0.0, 0.75, 0.75, 0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, -0.75, 0.25, -0.5, 0.75, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, -0.75, 0.25, -0.5, 0.0, 0.25, -0.25, -1.0, -1.0, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 0.0, 0.75, 1.0, -0.25, 0.5, 1.0, -0.75, -0.25, 0.75, -0.75, -0.5, 0.0, -1.0, 0.0, -0.5, 0.5, -1.0, -0.25, -0.5, 0.5, 0.75, -0.75, ]);
    
    
    const array6 = new Float32Array([-0.25, 0.0, -0.5, 0.75, 0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.0, 0.5, 1.0, 0.5, 0.25, -0.5, 0.75, 1.0, 1.0, 0.75, 0.5, 0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, -1.0, -0.25, 1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -0.75, -1.0, 1.0, -1.0, 0.25, -0.75, -0.25, 0.0, -1.0, 0.75, -0.75, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, 0.5, 0.0, -0.75, -1.0, -0.25, -0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 0.75, -0.25, 0.5, 0.5, 0.75, -0.75, 0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 0.5, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query100.destroy()
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
    
    const array7 = new Float32Array([-0.75, 0.5, 1.0, 1.0, -0.25, -0.5, -0.75, 0.75, -1.0, 0.75, -0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.5, -1.0, -0.5, -0.25, -0.75, 0.75, 0.75, 1.0, -0.75, -0.5, 0.25, 1.0, -0.25, 0.0, 0.75, -0.5, 1.0, -0.5, -0.75, -1.0, 0.5, 0.25, -0.5, -0.75, -0.75, -1.0, 0.25, -0.5, 0.5, -0.25, -0.5, 0.5, -0.75, -0.5, 1.0, -0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.75, 0.0, -1.0, -0.75, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -0.25, 0.5, -0.5, -0.5, 0.5, 0.5, 0.0, ]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query100
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    
    texture100.destroy();
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    texture102.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
        occlusionQuerySet: query100
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    device00.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder100.popDebugGroup();
    
    buffer101.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    device10.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_buffer101 = command_encoder101.finish();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1001.executeBundles([render_bundle_encoder101, ])
    
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
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.0, 0.25, -0.25, 0.25, -1.0, -0.25, -0.75, 1.0, 0.25, -1.0, -0.5, 0.75, 1.0, 0.5, -0.5, -0.5, 0.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.0, -0.5, 0.75, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, 1.0, -0.75, -0.5, -0.5, 0.25, 0.75, 0.75, 0.5, 1.0, 0.5, 0.25, -1.0, 0.25, 0.25, -0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.5, 1.0, -0.25, 1.0, -0.25, -1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, 1.0, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 0.75, 0.75, ]);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    render_pass_encoder1001.setVertexBuffer(0, buffer101);
    render_pass_encoder1020.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query100.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
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
        occlusionQuerySet: undefined
    });
    buffer107.destroy()
    const array9 = new Float32Array([0.25, 0.75, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, -0.75, -0.5, -0.75, 0.5, -1.0, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -1.0, -0.75, 1.0, 0.5, 0.25, 0.75, -0.75, -1.0, -0.25, -0.5, -0.25, 0.25, 0.25, 0.0, 1.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 0.0, 1.0, -0.25, -0.25, -1.0, -1.0, -0.75, -1.0, 1.0, 0.25, -0.75, -1.0, -0.25, -0.75, -0.75, -0.75, -0.5, 0.5, 0.25, 1.0, -0.75, -0.75, -0.5, 0.0, 0.0, -0.5, 1.0, -0.25, -1.0, 0.0, -1.0, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.5, -1.0, -0.75, 0.0, 0.5, 0.75, 0.5, 0.5, 0.75, 0.25, 1.0, 0.5, -0.75, -0.25, 0.25, -0.75, -0.5, -0.25, -1.0, ]);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    render_pass_encoder1000.setStencilReference(1);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder1001.popDebugGroup();
    buffer105.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    command_encoder100.popDebugGroup()
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    buffer102.destroy()
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.popDebugGroup();
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_pass_encoder1021.setPipeline(render_pipeline102);
    {
        await buffer1011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1011.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder1020.endOcclusionQuery()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.pushErrorScope("validation");
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer106, 0, array8, 0, array8.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.pushErrorScope("internal");
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    buffer500.destroy()
    
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    texture101.destroy();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    buffer109.destroy()
    query300.destroy()
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    const command_buffer103 = command_encoder103.finish();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    
    query600.destroy()
    render_pass_encoder1020.draw(3);
    
    render_pass_encoder1030.setStencilReference(1);
    buffer100.destroy()
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
    
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    
    
    render_pass_encoder1030.setStencilReference(1);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.pushErrorScope("internal");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer104.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer1011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1011.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.executeBundles([render_bundle_encoder101, render_bundle_encoder102, ])
    
    buffer1013.destroy()
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer106,
        0
    )
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer1010, 0, array8, 0, array8.length);
    command_encoder100.copyBufferToBuffer(
        buffer108,
        0,
        buffer1010,
        0,
        400
    );
    query600.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    const array10 = new Float32Array([0.25, 0.0, 0.25, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.0, -0.5, 0.75, 0.0, 0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.5, -0.25, 0.0, 1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 0.25, 1.0, -0.25, -0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.0, 0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -0.25, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, 0.5, 1.0, -0.25, 0.75, -0.5, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.75, -1.0, 0.75, 0.5, -1.0, -0.5, -0.25, -0.75, -0.75, 1.0, -0.25, 0.25, 0.75, -1.0, 0.5, 0.25, -1.0, 0.25, -0.25, 0.0, -0.75, ]);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.draw(3);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const command_buffer600 = command_encoder600.finish();
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1012.destroy()
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    query103.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setVertexBuffer(0, buffer1012);
    query502.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query500.destroy()
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer200.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.popDebugGroup();
    query500.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer106.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query602.destroy()
    
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    query102.destroy()
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder102.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer1010.destroy()
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    device10.pushErrorScope("internal");
    render_pass_encoder1030.popDebugGroup();
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    buffer1016.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer501.destroy()
    device20.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.finish();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder1010.setStencilReference(1);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
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
        occlusionQuerySet: query104
    });
    
    query105.destroy()
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1041.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.copyBufferToBuffer(
        buffer600,
        0,
        buffer601,
        0,
        400
    );
    
    render_pass_encoder1010.setVertexBuffer(0, buffer109);
    buffer1015.destroy()
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1041.setPipeline(render_pipeline100);
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer107.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer103.destroy()
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    query501.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    buffer600.destroy()
    
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer101, ]);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group107);
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    render_pass_encoder1041.setVertexBuffer(0, buffer1015);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1041.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    command_encoder100.popDebugGroup()
    render_pass_encoder1041.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1020.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1041.popDebugGroup();
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

    render_pass_encoder1021.setBindGroup(0, bind_group109);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    device40.queue.submit([]);
    render_pass_encoder1021.setVertexBuffer(0, buffer106);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1020.draw(3);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder1030.drawIndexed(3);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
}