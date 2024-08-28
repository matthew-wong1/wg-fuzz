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
    
    
    
    const array0 = new Float32Array([-0.75, -1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.0, 1.0, 0.5, 1.0, -1.0, 0.25, 0.25, 0.25, -0.5, 0.75, -0.75, -1.0, 0.25, 0.25, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, 0.25, -0.75, 0.75, 0.75, -0.75, -1.0, 1.0, 0.25, 0.5, -0.75, -0.75, 0.0, 0.75, 0.5, 1.0, -1.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 0.25, -1.0, 0.5, -0.25, -0.5, 1.0, 1.0, 1.0, 0.25, 0.5, 1.0, -0.25, -0.25, -0.75, -0.5, 0.25, -0.75, -1.0, -1.0, -1.0, -1.0, 0.0, -1.0, -0.25, 0.75, 1.0, -0.75, 1.0, 0.75, -0.25, -0.5, -0.5, 0.25, 0.75, -0.25, -0.75, -1.0, -1.0, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("validation");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array1 = new Float32Array([0.0, -0.25, -1.0, 1.0, -0.75, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.25, 0.25, -0.5, -0.25, 0.0, -1.0, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.25, 0.5, 0.75, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 0.0, -0.25, 0.75, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, 0.25, 0.0, 0.5, -0.25, -0.25, 0.25, -0.75, 1.0, -0.25, 0.0, -0.25, -0.5, 1.0, 0.25, -1.0, -0.75, -0.75, -0.25, -0.5, 1.0, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, -0.25, 0.0, 0.75, 0.5, ]);
    
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    render_bundle_encoder000.popDebugGroup();
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const array2 = new Float32Array([-1.0, 0.25, -0.5, -0.5, 0.5, 0.75, 0.75, -0.5, -1.0, -0.75, 0.5, -0.5, 1.0, 1.0, -0.25, 0.5, 0.75, -0.75, -0.5, 0.5, 0.0, 0.75, 0.25, -0.75, 0.5, 0.75, 0.0, -0.75, -0.25, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, -0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.0, -1.0, 0.75, -0.25, 0.75, -1.0, -0.25, -0.5, -0.5, -1.0, 0.0, -0.25, -0.5, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 0.0, -0.5, -0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.25, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, 0.5, 0.25, 0.5, -0.5, -0.25, 0.5, 0.25, -0.25, -1.0, 0.0, -0.25, 0.25, -1.0, ]);
    const array3 = new Float32Array([0.75, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 0.75, -0.5, -0.5, 0.0, 0.25, 0.25, -1.0, -1.0, -1.0, -0.25, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.5, 0.5, -0.75, 1.0, 1.0, 0.0, 0.25, 0.25, -1.0, -0.25, -0.5, 0.5, -0.5, 0.25, 1.0, -1.0, 1.0, -1.0, -1.0, -0.5, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, -0.75, 1.0, -1.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.25, 0.25, -0.75, -0.5, 1.0, 0.25, -0.75, 0.5, 0.75, 1.0, -0.25, -1.0, 0.0, -0.25, 1.0, -0.25, 0.75, 0.75, 0.25, -0.25, 0.25, -0.5, 1.0, 1.0, -0.25, 0.0, 0.25, -0.25, -1.0, 0.0, -0.75, 0.5, -1.0, -0.75, 1.0, -1.0, 0.75, -0.75, -0.5, 0.75, 0.25, ]);
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.setPipeline(render_pipeline000);
    command_encoder000.popDebugGroup()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture000.destroy();
    
    const array4 = new Float32Array([-1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -0.25, -0.75, 1.0, -0.75, 0.75, 1.0, 0.5, -0.25, 1.0, -0.75, -0.5, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.25, 1.0, 0.25, -0.5, -0.75, 0.0, 0.75, 0.5, 0.25, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.75, -0.75, -0.25, -0.25, -1.0, -1.0, 0.25, 0.25, -1.0, -0.25, 0.75, -0.5, 0.0, 0.0, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.75, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, -1.0, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, -0.25, 1.0, -1.0, -1.0, -0.25, ]);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setStencilReference(1);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-1.0, 0.5, -0.25, 0.0, -0.25, 0.5, 0.5, 0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 1.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, -0.25, -0.25, -1.0, 1.0, 0.25, 0.5, 0.75, 1.0, -0.75, -0.5, 0.0, 0.0, -0.75, 0.75, -1.0, -0.75, 0.25, -0.25, 0.25, 0.25, 0.0, 0.0, -0.75, 0.75, -0.25, -0.25, 1.0, 0.25, -0.25, -0.25, 0.75, 0.5, 0.5, 0.5, -1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 1.0, -1.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -0.5, -0.25, -1.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.75, -0.25, 0.0, 0.75, 0.25, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group001);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder002.popDebugGroup();
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    buffer001.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.setPipeline(render_pipeline001);
    buffer003.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    render_pass_encoder0000.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder002.insertDebugMarker("mymarker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0000.setStencilReference(1);
    
    
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer000.destroy()
    const array6 = new Float32Array([0.75, -0.75, 1.0, 0.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.0, 0.25, -0.5, -0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.75, -0.25, 0.25, 0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.75, -0.25, 0.5, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.75, 1.0, 0.25, -0.5, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 0.75, 0.25, -0.5, -1.0, 0.25, -0.25, -1.0, 0.25, 0.5, 0.0, 1.0, 0.25, -1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, 0.0, -0.5, 0.0, 0.25, 1.0, -0.25, ]);
    
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0000.setStencilReference(1);
    
    buffer002.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.popDebugGroup();
    
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setPipeline(render_pipeline004);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.75, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, -0.5, 0.5, -0.25, -0.5, -1.0, -0.5, 1.0, 1.0, 1.0, 0.0, -1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.75, -0.25, -0.25, 0.0, 1.0, 0.0, 0.25, 1.0, -0.25, -0.5, -0.5, -0.25, 0.0, 0.25, 0.75, 1.0, 1.0, 0.75, -1.0, -0.25, 0.25, -0.75, 0.0, 1.0, -1.0, 0.5, -0.25, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, 0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 1.0, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, 0.5, 0.25, 0.5, -0.25, -1.0, -0.5, -1.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, -0.25, 0.0, ]);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0030.popDebugGroup();
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    buffer006.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query002.destroy()
    render_pass_encoder0000.setStencilReference(1);
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array8 = new Float32Array([-0.75, 1.0, -0.25, -0.75, 1.0, 0.0, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -0.25, -0.5, 0.25, -0.75, 0.0, -1.0, -0.5, 0.0, -0.75, -0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 0.0, 1.0, -0.25, -1.0, 0.25, 0.75, -0.5, 0.0, 0.75, -0.25, -1.0, -1.0, -1.0, -1.0, 0.75, 0.25, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, -1.0, -0.5, 0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 0.25, -0.25, 0.0, -0.5, -0.25, 0.0, -0.5, -0.5, -0.25, 0.25, 0.5, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, 0.75, 0.0, 1.0, 0.75, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.25, -0.5, -0.25, -0.5, 0.75, 0.0, 1.0, -0.25, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer008.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 0.75, 1.0, 0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.75, -0.75, -1.0, 0.0, 0.75, -0.75, 0.25, 0.25, -0.75, 1.0, 1.0, 0.5, -1.0, -0.75, -0.25, -1.0, 1.0, -0.5, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.5, 0.75, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 0.0, 0.0, -0.25, -0.5, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -0.5, 0.5, 0.0, 0.25, 0.75, 0.5, -0.25, 1.0, -0.5, ]);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query001.destroy()
    buffer004.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query004.destroy()
    render_pass_encoder0030.popDebugGroup();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer005.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    query000.destroy()
    render_pass_encoder0000.setStencilReference(1);
    query000.destroy()
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_pass_encoder0000.insertDebugMarker("marker");
    query001.destroy()
    const array10 = new Float32Array([-0.25, 0.25, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, -0.25, -0.75, 1.0, 0.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, -0.5, 1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.0, 0.5, -0.5, -0.25, 1.0, -1.0, -0.75, 0.25, 0.5, -0.25, 0.25, -0.75, -0.75, 0.5, -1.0, 0.25, -0.5, -0.75, 0.5, -0.75, -0.25, 0.5, 0.25, -0.5, 1.0, -0.5, -0.75, -0.5, 0.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.75, 0.0, 1.0, -0.75, -0.75, -0.5, -0.75, 1.0, -0.25, -0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, ]);
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array11 = new Float32Array([-1.0, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.25, 0.0, -1.0, -0.75, -1.0, 0.25, -0.5, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.75, 0.0, 0.75, -0.75, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 1.0, -0.75, 0.25, 0.75, 0.25, 1.0, 0.25, -1.0, -0.5, 1.0, 1.0, -0.75, -0.75, -0.25, 0.0, -0.75, -0.25, -0.75, 0.0, -0.25, 1.0, -0.75, -1.0, 0.25, 0.25, 0.75, -0.5, -1.0, 0.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 0.75, 0.75, 0.75, -0.5, 0.5, 1.0, 0.0, 0.75, -1.0, -0.75, -0.25, -0.75, ]);
    render_pass_encoder0000.setStencilReference(1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
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
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    buffer007.destroy()
    
    
    query004.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    query003.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    
    buffer200.destroy()
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer0010.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer009.destroy()
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0050.setPipeline(render_pipeline007);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query004.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    query005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    render_pass_encoder0030.insertDebugMarker("marker");
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    command_encoder006.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0000.setStencilReference(1);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.setPipeline(compute_pipeline006);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
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
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
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
    render_bundle_encoder200.setPipeline(render_pipeline202);
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    buffer202.destroy()
    render_pass_encoder0030.setStencilReference(1);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    device20.destroy();
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const array12 = new Float32Array([-0.25, 1.0, 0.25, -0.75, 0.0, -0.5, 0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 0.5, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.75, 1.0, 0.25, 0.0, 0.25, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -1.0, 0.25, 0.75, -0.5, 1.0, -1.0, -0.25, -0.25, 0.0, -0.25, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -1.0, -1.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -0.25, -0.5, 0.0, 0.5, -0.25, -0.75, 1.0, 1.0, 1.0, 0.0, 0.25, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.75, -1.0, 1.0, -0.5, -1.0, -0.25, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 1.0, ]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    buffer100.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    texture002.destroy();
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query005.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0040.setStencilReference(1);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    texture003.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query002.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query005.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.setStencilReference(1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group006);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setStencilReference(1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer0013.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group007);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group008);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0019, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.end();
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group009);
    const command_buffer300 = command_encoder300.finish();
    command_encoder001.popDebugGroup()
    compute_pass_encoder0060.end();
    command_encoder006.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const command_buffer006 = command_encoder006.finish();
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    device30.queue.submit([command_buffer300, ]);
}