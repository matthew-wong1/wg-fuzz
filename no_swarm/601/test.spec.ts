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
    
    
    const array0 = new Float32Array([-0.25, -1.0, -0.75, 0.25, 1.0, 1.0, 0.5, 1.0, -0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 0.75, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, 0.0, -0.5, 1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.75, 0.25, 0.0, -0.75, -0.75, -0.25, 0.0, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, -0.25, -1.0, -0.25, -0.5, -0.25, -0.25, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -0.25, -0.25, 0.25, -0.5, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, -0.25, 0.5, 0.5, 0.25, -0.25, -0.5, -1.0, 0.0, 0.25, -0.75, 0.75, 0.5, -0.5, -0.5, 0.0, -0.25, -1.0, 0.75, -0.5, 0.0, 0.0, ]);
    const array1 = new Float32Array([-0.25, -1.0, -1.0, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, 1.0, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 0.0, -0.5, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -1.0, -0.5, 0.0, 1.0, -1.0, 1.0, 1.0, -0.75, -0.25, 1.0, 0.25, 0.5, -0.25, -0.25, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.5, -1.0, 0.75, 0.75, -0.25, 0.5, -0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 1.0, -0.25, -0.75, 1.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, 1.0, -0.25, 0.25, 0.25, 0.75, 0.25, 0.0, -0.25, 0.25, 0.75, 0.75, -0.25, -0.75, 0.0, 0.25, 1.0, -0.5, 0.0, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -0.75, 1.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.75, -0.25, 0.5, -1.0, 0.25, 0.75, 0.25, 0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.5, 0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.75, -0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, -1.0, 0.75, 0.0, -0.75, -0.25, -0.25, -1.0, -1.0, 1.0, 0.25, -0.5, -0.75, 0.75, -1.0, -0.75, 0.25, -1.0, -0.5, -0.25, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.pushErrorScope("internal");
    
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    query000.destroy()
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
    texture000.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
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
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0020.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setPipeline(render_pipeline004);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.executeBundles([])
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setPipeline(render_pipeline006);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    texture003.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    texture001.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer003.destroy()
    render_pass_encoder0020.setStencilReference(1);
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    texture004.destroy();
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    buffer001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const array3 = new Float32Array([0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.25, 0.5, -0.75, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, -0.25, 0.5, -0.5, 0.75, 0.0, 0.0, 0.75, 0.25, -0.5, 0.5, 1.0, 0.75, -0.25, 1.0, -1.0, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.25, 0.0, -1.0, 0.0, 0.25, 0.5, 0.25, -0.75, -0.75, 0.5, -0.75, 0.75, -0.5, -0.75, 1.0, -0.5, -0.25, 0.5, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, -0.25, -0.25, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, -1.0, 0.5, -0.75, -0.25, 0.0, -0.75, 0.5, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.25, 0.75, 0.0, 1.0, 0.75, 0.5, -0.5, ]);
    
    
    texture002.destroy();
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.pushErrorScope("out-of-memory");
    buffer005.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device20.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query003.destroy()
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    query003.destroy()
    
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    query003.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer002.destroy()
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    device00.pushErrorScope("validation");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    const texture_view0061 = texture006.createView({ label: "texture_view0061" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array4 = new Float32Array([1.0, 0.25, 0.0, -1.0, 0.5, -0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, 0.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.25, -0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.25, 0.5, 1.0, -0.25, -0.25, -1.0, 0.0, 0.0, -0.5, 1.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.75, 0.75, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 1.0, 0.0, -0.75, 1.0, 0.0, 1.0, -0.25, -1.0, -0.25, -0.75, 0.75, 0.0, -0.5, 0.0, 0.5, -0.5, -0.5, -1.0, -1.0, 1.0, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, -0.5, 0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, -0.5, 0.5, -0.5, -0.75, 1.0, -0.5, ]);
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.destroy();
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0000.popDebugGroup()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    query000.destroy()
    
    
    device00.pushErrorScope("validation");
    texture005.destroy();
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture006.destroy();
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const texture_view0081 = texture008.createView({ label: "texture_view0081" });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0080,
            },
        ],
        occlusionQuerySet: query002
    });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0030.setPipeline(render_pipeline003);
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    query000.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    render_pass_encoder0030.setViewport(0, 0, texture008.width / 2, texture008.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture007 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture008.width / 2, texture008.height / 2);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer008.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer004.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query003.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0061,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setScissorRect(0, 0, texture008.width / 2, texture008.height / 2);
    render_pass_encoder0040.setPipeline(render_pipeline0011);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline0025 = device00.createRenderPipeline({
        label: "render_pipeline0025",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    render_pass_encoder0020.setStencilReference(1);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline0026 = device00.createRenderPipeline({
        label: "render_pipeline0026",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([-0.25, 1.0, -0.25, 0.75, 0.5, -1.0, 1.0, 0.25, 0.75, 0.25, -0.5, 0.0, -1.0, -1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, -1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.5, -0.75, -0.25, 1.0, -0.5, 0.75, -0.25, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, 1.0, 1.0, 0.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.5, 1.0, -0.75, -1.0, 1.0, -1.0, 0.5, 0.25, 0.0, 0.5, 1.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.25, -0.75, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, -0.5, 0.75, -0.75, 1.0, -0.25, -0.5, -0.75, -1.0, 0.25, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture008.destroy();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline0027 = device00.createRenderPipeline({
        label: "render_pipeline0027",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    query003.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const texture_view0072 = texture007.createView({ label: "texture_view0072" });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    device50.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture007 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pipeline0028 = device00.createRenderPipeline({
        label: "render_pipeline0028",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_pass_encoder0040.setViewport(0, 0, texture006.width / 2, texture006.height / 2, 0, 1);
    
    render_pass_encoder0030.setViewport(0, 0, texture008.width / 2, texture008.height / 2, 0, 1);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout008,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    query004.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer0010,
        0
    )
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0080,
            },
        ],
        occlusionQuerySet: query000
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.setPipeline(render_pipeline0010);
    render_pass_encoder0050.setPipeline(render_pipeline0017);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder002.setPipeline(render_pipeline0019);
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0040.setStencilReference(1);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    
    render_pass_encoder0060.setPipeline(render_pipeline0018);
    device30.destroy();
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0050.setViewport(0, 0, texture008.width / 2, texture008.height / 2, 0, 1);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.5, 0.25, -0.75, 0.25, 0.25, -0.25, -0.5, -0.75, 1.0, 0.25, -0.5, -0.75, 0.25, -1.0, 0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.75, 1.0, 0.0, 0.25, -0.25, 0.75, 0.25, 0.5, -1.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.0, -0.25, 0.0, 0.75, -0.5, -0.75, 0.0, 0.5, 0.5, 0.0, -0.5, -1.0, -1.0, 0.0, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, -0.75, 0.75, 0.75, -0.25, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -1.0, -0.25, -0.75, 0.0, 0.0, -0.25, 0.25, -1.0, 0.5, 0.0, 0.25, -0.25, -0.5, 0.5, -1.0, 0.5, -1.0, 1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 0.0, 0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 0.75, 0.25, -0.75, 0.5, 0.0, -1.0, ]);
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline006.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    query001.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view0073 = texture007.createView({ label: "texture_view0073" });
    render_pass_encoder0060.setViewport(0, 0, texture007.width / 2, texture007.height / 2, 0, 1);
    const render_pipeline0029 = device00.createRenderPipeline({
        label: "render_pipeline0029",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0010.insertDebugMarker("marker");
    const array7 = new Float32Array([0.0, 0.0, -0.75, -0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -0.25, -0.5, 0.5, -0.25, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, 1.0, 0.0, 0.25, 0.0, -0.5, 1.0, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, -0.25, -0.25, -0.25, -0.75, 0.0, 0.75, 0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 1.0, -0.75, 0.25, -0.5, 0.75, 0.0, 0.0, 0.5, -0.75, 0.25, 0.0, 1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, -0.25, 0.0, 0.5, 0.0, -0.75, 0.5, 1.0, -0.75, -0.25, -0.75, 0.75, -0.75, -0.5, 0.25, 0.5, -1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.0, -1.0, -0.5, ]);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query004.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    query000.destroy()
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    const render_pipeline0030 = device00.createRenderPipeline({
        label: "render_pipeline0030",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device60.pushErrorScope("internal");
    query002.destroy()
    const render_pipeline0031 = device00.createRenderPipeline({
        label: "render_pipeline0031",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0071,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_buffer601 = command_encoder601.finish();
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0070.setPipeline(render_pipeline0017);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const render_pipeline0032 = device00.createRenderPipeline({
        label: "render_pipeline0032",
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
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline0010.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    texture009.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0013,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0040.popDebugGroup();
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group006);
    device60.queue.submit([command_buffer601, ]);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline0017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline0018.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.popDebugGroup();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder0060.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer000 = command_encoder000.finish();
    device60.queue.submit([command_buffer600, ]);
}