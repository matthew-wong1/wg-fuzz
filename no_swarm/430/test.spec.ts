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
    const array0 = new Float32Array([-0.5, -0.25, 0.5, -1.0, 0.75, 0.5, 0.0, 0.0, 0.75, -0.25, -0.5, -0.75, -0.25, 0.25, 1.0, -0.75, 1.0, 1.0, -0.5, 0.25, 0.75, 0.25, 0.25, 0.5, 0.25, -1.0, -0.75, 0.25, 1.0, 0.5, 1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, 0.0, 0.25, 0.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.75, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, -0.5, 0.5, 0.5, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.75, 0.5, -0.25, 0.25, -0.25, -0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.25, -0.25, 0.0, -0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 1.0, -1.0, 1.0, 0.75, -0.75, 0.0, -1.0, -0.75, 0.75, -0.25, -0.25, -0.5, -1.0, 0.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer100 = command_encoder100.finish();
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query100.destroy()
    
    device10.pushErrorScope("validation");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer101.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.0, 0.5, -0.5, 0.25, -0.75, 0.0, 0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.5, -0.25, 0.75, 1.0, -0.75, 0.0, -1.0, -0.25, -0.75, 0.5, -0.75, 1.0, 0.5, -0.25, 0.0, 0.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.5, 0.5, 0.25, 0.5, -0.5, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.5, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device00.pushErrorScope("internal");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.queue.submit([command_buffer100, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    query100.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const array2 = new Float32Array([1.0, 0.25, 0.25, -0.75, 0.25, 0.25, -1.0, -0.5, 1.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.0, 1.0, 0.0, 0.75, 0.25, 0.75, 0.0, -0.5, -0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.0, -1.0, -0.75, -1.0, 0.5, -0.25, -1.0, 0.0, -0.25, -0.5, -0.5, -1.0, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, 0.75, 1.0, 0.25, -1.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, 1.0, -0.25, -0.5, 0.75, 1.0, 0.5, 0.25, 0.75, 0.75, -0.5, 0.25, 0.75, 0.0, -0.75, 0.25, 0.25, -0.25, ]);
    render_pass_encoder1020.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    const array3 = new Float32Array([1.0, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, 0.5, 1.0, 0.25, -0.5, 0.5, 0.0, 1.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 0.5, -0.5, -1.0, 0.25, -0.5, -0.75, -0.5, 0.0, -0.25, 0.5, -0.25, 0.25, 0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.75, -0.5, 0.75, 0.5, -1.0, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, -0.5, 0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.75, 0.5, 0.25, -1.0, -0.25, -1.0, 0.5, 0.5, 0.0, 1.0, -1.0, 0.5, 0.0, -0.75, 1.0, -0.5, 0.0, -0.75, -0.75, 0.25, 0.25, -0.5, -0.25, ]);
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    buffer102.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.executeBundles([])
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1020.setStencilReference(1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1020.setStencilReference(1);
    
    
    render_pass_encoder1010.executeBundles([])
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query000.destroy()
    texture100.destroy();
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    const array4 = new Float32Array([0.0, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.75, -0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.75, -0.25, 1.0, 0.25, 0.0, -0.75, -0.5, -0.5, -0.75, -0.25, -0.5, 0.25, -1.0, -0.5, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, -1.0, 0.75, -0.5, -0.25, -0.5, 0.25, 0.0, -0.75, 0.75, 0.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.25, -0.75, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, -0.5, 0.5, 1.0, 0.0, 0.75, 0.75, -0.75, 0.75, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, 0.5, 1.0, 0.5, 0.0, 0.25, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, -1.0, 0.0, -0.25, 1.0, -1.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.0, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    texture000.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder002.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    buffer103.destroy()
    render_pass_encoder1010.setStencilReference(1);
    
    
    
    buffer100.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query100.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const array5 = new Float32Array([-1.0, 1.0, 0.25, 0.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, 0.5, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.75, -0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -1.0, -0.5, 0.25, -0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 0.5, 0.75, 1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.25, -0.25, 0.25, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.75, 0.0, -0.25, -0.25, 1.0, 0.25, -0.25, 0.75, 1.0, 1.0, -1.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline102);
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
    render_bundle_encoder102.setPipeline(render_pipeline102);
    query002.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    compute_pass_encoder0010.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture101.destroy();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device20.destroy();
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1020.setStencilReference(1);
    
    const array6 = new Float32Array([0.75, 0.25, 0.75, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.25, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, -0.75, 0.25, -0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.5, -1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.75, -1.0, -0.25, -0.75, 0.0, -0.25, 0.25, 0.75, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, -0.5, -0.25, -0.75, -1.0, -0.25, -0.5, 0.5, 0.75, 0.75, -0.5, -0.75, -1.0, 0.25, 1.0, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 0.25, -1.0, 0.5, 0.25, -0.25, -0.75, -0.75, -0.75, 0.25, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0020.setStencilReference(1);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer000.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query101.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer104.destroy()
    device30.pushErrorScope("out-of-memory");
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    buffer001.destroy()
    query002.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder002.popDebugGroup();
    buffer107.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
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
        occlusionQuerySet: undefined
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    texture001.destroy();
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query003.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    buffer004.destroy()
    query001.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query004.destroy()
    buffer109.destroy()
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
    render_pass_encoder0040.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device40.pushErrorScope("validation");
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture300.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer005.destroy()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_bundle_encoder101.popDebugGroup();
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.popDebugGroup()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    buffer106.destroy()
    render_pass_encoder1040.setPipeline(render_pipeline104);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query004.destroy()
    buffer1011.destroy()
    render_pass_encoder0030.setStencilReference(1);
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
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder1050.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    render_bundle_encoder001.popDebugGroup();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query002.destroy()
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder1020.popDebugGroup();
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    render_pass_encoder1020.setStencilReference(1);
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
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1050.setPipeline(render_pipeline104);
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    buffer105.destroy()
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
        occlusionQuerySet: query100
    });
    buffer300.destroy()
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer108.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query100.destroy()
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
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
    buffer003.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1060.setPipeline(render_pipeline102);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder1010.setStencilReference(1);
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
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder601.pushDebugGroup("mygroupmarker")
    query100.destroy()
    
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.destroy();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group103);
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    query100.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group104);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group105);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder7000.pushDebugGroup("group_marker")
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
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
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.clearBuffer(buffer500);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0030.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer007, 0);
    const command_buffer600 = command_encoder600.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0050.setPipeline(render_pipeline000);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer500 = command_encoder500.finish();
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

    render_pass_encoder0050.setBindGroup(0, bind_group002);
    compute_pass_encoder7000.popDebugGroup()
    command_encoder601.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.end();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer001 = command_encoder001.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    device50.queue.submit([command_buffer500, ]);
}