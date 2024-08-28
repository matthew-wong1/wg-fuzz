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
    
    
    const array0 = new Float32Array([0.0, 0.5, 1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -1.0, 0.25, 0.25, 1.0, 0.25, 0.25, 1.0, -0.25, -0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -1.0, 1.0, 0.25, 0.0, -1.0, -1.0, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.75, -0.25, 1.0, 0.5, -1.0, -1.0, -0.5, 0.5, 1.0, 0.75, 0.5, 0.25, 0.75, -0.75, -1.0, -0.25, -1.0, 0.5, -0.5, 0.0, 0.5, 0.75, 0.75, 0.75, 0.75, -1.0, -1.0, -0.5, 0.25, 0.75, 0.5, 1.0, 0.75, 0.75, 0.5, 0.75, 0.25, -1.0, 0.25, -1.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.75, -0.75, -0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.75, ]);
    
    
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.0, -1.0, -1.0, -0.75, 0.25, 0.0, 0.0, 0.25, 0.25, -0.25, 0.25, -0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 1.0, -0.25, 0.5, 0.75, 1.0, 0.0, -0.5, -1.0, 0.5, 0.75, -0.5, 0.25, 0.75, -0.25, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.25, -0.75, 0.75, -0.75, 0.25, 0.25, 0.75, 0.5, 1.0, -0.5, 1.0, -1.0, 0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.5, 0.5, 0.5, 0.75, -1.0, 0.25, 0.0, -1.0, -0.75, 0.0, 0.25, 0.5, -0.5, 0.0, 1.0, 0.25, 0.0, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, -0.75, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.5, 1.0, -0.5, -0.5, 1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    device00.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    
    const array2 = new Float32Array([-0.75, 1.0, -0.25, 0.75, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.5, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.25, 0.75, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.5, -0.75, -1.0, 0.25, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 1.0, 0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 1.0, 1.0, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.5, 0.25, -0.25, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query100
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    const array3 = new Float32Array([-0.25, 1.0, 0.75, -0.25, -0.5, -0.75, 0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, -0.5, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.0, -0.5, -0.75, -1.0, -0.75, 0.25, -1.0, -0.75, 0.75, -0.25, -0.5, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, -0.75, 0.5, 0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 1.0, 0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.5, 0.0, 0.0, 1.0, 0.25, -0.5, 0.25, -1.0, 0.5, -0.75, 0.75, 0.5, 0.5, -0.25, 0.75, -0.25, 0.25, 0.75, ]);
    render_bundle_encoder102.popDebugGroup();
    
    const array4 = new Float32Array([-0.25, 1.0, -0.5, 0.75, -0.25, 0.5, 0.0, 0.75, -0.75, 0.75, 0.75, 1.0, 0.0, -0.5, 0.25, -0.75, -1.0, -0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 0.25, 0.0, 0.5, -0.25, 0.0, 0.0, -0.25, 0.5, 1.0, -0.5, 0.25, 0.75, 0.5, 0.75, 1.0, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 0.5, -0.75, 0.0, -0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 0.25, -0.25, -1.0, 0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 0.0, -0.75, 1.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.25, 0.5, 0.5, -0.5, -0.5, 0.75, -0.75, 1.0, 0.0, ]);
    query100.destroy()
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    buffer100.destroy()
    render_pass_encoder1000.executeBundles([])
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    texture200.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder1000.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1000.executeBundles([])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
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
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder1000.setPipeline(render_pipeline100);
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const command_buffer101 = command_encoder101.finish();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    
    query200.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device20.pushErrorScope("validation");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    buffer101.destroy()
    
    query200.destroy()
    const array5 = new Float32Array([-0.75, 0.25, 1.0, 1.0, 0.5, 1.0, 0.5, -0.5, 0.0, 0.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 1.0, -0.5, -0.75, 0.25, 0.5, 0.75, 0.0, -0.25, 0.25, -0.25, 0.5, -0.25, 0.25, 1.0, -0.5, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.5, -1.0, -0.5, 1.0, 1.0, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 0.25, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 0.25, 0.5, 0.25, 0.25, 0.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.25, 0.0, -0.25, 0.0, -0.5, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, -1.0, -0.5, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -0.5, -0.75, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer104.destroy()
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
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
    query100.destroy()
    render_pass_encoder1000.setStencilReference(1);
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    
    query100.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query200.destroy()
    query100.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    
    query100.destroy()
    texture202.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("internal");
    
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
    
    buffer106.destroy()
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    texture103.destroy();
    buffer201.destroy()
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    texture101.destroy();
    buffer102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    device10.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
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
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer200.destroy()
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    device30.destroy();
    const array6 = new Float32Array([-0.5, -0.5, -0.25, 0.75, -0.5, -0.25, 0.5, 0.5, 0.5, -0.5, 0.5, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, 1.0, -0.25, 1.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.25, -0.25, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, 0.0, 1.0, -0.75, -0.75, 0.25, 1.0, 0.25, -0.5, 0.0, -0.5, 0.0, -0.25, 1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.0, -0.5, 1.0, -0.5, 0.25, -0.25, 1.0, 0.5, 0.0, -0.5, -0.5, 0.5, 0.25, 0.5, -1.0, 0.25, -1.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.0, 0.5, 0.25, -0.25, 1.0, 0.5, 0.0, 0.5, 0.75, -0.5, 0.25, -0.5, -1.0, -0.75, -0.25, -0.5, 0.0, 0.5, ]);
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
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device40.destroy();
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    buffer108.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    
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
    render_pass_encoder1000.insertDebugMarker("marker");
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
    render_pass_encoder1000.pushDebugGroup("group_marker");
    buffer1011.destroy()
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array7 = new Float32Array([-0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -0.5, 0.75, 1.0, 0.25, 0.5, 0.0, 1.0, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -0.75, -0.75, 0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, 0.25, -0.75, 0.25, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, 1.0, 1.0, -0.75, -0.75, 0.75, 0.75, -0.75, -1.0, -0.75, -0.75, 0.5, 0.25, 0.5, -1.0, 1.0, 0.5, 0.25, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, -0.25, -1.0, -0.25, -0.5, 0.5, -1.0, 1.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.5, ]);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    
    render_bundle_encoder100.popDebugGroup();
    
    buffer1015.destroy()
    
    
    buffer1010.destroy()
    
    
    buffer1012.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer107.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture100.destroy();
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    texture105.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer1013.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer109.destroy()
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    query100.destroy()
    
    query100.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    render_bundle_encoder102.popDebugGroup();
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    query202.destroy()
    query100.destroy()
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-0.75, 0.75, 0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, -0.75, 1.0, 0.0, -1.0, -1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -1.0, 0.5, 1.0, -0.5, 0.5, -1.0, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, -0.5, 0.5, 0.25, -0.75, 1.0, 0.5, -0.5, -0.25, -1.0, -0.75, -1.0, -0.25, 1.0, 0.5, 0.25, 0.5, -0.25, 0.5, -0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -0.5, -0.5, 0.0, -1.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.5, 0.75, -1.0, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, 0.0, -1.0, 0.75, 1.0, 0.0, -0.25, 0.75, 0.75, -1.0, 0.75, -1.0, -1.0, 0.75, 1.0, 0.25, 0.0, 0.75, ]);
    
    texture106.destroy();
    buffer103.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module1012,
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
            module: shader_module1012,
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
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_pass_encoder1000.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    buffer105.destroy()
    query202.destroy()
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    query201.destroy()
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    query202.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module1014,
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
            module: shader_module1014,
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder2000.popDebugGroup()
    
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array9 = new Float32Array([0.75, 0.75, 1.0, -0.5, 0.25, 0.5, 1.0, -0.5, 1.0, 0.5, 0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 0.75, 0.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.5, -0.75, 0.0, 0.75, 1.0, 0.0, -0.75, 1.0, 0.5, 0.25, 0.5, -0.25, 0.75, 0.25, -0.75, 1.0, -0.75, 0.5, 0.75, 0.75, -0.75, -0.25, 0.25, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, -0.5, 0.0, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -0.75, 0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 1.0, 0.5, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, 1.0, -0.25, -1.0, 1.0, -0.25, 1.0, 0.5, 0.5, -0.75, 0.5, ]);
    
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder2010.end();
    compute_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer200, ]);
}