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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.25, 0.0, -0.5, -1.0, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, 1.0, -0.75, 0.0, 0.25, -0.5, 0.0, 1.0, -0.5, -0.75, -0.75, -0.25, 1.0, 1.0, -0.75, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -0.5, 0.0, 1.0, -0.5, 0.5, -0.5, 0.25, -0.5, 1.0, 0.5, 0.5, 0.0, 0.25, 0.5, -0.75, 1.0, 0.5, 0.75, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, -0.5, -0.25, 0.25, -0.25, -0.75, 0.25, -0.25, 0.5, 0.0, -0.5, 0.75, 0.75, 0.5, -0.75, -1.0, -0.75, 0.0, -0.75, 1.0, -0.25, -1.0, -0.25, -1.0, -0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 0.25, 0.25, -0.5, 0.0, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 0.25, -0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 0.75, 0.5, 0.75, -1.0, 0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 0.0, -0.25, 0.0, 0.25, -1.0, 1.0, 1.0, -0.5, -0.25, -0.25, -0.5, 1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, -0.75, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.5, 0.0, -1.0, -0.25, -0.75, -0.5, -1.0, -0.75, 0.75, 1.0, -0.75, 0.25, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -0.5, -1.0, -0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 1.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.0, 0.25, -0.5, 0.0, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, -0.5, -0.25, -0.25, ]);
    
    
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const array2 = new Float32Array([-1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.25, 0.0, 0.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.75, 0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, -0.75, 0.75, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.0, -0.75, -1.0, 0.0, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, -0.5, 0.75, -0.5, 0.75, -0.25, 0.25, 0.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.0, -0.75, -0.75, 0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.0, ]);
    const array3 = new Float32Array([-0.25, -1.0, 0.25, -1.0, 0.25, 0.75, -1.0, -1.0, 0.0, -0.75, -0.75, -0.75, -1.0, -0.75, 0.25, -0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -0.25, 0.0, -0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -1.0, -0.5, 0.5, 1.0, -0.75, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.75, -0.5, 0.0, -0.5, -0.5, 0.25, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, -1.0, 1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.5, -0.5, -0.25, -1.0, -0.25, 0.0, -0.75, -1.0, 1.0, 0.5, -0.5, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.0, 0.75, -1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, 0.0, 1.0, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array4 = new Float32Array([-1.0, 0.75, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.25, -0.5, -0.75, 0.25, -0.5, 0.25, 0.5, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, 0.5, -0.5, 0.5, -0.25, -1.0, 1.0, 0.5, -0.75, 0.0, 0.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -0.5, 0.75, -1.0, 0.25, 1.0, -0.25, -0.75, -0.75, 0.5, 0.0, -0.75, 0.75, -0.75, -1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 0.5, -0.75, ]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder102.clearBuffer(buffer100);
    command_encoder102.clearBuffer(buffer100);
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder102.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    
    
    buffer100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    texture102.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    buffer103.destroy()
    device00.pushErrorScope("out-of-memory");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    texture103.destroy();
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer104.destroy()
    compute_pass_encoder1010.popDebugGroup()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    command_encoder104.insertDebugMarker("mymarker");
    
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
    command_encoder104.insertDebugMarker("mymarker");
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder100.popDebugGroup();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer100.destroy()
    
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
        occlusionQuerySet: query100
    });
    texture100.destroy();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1050.beginOcclusionQuery(0)
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1050.executeBundles([])
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    const array5 = new Float32Array([0.75, 0.5, -0.75, -0.5, 1.0, -1.0, 0.25, 0.25, 0.5, 0.75, 0.0, -0.75, 0.75, -0.25, -1.0, -1.0, -0.5, 1.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, -0.75, 0.75, 0.75, -1.0, 0.75, 0.0, -0.5, -1.0, -0.75, -0.25, 0.5, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.75, -0.5, -0.5, 0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.75, -0.25, 0.0, -0.75, -0.75, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.25, 1.0, -0.75, 0.5, 0.75, 0.0, -0.75, 0.25, -0.75, 0.25, -1.0, -0.5, -0.75, 0.25, -0.25, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, -1.0, 0.0, ]);
    render_bundle_encoder100.popDebugGroup();
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
    buffer106.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1050.setPipeline(render_pipeline101);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    
    render_bundle_encoder100.setIndexBuffer(buffer105, "uint16");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    render_pass_encoder1050.beginOcclusionQuery(1)
    
    const array6 = new Float32Array([0.75, 0.0, -0.75, 0.75, -1.0, -0.25, 1.0, 1.0, 0.25, 0.25, -1.0, 0.25, -1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.5, 0.75, 0.5, 1.0, -1.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, -0.5, 0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.75, 1.0, -0.75, 0.5, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 0.75, -1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.25, 0.75, -0.75, 0.25, 0.5, 0.25, -1.0, -0.25, -0.25, 0.75, 0.75, -0.5, 0.5, -0.25, 0.25, 0.25, 0.75, 0.25, -0.5, 0.5, 0.25, 1.0, 0.0, -1.0, 0.5, -0.25, 0.25, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.75, ]);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1050.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group102);
    render_pass_encoder1050.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    render_bundle_encoder101.setVertexBuffer(0, buffer108);
    const array7 = new Float32Array([-1.0, -0.25, -1.0, -0.25, 0.5, 0.0, -1.0, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, 1.0, 0.25, 1.0, -0.75, -0.25, -0.5, -0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, 0.75, 0.75, -1.0, 0.0, 0.0, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.25, -0.5, 0.5, -0.25, -0.25, 0.5, 0.25, 1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.75, -0.75, -0.25, 0.0, 0.5, -0.25, -0.5, -0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.5, -0.75, -0.25, 0.25, 0.5, 0.0, 0.0, 0.75, -0.75, 0.25, 0.75, 0.0, -0.75, 1.0, -0.25, 0.75, 0.5, -0.75, 0.5, -1.0, -1.0, -1.0, -0.25, 0.5, -0.5, 0.5, -0.75, -1.0, -1.0, 0.5, -0.75, 0.75, ]);
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
    
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const array8 = new Float32Array([0.25, -0.5, -1.0, -0.75, -1.0, 0.0, 0.5, -1.0, 0.5, 0.25, -0.5, 0.0, 1.0, -1.0, 0.5, 0.75, -0.5, -0.75, -0.75, 0.25, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.5, 0.75, -0.25, 0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.75, -0.75, 1.0, 0.25, -1.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.0, 1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.5, 0.0, 0.25, -0.5, 0.75, -1.0, -0.75, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, 0.5, 1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.75, 1.0, -0.5, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer108.destroy()
    
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    buffer1010.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.draw(3);
    
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder101.setIndexBuffer(buffer1011, "uint16");
    render_bundle_encoder101.drawIndexedIndirect(buffer101, 0);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1050.endOcclusionQuery()
    
    
    
    
    render_pass_encoder1051.setPipeline(render_pipeline106);
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1051.pushDebugGroup("group_marker");
    buffer105.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1050.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1050.setVertexBuffer(0, buffer103);
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    buffer1011.destroy()
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer1013,
        0
    )
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder106.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    compute_pass_encoder1040.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    command_encoder104.copyBufferToBuffer(
        buffer101,
        0,
        buffer1010,
        0,
        400
    );
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    render_bundle_encoder100.finish();
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1060.setPipeline(render_pipeline102);
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
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.setPipeline(render_pipeline108);
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_pass_encoder1050.draw(3);
    const command_buffer200 = command_encoder200.finish();
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
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1051.insertDebugMarker("marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const command_buffer104 = command_encoder104.finish();
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1050.popDebugGroup();
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    command_encoder101.clearBuffer(buffer104);
    render_bundle_encoder101.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group103);
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
    render_pass_encoder1060.setVertexBuffer(0, buffer103);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    buffer1012.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.destroy();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    buffer102.destroy()
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.end();
    
    query100.destroy()
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    const command_buffer101 = command_encoder101.finish();
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
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1051.setStencilReference(1);
    const render_pass_encoder1052 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
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
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndexedIndirect(buffer107, 0);
    
    render_pass_encoder1052.setPipeline(render_pipeline107);
    compute_pass_encoder1020.setPipeline(compute_pipeline106);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1013.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array9 = new Float32Array([1.0, 0.5, 0.0, 0.25, -1.0, 0.5, 0.25, 0.0, 0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, -0.5, -1.0, 1.0, -0.5, -0.5, -0.25, -0.25, 0.5, -0.75, -0.5, 1.0, 0.75, 0.0, 0.25, -0.5, 1.0, 0.5, 0.75, -1.0, 0.75, 1.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.0, -1.0, -0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.5, -0.75, 0.75, -1.0, 0.0, -0.75, -0.25, -1.0, -0.5, 0.25, -0.5, 0.25, -0.75, 0.25, -1.0, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -1.0, 0.75, -1.0, -1.0, 0.5, 1.0, -0.75, 0.5, -0.5, -0.5, ]);
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1070.setPipeline(render_pipeline103);
    buffer101.destroy()
    render_pass_encoder1052.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1051.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1052.setStencilReference(1);
    
    
    device50.pushErrorScope("internal");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    device10.queue.writeBuffer(buffer1014, 0, array6, 0, array6.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
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
    render_pass_encoder1080.setPipeline(render_pipeline105);
    
    render_pass_encoder1052.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.end();
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    render_pass_encoder1061.setPipeline(render_pipeline103);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1061.pushDebugGroup("group_marker");
    command_encoder106.copyBufferToBuffer(
        buffer105,
        0,
        buffer104,
        0,
        400
    );
    render_pass_encoder1052.pushDebugGroup("group_marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group104);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer200, ]);
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder1052.insertDebugMarker("marker");
    render_pass_encoder1061.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1080.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder108.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
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
    render_pass_encoder1071.setPipeline(render_pipeline1010);
    const command_buffer105 = command_encoder105.finish();
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    command_encoder108.insertDebugMarker("mymarker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    render_bundle_encoder100.drawIndexedIndirect(buffer1010, 0);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1040.insertDebugMarker("marker")
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setStencilReference(1);
    
    
    buffer1015.destroy()
    
    render_pass_encoder1052.popDebugGroup();
    const render_pass_encoder1072 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1072",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1080.setBindGroup(0, bind_group105);
    render_bundle_encoder101.finish();
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1051.popDebugGroup();
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1051.insertDebugMarker("marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1080.setVertexBuffer(0, buffer1019);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1080.setIndexBuffer(buffer1012, "uint16");
    
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    render_pass_encoder1080.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device10.pushErrorScope("internal");
    render_pass_encoder1080.popDebugGroup();
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group107);
    render_pass_encoder1072.setPipeline(render_pipeline1011);
    render_pass_encoder1080.drawIndirect(buffer1016, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer1011);
    compute_pass_encoder1040.popDebugGroup()
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1052.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer104, ]);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const command_buffer108 = command_encoder108.finish();
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1052.setVertexBuffer(0, buffer104);
    render_pass_encoder1052.setIndexBuffer(buffer1024, "uint16");
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1052.setIndexBuffer(buffer1020, "uint16");
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
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

    render_pass_encoder1070.setBindGroup(0, bind_group1010);
    render_pass_encoder1070.setVertexBuffer(0, buffer1030);
    render_pass_encoder1052.drawIndexedIndirect(buffer1023, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
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

    render_pass_encoder1061.setBindGroup(0, bind_group1011);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder1080.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.setVertexBuffer(0, buffer1027);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer108, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.setVertexBuffer(0, buffer1023);
    compute_pass_encoder1020.popDebugGroup()
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    render_pass_encoder1071.setBindGroup(0, bind_group1013);
    render_pass_encoder1071.setVertexBuffer(0, buffer1036);
    render_pass_encoder1061.drawIndirect(buffer108, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1052.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    const command_buffer201 = command_encoder201.finish();
    const command_buffer106 = command_encoder106.finish();
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1014);
    render_pass_encoder1080.drawIndexed(3);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group1015);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.setVertexBuffer(0, buffer1014);
    render_pass_encoder1052.setIndexBuffer(buffer1025, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer104, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1061.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1071.endOcclusionQuery()
    render_pass_encoder1061.end();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1060.draw(3);
    device10.queue.submit([command_buffer101, command_buffer106, command_buffer108, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1051.end();
    device10.queue.submit([]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer104, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1052.end();
    render_pass_encoder1071.drawIndirect(buffer104, 0);
    render_pass_encoder1070.end();
    compute_pass_encoder1020.end();
    render_pass_encoder1060.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1060.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.popDebugGroup();
    command_encoder102.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1061.drawIndirect(buffer1032, 0);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer106, command_buffer107, ]);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    render_pass_encoder1071.setIndexBuffer(buffer1016, "uint16");
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    device50.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1071.end();
    render_pass_encoder1020.end();
    render_pass_encoder1020.draw(3);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1048, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    render_pass_encoder1072.setBindGroup(0, bind_group1019);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1072.setVertexBuffer(0, buffer1042);
    render_pass_encoder1072.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1072.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1050.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1072.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1070.drawIndirect(buffer1032, 0);
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.end();
    device10.queue.submit([]);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, command_buffer106, ]);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1080.drawIndirect(buffer1036, 0);
    render_pass_encoder1072.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1072.end();
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1072.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1061.drawIndirect(buffer107, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1080.drawIndirect(buffer1050, 0);
    render_pass_encoder1052.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1072.drawIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndirect(buffer103, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1052.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1072.drawIndirect(buffer1022, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.end();
    device10.queue.submit([command_buffer104, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1056, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1052.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1080.setIndexBuffer(buffer105, "uint16");
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1022);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    render_pass_encoder1071.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1052.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1080.drawIndirect(buffer1031, 0);
    device50.queue.submit([]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1080.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer103, command_buffer107, command_buffer108, ]);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1052.popDebugGroup();
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    render_pass_encoder1052.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1053, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1062, 0);
    render_pass_encoder1072.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1072.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1072.end();
    render_pass_encoder1071.drawIndirect(buffer1059, 0);
    render_pass_encoder1052.drawIndirect(buffer1047, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1072.drawIndirect(buffer1059, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1024);
    render_pass_encoder1021.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, ]);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1056, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1043, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1025);
    render_pass_encoder1050.drawIndirect(buffer1056, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1062, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    device50.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1059, 0);
    render_pass_encoder1050.draw(3);
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1072.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1026);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.drawIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1028, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1061.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    device50.queue.submit([]);
    compute_pass_encoder1020.end();
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1072.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1052.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1063, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1052.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1059, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1072.drawIndirect(buffer1048, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1080.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1080.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1070.end();
    device50.queue.submit([]);
    render_pass_encoder1072.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1052.drawIndexedIndirect(buffer1063, 0);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer107, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1052.drawIndirect(buffer1053, 0);
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1052.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1072.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1080.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer1064, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1056, 0);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1072.drawIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1051.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1052.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1016, "uint16");
    device00.queue.submit([]);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device50.queue.submit([]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1072.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer108, ]);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    device50.queue.submit([]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1071.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1052.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1080.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1072.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.drawIndirect(buffer1038, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1061.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    device10.queue.submit([command_buffer101, command_buffer108, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1080.drawIndirect(buffer1063, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1024, "uint16");
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1027);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1074, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1040.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1075, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1075, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    render_pass_encoder1070.drawIndirect(buffer1072, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1080.drawIndirect(buffer1075, 0);
    render_pass_encoder1072.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1061.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1071.drawIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.drawIndirect(buffer1056, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1072.drawIndirect(buffer1075, 0);
    render_pass_encoder1050.drawIndirect(buffer1065, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1056, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1052.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1062, 0);
    render_pass_encoder1061.drawIndirect(buffer1075, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1050.drawIndirect(buffer1062, 0);
    render_pass_encoder1080.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1052.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1070.end();
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1028);
    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1079,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    render_pass_encoder1072.drawIndirect(buffer101, 0);
    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1081,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1030);
    render_pass_encoder1021.drawIndirect(buffer1059, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1062, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1080.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1075, 0);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1072.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1072.drawIndirect(buffer1019, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1030, 0);
    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1083,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1031);
    render_pass_encoder1072.drawIndirect(buffer1049, 0);
    render_pass_encoder1021.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1072.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1072.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1070, 0);
    device20.queue.submit([command_buffer202, ]);
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1032);
    render_pass_encoder1021.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1052.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1085, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1062, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1072.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1071, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1044, "uint16");
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1086, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1086, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1072.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndirect(buffer1075, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndirect(buffer1061, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1072.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer1081, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1061, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1086, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1050.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1080.drawIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndirect(buffer1070, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1056, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1052.drawIndirect(buffer1031, 0);
    render_pass_encoder1052.popDebugGroup();
    compute_pass_encoder1020.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1063, 0);
    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1088,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1033);
    render_pass_encoder1020.drawIndexedIndirect(buffer1063, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1071, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1086, 0);
    render_pass_encoder1060.drawIndirect(buffer1063, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer1070, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1052.drawIndirect(buffer1048, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1072.setIndexBuffer(buffer1075, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndirect(buffer1081, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1024, "uint16");
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1080.drawIndirect(buffer1074, 0);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1080.drawIndirect(buffer1086, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.drawIndirect(buffer1063, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1089, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1089, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndirect(buffer1059, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1052.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1080.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1070.drawIndirect(buffer1011, 0);
    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1091,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1034);
    device10.queue.submit([command_buffer107, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1080.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1070.drawIndirect(buffer1056, 0);
    render_pass_encoder1072.drawIndirect(buffer1074, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1092, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1092, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1052.drawIndirect(buffer1043, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndirect(buffer1086, 0);
    render_pass_encoder1052.drawIndexed(3);
    render_pass_encoder1080.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1071.popDebugGroup();
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1035);
    render_pass_encoder1060.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1070.drawIndirect(buffer1081, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1063, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1074, 0);
    render_pass_encoder1080.drawIndirect(buffer1092, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1070.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1072.drawIndirect(buffer1075, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.end();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1080.end();
    render_pass_encoder1060.drawIndirect(buffer1093, 0);
    render_pass_encoder1070.drawIndirect(buffer1048, 0);
    render_pass_encoder1071.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1052.end();
    render_pass_encoder1072.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1061.drawIndirect(buffer1084, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndirect(buffer1075, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1072.setIndexBuffer(buffer1047, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1070.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1072.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1061.popDebugGroup();
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1036);
    render_pass_encoder1071.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer105, ]);
    render_pass_encoder1072.drawIndirect(buffer1070, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer1075, 0);
    render_pass_encoder1072.popDebugGroup();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1080.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1070.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1097, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1080.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1089, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1092, 0);
    render_pass_encoder1072.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1033, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1097, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    render_pass_encoder1020.drawIndirect(buffer1071, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1056, 0);
    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1099,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1037);
    render_pass_encoder1071.drawIndirect(buffer1070, 0);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10100, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10100, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10101, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10101, 0);
    render_pass_encoder1072.drawIndirect(buffer1071, 0);
    render_pass_encoder1080.drawIndirect(buffer10100, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1089, 0);
    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10103,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1038);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1072.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1047, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([]);
    render_pass_encoder1060.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1072.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1052.end();
    render_pass_encoder1061.drawIndirect(buffer1075, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.popDebugGroup();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10104, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1061.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1072.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10105, 0);
}