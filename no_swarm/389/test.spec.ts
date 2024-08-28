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
    
    const array0 = new Float32Array([-0.25, -0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -0.5, -0.5, -0.5, -0.75, -0.75, -0.25, 0.25, 1.0, 0.0, -0.25, 0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 0.75, -0.5, -1.0, -0.25, 0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.5, 0.25, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.0, 0.5, 0.5, 0.5, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, -1.0, -1.0, -0.25, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, -0.75, -1.0, 0.25, -0.5, -0.5, 1.0, -0.25, 0.5, -0.25, 0.5, -0.25, 0.25, -1.0, 0.0, -0.25, 0.25, -1.0, 0.0, 1.0, 1.0, 0.25, -0.75, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.75, 0.5, -0.75, 0.0, 0.75, ]);
    const array1 = new Float32Array([0.5, 1.0, 0.75, 0.0, 0.5, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -0.75, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, 0.75, 0.0, -0.25, -0.5, 0.0, 0.0, -1.0, 0.75, -0.25, 0.0, 0.5, -0.5, 0.25, 1.0, -1.0, -0.75, 0.5, 0.75, -0.75, 1.0, -0.5, -1.0, -0.25, 0.5, -1.0, -0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.0, -1.0, 0.0, -1.0, 0.0, 1.0, 0.75, 0.5, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, 0.75, -0.75, 0.5, -0.25, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 1.0, 0.25, 0.5, 0.75, 0.75, 1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, -0.75, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
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
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device00.destroy();
    
    
    
    
    const array2 = new Float32Array([1.0, 0.75, -1.0, 0.5, 1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.25, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, -0.75, 0.25, -0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 0.5, -0.25, 0.25, -0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.5, -0.5, -0.75, -0.5, -1.0, 0.0, 0.5, 0.0, 0.0, 0.5, -0.25, 0.25, 0.0, -0.25, -0.25, 0.0, 0.75, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, -1.0, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.5, 0.0, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, 0.5, 0.0, 0.5, ]);
    
    
    
    
    const array3 = new Float32Array([1.0, 0.25, -1.0, 1.0, -1.0, -0.25, 0.75, 0.25, -1.0, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, 0.5, -0.25, 0.5, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, -0.5, -1.0, -0.25, -1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.5, 0.75, -0.25, -0.25, -0.75, 1.0, 1.0, -0.75, -0.5, 0.25, -1.0, -0.5, 1.0, -0.25, -0.5, 0.5, -0.5, 0.5, 0.75, -1.0, -0.25, -0.25, -0.5, -1.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.25, -0.5, -0.5, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.75, 0.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    texture103.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    
    
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const array4 = new Float32Array([0.5, -0.75, 0.5, 0.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 0.75, 1.0, 0.0, -0.75, 0.75, -1.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, -0.5, 0.5, -1.0, 0.75, -0.75, 0.0, -0.25, 0.0, 0.5, -0.25, 1.0, -0.75, 0.5, 0.5, 0.0, -0.75, 0.5, 1.0, 0.25, 0.25, -0.5, 0.5, 0.25, -1.0, 1.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.75, -1.0, -0.5, 0.0, 0.75, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    query100.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.destroy();
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1014,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder1020.setPipeline(render_pipeline103);
    query100.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.pushErrorScope("validation");
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const array5 = new Float32Array([-0.5, -0.25, 1.0, 0.0, 0.25, -0.75, -0.5, -1.0, -0.5, -0.25, 0.0, 0.25, 0.5, -0.5, -0.5, -0.75, 1.0, 0.5, -0.5, -0.25, 1.0, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, 0.75, 1.0, 0.5, -0.25, 0.25, 1.0, 1.0, -0.75, 1.0, 0.75, -0.75, -0.75, -0.75, -0.25, 0.75, -0.25, -0.25, -0.5, -1.0, 0.5, -0.25, 1.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.75, -0.5, 0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -1.0, 0.0, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -0.75, -0.75, 1.0, 0.0, -0.75, -1.0, 1.0, 0.5, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.75, -0.75, 0.25, -0.75, ]);
    query100.destroy()
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer102.destroy()
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline102);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder1010.setStencilReference(1);
    texture101.destroy();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    
    buffer100.destroy()
    buffer104.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer105.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query100.destroy()
    buffer103.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline105.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    device10.pushErrorScope("internal");
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    
    render_pass_encoder1010.setStencilReference(1);
    buffer107.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer109.destroy()
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array6 = new Float32Array([-1.0, 0.75, 0.0, 0.5, -0.25, -0.75, 1.0, 0.0, 0.0, -0.25, 0.0, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.5, 0.25, -0.75, 0.75, 0.75, -0.75, -0.25, 0.0, 1.0, 0.5, 0.0, 0.0, 0.5, 0.25, 0.0, 0.5, 0.0, -0.75, 0.25, -0.25, -0.25, -0.5, 0.75, -0.75, -0.5, -0.25, -0.5, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, -0.25, 0.5, 0.0, -0.5, 0.25, -1.0, -0.5, 0.5, -0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.25, -0.5, -0.25, 0.75, -0.75, 0.5, 0.25, 1.0, -1.0, -0.5, -0.25, 0.0, 0.5, 0.5, -0.5, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, -1.0, -1.0, -0.25, 0.5, -0.25, 0.5, 0.0, ]);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer1013, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1013, 0, array6, 0, array6.length);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    buffer1010.destroy()
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    buffer1012.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.endOcclusionQuery()
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture106 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const array7 = new Float32Array([0.0, 1.0, -1.0, -1.0, -0.75, 1.0, -0.75, -0.5, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, 0.25, 0.0, 0.75, 0.25, -0.75, -0.75, -0.75, -0.25, -0.5, 0.75, -0.75, -0.5, -0.5, 0.25, 0.5, -1.0, 0.5, 0.25, -0.5, -1.0, 0.0, 0.25, -0.25, -1.0, 0.75, -0.5, 0.0, 1.0, -0.25, -1.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, 0.25, -0.75, -0.75, -0.25, 1.0, 0.5, 0.5, 0.25, 0.75, -0.5, -1.0, -0.75, 1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.75, 0.25, -0.5, 0.25, 0.25, -0.75, -0.5, -0.25, ]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-0.5, -0.5, 1.0, 0.25, -0.25, -0.5, -0.25, 0.5, -1.0, 0.25, 1.0, 0.75, 0.25, 0.75, -0.75, -0.75, 1.0, -0.5, 0.5, 0.0, 0.5, -0.25, 1.0, -0.25, -0.25, -0.25, 1.0, -0.25, -1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.25, 0.5, -0.5, 0.75, -1.0, -1.0, 0.5, -1.0, 0.5, -0.5, -1.0, 0.5, 0.0, 1.0, 0.25, 1.0, -0.25, -1.0, -1.0, 0.0, 0.5, 1.0, -0.75, 0.5, 0.75, 0.0, 1.0, 0.75, 0.75, -0.5, -1.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.5, 0.5, -0.5, 0.5, 0.25, -0.25, -0.75, -0.75, 0.0, 0.25, ]);
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture106 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1011.destroy()
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture106 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture105.destroy();
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture107
        },
        {
            buffer: buffer1013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1041,
            },
        ],
        occlusionQuerySet: query100
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.queue.writeBuffer(buffer1013, 0, array6, 0, array6.length);
    device10.queue.writeTexture({ texture: texture106 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    
    device10.queue.writeTexture({ texture: texture106 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1015,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    device10.queue.writeBuffer(buffer1013, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    render_pass_encoder1030.setPipeline(render_pipeline104);
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    render_pass_encoder1010.setStencilReference(1);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    const texture_view1044 = texture104.createView({ label: "texture_view1044" });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    const array9 = new Float32Array([-0.75, 0.0, -0.75, -0.5, 0.75, -0.25, 1.0, 0.25, 1.0, 0.25, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 1.0, 0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 0.75, -0.25, 0.0, 1.0, 1.0, 0.5, -1.0, 0.25, -0.25, 0.25, -0.5, -0.25, 1.0, 0.25, 0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.75, -0.5, -0.25, -1.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.5, -0.5, 0.75, 0.0, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, 0.75, 0.0, 0.25, -0.25, 0.25, 0.75, 0.25, 0.5, 0.25, -1.0, 0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -1.0, 0.5, ]);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setStencilReference(1);
    texture107.destroy();
    render_pass_encoder1040.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1013, 0, array1, 0, array1.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    texture109.destroy();
    render_pass_encoder1040.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture106 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeBuffer(buffer1013, 0, array6, 0, array6.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture106.destroy();
    query101.destroy()
    
    render_pass_encoder1040.setStencilReference(1);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder100.popDebugGroup();
    
    render_pass_encoder1020.setStencilReference(1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1020.popDebugGroup();
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1013, 0, array4, 0, array4.length);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device30.destroy();
    
    device10.queue.writeBuffer(buffer1013, 0, array2, 0, array2.length);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    texture104.destroy();
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture108.destroy();
    query100.destroy()
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    render_pass_encoder1040.insertDebugMarker("marker");
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
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline102);
    
    buffer1015.destroy()
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    query101.destroy()
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
        layout: render_pipeline102.getBindGroupLayout(0),
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
    const array10 = new Float32Array([0.0, 0.5, -0.75, -1.0, 0.5, -0.5, -0.75, 0.75, 0.5, 0.5, 0.25, 1.0, 0.0, 0.5, 0.5, 0.5, -0.25, 0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, -0.5, -1.0, -0.25, -1.0, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -1.0, 1.0, 0.5, -0.25, 0.5, -0.75, 0.75, 1.0, -0.25, 0.75, -0.5, 0.75, 0.5, 0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, 0.5, -1.0, -1.0, -0.75, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, -1.0, -0.5, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, 0.5, 0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 0.0, -0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -1.0, -0.75, -0.5, 0.5, ]);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer1016.destroy()
    buffer1013.destroy()
    compute_pass_encoder1000.popDebugGroup()
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module1011,
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
            module: shader_module1011,
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer1017.destroy()
    const array11 = new Float32Array([-0.5, -0.5, 0.25, 0.0, 1.0, 0.75, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, -0.75, -0.75, 0.25, 0.0, -1.0, -0.25, 0.25, -0.25, -0.5, 0.0, -0.25, 1.0, 1.0, 0.25, -0.5, -0.75, -1.0, -1.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 1.0, -0.25, -1.0, -0.5, -0.75, 1.0, 0.0, 0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 1.0, 0.5, -1.0, 0.25, 1.0, 1.0, 0.0, -0.75, 0.75, 0.75, 0.25, -0.25, 0.75, -1.0, -1.0, -1.0, -0.75, -0.5, 1.0, -0.25, -1.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.25, -0.75, -0.5, -0.75, 0.0, 0.0, 1.0, 1.0, -0.75, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.0, 0.25, ]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    render_pass_encoder1030.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1020.popDebugGroup();
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}