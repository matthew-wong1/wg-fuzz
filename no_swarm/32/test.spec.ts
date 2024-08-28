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
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([0.0, 0.5, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, -0.5, -0.75, 0.75, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, -0.75, -0.25, 0.75, 0.5, -0.75, -0.5, 0.25, -0.5, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, -1.0, -1.0, -0.25, -0.5, 0.75, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, -0.75, 1.0, 0.25, -0.5, 1.0, -1.0, 0.75, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, 0.0, -0.25, 0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 1.0, -1.0, -0.25, -1.0, -1.0, -0.5, 0.75, -0.75, 1.0, 0.75, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture000.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, 0.5, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -1.0, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 0.5, 0.5, -0.75, -0.75, 0.0, 0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 0.0, -0.5, 1.0, 0.5, -0.5, 0.5, 0.0, 0.0, -1.0, 0.25, -0.5, -0.25, -1.0, 0.25, -0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -1.0, 0.75, 1.0, 0.25, -0.75, -0.25, -0.25, -0.25, -0.75, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -1.0, 0.75, 0.75, -0.5, -1.0, 0.75, 0.5, 0.0, -0.75, -1.0, -0.75, 0.25, -1.0, 0.5, -1.0, 0.25, 1.0, 0.25, 0.0, -0.25, -1.0, 0.75, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.pushErrorScope("out-of-memory");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array2 = new Float32Array([0.25, 0.5, 0.25, -1.0, -0.25, -1.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 1.0, -0.5, -0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 0.0, -0.75, 0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, 1.0, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, -1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.75, 0.75, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, -0.25, -0.75, -1.0, 0.75, 0.5, -0.5, -1.0, 0.75, 0.25, -0.5, 0.75, ]);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([-1.0, 0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, -0.75, -0.5, -0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 1.0, 0.75, -0.75, 0.0, -0.25, 0.75, 1.0, 0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.75, -0.5, 0.5, 1.0, -1.0, 1.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 1.0, -0.5, -0.5, -1.0, 1.0, 0.25, -0.75, 0.0, 0.5, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.75, 0.5, 0.0, 0.75, 0.75, -0.75, 1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, 0.25, 1.0, -1.0, -0.75, -0.25, 0.0, 1.0, ]);
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    buffer200.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    texture103.destroy();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder1000.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.pushErrorScope("out-of-memory");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-1.0, -1.0, -0.5, 0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.5, 0.0, -1.0, -0.75, -0.75, -1.0, 1.0, -1.0, 0.5, 0.5, -0.5, -1.0, -1.0, 1.0, 0.0, -0.25, 0.5, 1.0, -0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.75, -0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, -0.25, 0.0, -1.0, -1.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.0, -0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 1.0, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, -0.75, -0.5, -0.25, 0.25, 0.5, 0.5, 0.25, ]);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    query100.destroy()
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
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
        occlusionQuerySet: query102
    });
    render_bundle_encoder201.insertDebugMarker("marker");
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
        occlusionQuerySet: query200
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    buffer202.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder200.popDebugGroup();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
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
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    query101.destroy()
    render_pass_encoder1000.setStencilReference(1);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder2020.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query102.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2020.beginOcclusionQuery(0)
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    query101.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2010.executeBundles([])
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2020.pushDebugGroup("group_marker");
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device40.destroy();
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder201.insertDebugMarker("marker");
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query101.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    compute_pass_encoder2000.popDebugGroup()
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture105.destroy();
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    render_pass_encoder2020.popDebugGroup();
    
    
    query102.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder1010.setPipeline(render_pipeline102);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder1000.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    buffer102.destroy()
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
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
    
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    buffer104.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query200.destroy()
    
    buffer101.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    
    device30.destroy();
    texture106.destroy();
    query201.destroy()
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query101.destroy()
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
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
    const array5 = new Float32Array([-0.5, -1.0, 0.5, -0.75, -0.75, -0.5, 0.75, 0.75, -0.75, -0.5, 0.0, -1.0, -0.5, -0.5, -1.0, 0.5, 0.75, -0.25, 0.5, 0.5, 0.25, 0.0, -0.5, -0.5, 0.0, -0.75, 1.0, 0.5, -0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, 1.0, -1.0, 0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 1.0, 0.0, 1.0, -0.5, 0.5, 1.0, 1.0, 0.25, 1.0, 0.5, 0.25, -0.25, 0.5, -0.75, -0.5, 0.25, 1.0, -1.0, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, -0.5, 0.75, -0.75, 0.5, -0.5, 0.0, -0.75, 0.5, -0.25, -1.0, 1.0, -0.75, 0.5, 0.25, -0.5, 1.0, ]);
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    buffer103.destroy()
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query103.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    
    query500.destroy()
    query500.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    query102.destroy()
    render_pass_encoder2020.setStencilReference(1);
    query201.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_bundle_encoder102.popDebugGroup();
    query200.destroy()
    render_pass_encoder2020.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, -0.75, 0.25, -0.25, 0.75, 0.5, -0.25, -0.75, -1.0, -0.25, -1.0, -0.25, 0.75, -0.5, -0.5, -0.5, 1.0, 0.25, 1.0, 1.0, -1.0, -0.25, 0.5, 1.0, -0.5, -1.0, 0.0, -0.5, -0.75, 1.0, 0.0, 0.0, 1.0, -0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 0.75, -1.0, 0.0, 0.0, 0.75, 0.75, 1.0, 1.0, -1.0, -0.75, -1.0, 0.25, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, -0.75, -0.5, -0.5, -1.0, 0.25, 0.5, -0.25, -0.75, -0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 0.75, -0.75, -0.25, -0.5, -0.5, -0.75, -0.25, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    texture200.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    texture102.destroy();
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
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2030.insertDebugMarker("marker")
    
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    render_pass_encoder1000.popDebugGroup();
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    query103.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer204.destroy()
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.pushErrorScope("internal");
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const array7 = new Float32Array([-0.75, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 0.0, -1.0, -0.75, -1.0, 0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 0.75, -1.0, -0.75, 0.25, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, 0.75, 0.5, -0.75, 0.75, -0.5, -0.5, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, -1.0, 1.0, -0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.5, -0.25, -0.25, -0.5, 0.0, -0.25, 0.75, 0.0, 1.0, 1.0, -0.5, 0.5, 0.0, -0.25, -0.75, -0.25, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.25, ]);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    buffer105.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query104.destroy()
    
    query100.destroy()
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
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer106.destroy()
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
    
    buffer100.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    query101.destroy()
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2010.setStencilReference(1);
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query101.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline204);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer500.destroy()
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    render_pass_encoder2020.insertDebugMarker("marker");
    texture202.destroy();
    
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
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
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    render_bundle_encoder102.popDebugGroup();
    query104.destroy()
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.pushErrorScope("validation");
    render_pass_encoder2020.popDebugGroup();
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setVertexBuffer(0, buffer206);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.setVertexBuffer(0, buffer206);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.draw(3);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder2010.end();
    command_encoder201.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
}