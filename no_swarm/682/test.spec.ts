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
    const array0 = new Float32Array([-0.5, 0.0, -0.75, -0.75, 0.5, -0.25, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, 0.25, 0.25, -0.25, -0.75, -1.0, 0.5, -1.0, 0.0, 1.0, 0.75, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 0.5, -0.5, 0.5, 0.25, 1.0, 0.25, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, 0.75, 0.0, -1.0, 0.0, -0.5, -0.25, -0.5, 0.75, -0.75, 1.0, 1.0, 0.0, -0.75, 1.0, 1.0, -0.5, 0.0, 0.25, -0.5, -0.5, 1.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.5, 0.0, -0.25, 0.75, -0.75, 0.5, 1.0, -1.0, 0.5, -0.5, -0.25, ]);
    const array1 = new Float32Array([-0.75, 0.25, -0.25, 0.5, 0.25, 0.0, -0.75, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, -1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.0, 0.0, 0.75, -1.0, -0.5, 0.75, 0.5, -0.5, 0.5, 0.0, -0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, -0.75, 0.5, 0.0, 0.5, -1.0, 0.25, 0.75, 1.0, -0.25, 1.0, -0.75, -0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 0.25, -0.25, 0.75, 0.5, 1.0, 0.75, -0.75, 1.0, -0.5, 0.0, -0.75, 0.0, -0.5, 0.0, 0.75, 0.75, -1.0, 0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 0.25, 0.0, 0.75, -0.75, 1.0, 0.75, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, ]);
    const array2 = new Float32Array([-1.0, 0.75, -0.5, 0.75, 0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, -0.75, 0.0, 1.0, -0.75, -0.5, 0.75, -1.0, 0.0, -1.0, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, 0.0, -0.25, 1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -0.75, -0.5, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, 0.25, 0.0, -1.0, -0.5, 0.75, -0.75, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, -0.25, 0.5, 0.0, 0.5, 0.5, 0.0, 0.25, -1.0, 0.75, -0.75, -0.25, 0.25, -0.5, -0.25, 0.0, -0.75, -0.25, 1.0, 0.0, 0.75, 0.75, 1.0, 0.0, 0.0, -1.0, 0.5, 0.0, 0.25, ]);
    
    const array3 = new Float32Array([-0.75, -0.75, 0.25, 0.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.25, -0.25, 0.75, -0.75, -0.75, -1.0, -1.0, 0.25, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, -0.5, 0.0, 0.25, 1.0, -0.5, 0.5, 1.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.0, 1.0, 0.75, 1.0, 0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.25, -1.0, 0.5, 0.0, -0.75, 0.5, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, -0.25, 0.25, 0.75, 0.0, 0.0, -0.25, -0.75, 0.25, -0.75, 1.0, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, -0.5, 0.25, -0.25, 0.5, 0.25, -0.75, 0.75, -0.75, ]);
    
    
    
    const array4 = new Float32Array([0.75, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, -1.0, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, 0.25, -1.0, 0.75, 0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, 0.5, -0.25, -0.75, 1.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, -1.0, 0.5, 0.0, -0.75, 1.0, -0.5, 0.0, 1.0, -0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, 0.5, -0.25, 0.5, 0.5, 0.75, 0.0, 1.0, 0.5, -0.75, 0.75, 0.0, 0.5, 0.0, 0.0, 0.25, -0.25, 0.5, -0.25, -1.0, 0.5, 0.0, 0.75, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer000 = command_encoder000.finish();
    
    device00.queue.submit([command_buffer000, ]);
    device00.destroy();
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.25, 0.25, -0.5, 0.75, -0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.75, -1.0, 0.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.5, -0.75, 0.5, 0.25, -0.75, -0.5, 0.5, 1.0, 0.75, 0.25, -0.5, 0.5, -1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.0, 0.75, -1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 0.25, 0.0, -0.75, 0.0, 1.0, -1.0, 1.0, 0.75, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, 0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.25, -0.25, 0.75, 1.0, 0.25, -0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    texture100.destroy();
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("validation");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    buffer102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
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
    buffer103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query102.destroy()
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
    device20.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const array6 = new Float32Array([-0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.0, -0.5, 0.5, -0.75, -0.25, 1.0, -0.5, 1.0, 0.75, 1.0, 1.0, 1.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.75, 1.0, 0.25, 1.0, -0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 0.25, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 1.0, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, 0.75, -1.0, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.75, -0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.25, 0.5, -0.75, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, -0.5, 1.0, 1.0, 1.0, 0.25, -0.25, -0.25, 0.25, 0.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.75, 1.0, 0.75, -0.25, 0.25, -0.5, -0.5, -0.25, 1.0, 0.25, -0.5, ]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query102.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    command_encoder103.copyBufferToBuffer(
        buffer104,
        0,
        buffer100,
        0,
        400
    );
    query101.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder101.popDebugGroup()
    buffer101.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder102.clearBuffer(buffer100);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    command_encoder102.clearBuffer(buffer100);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
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
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.executeBundles([])
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
    
    texture101.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    buffer104.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const array7 = new Float32Array([1.0, 1.0, 0.0, 0.25, 0.0, 0.5, -0.5, 0.5, 0.0, 1.0, -0.25, 0.25, -1.0, -0.75, -0.25, 1.0, 0.25, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 0.75, 0.0, 0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 0.5, -1.0, -0.75, -1.0, -0.5, 0.25, -0.75, 0.25, 0.25, 0.25, -0.25, 0.75, -1.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.75, -0.5, 0.5, 0.25, -0.5, -0.25, 0.25, -0.75, 0.5, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.75, -1.0, 1.0, 0.25, 0.75, 0.0, -0.75, 0.75, -0.5, 0.5, 0.0, 0.0, -0.75, 0.5, -0.25, -1.0, 0.5, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.75, 1.0, -1.0, -0.75, 0.25, -1.0, -0.5, -0.5, ]);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    buffer105.destroy()
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const array8 = new Float32Array([-0.25, 0.0, -1.0, -0.75, -0.25, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.5, 0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -0.5, -0.5, 0.0, 0.0, 1.0, 0.75, -0.75, 0.0, -1.0, -0.75, 1.0, -0.25, 0.0, -0.75, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, 0.25, -0.25, -0.75, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, 0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.5, 0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 1.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.5, -0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, -0.75, ]);
    
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    query103.destroy()
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer100.destroy()
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
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1020.executeBundles([])
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query104.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout104]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setPipeline(render_pipeline103);
    const array9 = new Float32Array([0.5, 0.75, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.5, 0.75, 0.0, -0.5, 0.0, -0.25, -0.5, -0.75, 0.5, 0.0, -0.5, -0.5, -1.0, -1.0, -0.25, -0.25, -0.75, -0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 0.5, 0.25, 0.5, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, 0.0, 1.0, 0.75, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 0.75, 0.0, 1.0, -1.0, 1.0, -0.5, 1.0, 0.0, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, -0.25, -0.25, 1.0, -0.75, 0.5, -0.25, ]);
    query100.destroy()
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    render_pass_encoder1010.popDebugGroup();
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1010.setStencilReference(1);
    
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
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
    render_pass_encoder1020.setPipeline(render_pipeline106);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    render_pass_encoder1030.insertDebugMarker("marker");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer107.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    buffer108.destroy()
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    query102.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    query102.destroy()
    
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([-0.5, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 0.25, 1.0, -0.5, 1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.25, 0.5, -0.5, -0.5, 1.0, -1.0, 0.5, 0.5, 0.0, 0.25, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -0.75, 0.75, 0.0, -0.5, -0.75, 0.0, 0.0, 0.75, 0.75, 0.5, 0.75, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, -0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.75, -0.5, -0.5, -0.25, ]);
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query102.destroy()
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer106.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setStencilReference(1);
    
    
    buffer1012.destroy()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer1014.destroy()
    query101.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    compute_pass_encoder1000.end();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer1010.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query105.destroy()
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query103
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    buffer1013.destroy()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group105);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    texture302.destroy();
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.executeBundles([])
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query104.destroy()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array11 = new Float32Array([0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.5, -0.5, -0.5, 0.0, 0.0, 0.0, 0.75, -0.75, 0.0, -0.25, -0.75, 0.5, -0.25, -0.25, 1.0, 0.0, -0.5, -1.0, 0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 1.0, 1.0, 0.25, 0.75, 0.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, -0.75, -0.5, -1.0, -0.75, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.75, -0.5, 0.5, 0.0, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, 0.75, 1.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.25, 0.5, -0.25, -0.5, 0.5, 0.0, 0.0, -0.5, ]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
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
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    texture304.destroy();
    render_pass_encoder3000.executeBundles([])
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.popDebugGroup();
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout106]
    });
    buffer1016.destroy()
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    query106.destroy()
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    texture303.destroy();
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout109,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.popDebugGroup();
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
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
    render_pass_encoder1020.insertDebugMarker("marker");
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_bundle_encoder101.setBindGroup(0, bind_group106);
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer1015.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.popDebugGroup();
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
}