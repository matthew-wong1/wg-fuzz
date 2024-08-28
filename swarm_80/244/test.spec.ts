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
    const array0 = new Float32Array([0.75, 0.25, -1.0, 1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.5, 0.75, 0.5, 0.75, 0.0, 0.5, -1.0, -0.5, 0.5, -0.5, 0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.25, -1.0, -0.75, 0.5, 0.75, 0.0, 0.5, 0.25, 0.25, -0.5, 0.5, 0.0, -0.75, 0.5, -0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.25, 0.0, 0.25, -0.75, 0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.5, -1.0, 0.0, -0.5, 1.0, -0.25, 0.5, 0.75, 0.5, -0.75, 0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 0.75, 0.75, 1.0, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    texture001.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
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
    
    texture000.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const array1 = new Float32Array([1.0, 1.0, 1.0, 1.0, 0.5, -0.25, 1.0, 0.25, -0.5, 0.25, -0.25, 0.5, 0.25, 0.25, -1.0, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, 0.0, 0.25, -1.0, 0.0, 0.5, 0.25, 0.0, 0.5, -0.5, 0.25, 0.5, 0.25, -0.25, 0.25, -0.25, 0.25, -1.0, -0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 0.5, 0.0, -0.5, -0.5, -1.0, -0.75, -0.5, -1.0, 0.0, -0.5, 0.0, -0.25, -0.5, 1.0, 0.0, 0.75, -1.0, 0.0, 0.75, 1.0, 0.5, 1.0, 0.5, 0.5, 0.5, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder003.insertDebugMarker("mymarker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    command_encoder003.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture003.destroy();
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0000.popDebugGroup()
    
    command_encoder005.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.0, -0.75, 1.0, 0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 1.0, 0.0, 0.25, -0.5, -0.5, -1.0, 0.5, 0.75, 0.75, 0.25, 0.75, -1.0, -0.25, 0.0, 0.5, -0.25, 0.25, -0.5, 1.0, 0.25, -0.5, 1.0, -0.25, -1.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.75, -0.75, -0.25, 0.75, 0.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -0.25, 0.5, -0.25, -0.25, -1.0, 0.25, -1.0, -1.0, 0.25, -0.25, -0.75, 0.25, 0.75, 0.25, -1.0, -1.0, -0.25, -0.25, -0.5, 0.75, 1.0, -1.0, 1.0, -0.25, 0.5, 0.5, -0.75, 1.0, -0.5, 0.25, -0.75, 0.25, -0.5, 0.5, -0.25, 0.5, -0.25, -0.75, -0.75, -1.0, -0.25, -1.0, ]);
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.insertDebugMarker("mymarker");
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    command_encoder005.insertDebugMarker("mymarker");
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0050.setPipeline(render_pipeline004);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0050.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder002.popDebugGroup();
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group000);
    compute_pass_encoder0020.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_pass_encoder0050.setStencilReference(1);
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer000.destroy()
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    const array3 = new Float32Array([0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 0.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.5, 1.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.75, 0.0, 0.75, 0.75, 1.0, -0.25, 0.0, -0.5, -0.25, 1.0, -1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.0, 0.5, 0.75, -0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.5, -0.25, -1.0, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.5, -0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.0, -1.0, 1.0, -0.5, 0.5, -1.0, 0.75, -1.0, 1.0, 0.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.5, 1.0, -0.25, ]);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    texture100.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device10.destroy();
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture002.destroy();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([1.0, -1.0, 1.0, -0.75, 1.0, -0.75, -1.0, 1.0, -0.5, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -1.0, -0.5, 0.25, -0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, 0.75, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, 1.0, 0.5, 0.0, -0.75, -1.0, 0.5, 0.25, 0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, 0.25, -0.5, 0.0, -0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, -0.5, -0.75, 0.75, -1.0, 1.0, -0.5, -0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.0, -0.75, -1.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.0, -0.75, ]);
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    command_encoder202.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    
    texture200.destroy();
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.setStencilReference(1);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("internal");
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_pass_encoder0050.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    command_encoder202.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query000
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder201.insertDebugMarker("mymarker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_pass_encoder0060.setPipeline(render_pipeline005);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0060.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_pass_encoder0050.beginOcclusionQuery(0)
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.0, 0.75, 0.25, -0.75, -0.25, 1.0, 1.0, -1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, -0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 0.5, -0.5, -0.25, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.0, -0.25, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 0.75, 0.0, -0.25, -0.5, -1.0, 1.0, 0.5, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.75, 0.25, 0.5, -0.25, -0.75, -0.75, 0.25, 1.0, -0.75, 0.25, 0.0, -0.75, 0.5, -0.5, -1.0, 0.25, 1.0, 0.75, -0.25, -0.25, 0.75, 0.75, 0.75, -1.0, -0.25, -0.5, -0.5, ]);
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0050.endOcclusionQuery()
    const array6 = new Float32Array([-1.0, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, -0.25, -0.75, -0.5, -1.0, -0.25, -1.0, -0.75, 0.5, -1.0, -1.0, 0.75, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, 0.0, -1.0, -0.75, 1.0, -0.5, 0.25, 0.0, 0.0, -0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.5, 1.0, 0.0, -1.0, 0.5, -0.75, 0.75, 0.25, 0.0, -0.75, 0.75, -0.75, -0.5, 0.0, 0.75, -1.0, 0.5, 0.75, -0.75, 0.75, -0.5, -0.75, -0.5, -0.25, 0.75, -0.5, 0.75, -0.75, -0.5, 0.5, 0.75, 1.0, 1.0, 0.5, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, 1.0, 1.0, 0.75, 0.75, -0.75, -0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, -0.25, -0.25, -0.5, 0.25, 1.0, ]);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.insertDebugMarker("marker");
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group001);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.beginOcclusionQuery(0)
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0060.beginOcclusionQuery(1)
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0060.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder0050.setStencilReference(1);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.endOcclusionQuery()
    texture004.destroy();
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer001.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2020.beginOcclusionQuery(1)
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder000.popDebugGroup();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    render_pass_encoder0070.setPipeline(render_pipeline008);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0070.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder002.popDebugGroup();
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array7 = new Float32Array([0.0, -0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.0, 0.5, -0.5, 0.25, 0.25, 0.75, -0.5, -0.75, 0.0, -0.75, -0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, 0.5, 0.0, -0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 1.0, -0.25, -0.25, -1.0, -0.75, -0.75, -1.0, -1.0, 0.0, 1.0, -0.25, 0.25, 0.0, 0.5, 0.75, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, 1.0, 1.0, 1.0, 0.75, -0.75, -1.0, -0.75, 0.5, 1.0, -0.5, 0.0, -0.5, -0.25, 0.75, 0.0, -0.5, 0.0, -0.75, 0.0, -0.25, -0.5, 0.75, 1.0, 0.0, 0.5, 1.0, -0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, ]);
    render_pass_encoder2020.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    buffer003.destroy()
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0060.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    
    render_pass_encoder2010.executeBundles([])
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0040.pushDebugGroup("group_marker")
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group002);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device40.pushErrorScope("internal");
    
    
    
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0070.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder2000.executeBundles([])
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.popDebugGroup();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer004.destroy()
    render_pass_encoder2010.executeBundles([])
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder2000.insertDebugMarker("marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2030.executeBundles([])
    texture202.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const array8 = new Float32Array([0.75, 1.0, 1.0, 0.75, 0.25, 1.0, -0.5, 0.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.0, -0.75, 0.75, -0.5, -0.75, -0.75, 0.25, -1.0, 0.75, -0.75, -1.0, 1.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -1.0, -0.25, -0.25, -0.5, -0.5, -0.75, -0.25, -0.25, -0.25, 0.75, 0.75, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -0.25, -1.0, 0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 0.25, 0.5, 0.75, -0.25, 0.5, 0.0, -1.0, 0.25, -0.75, 0.0, 0.25, 0.5, 1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.5, 0.25, -1.0, 0.0, 0.75, 0.5, 0.75, -0.75, 0.25, 0.25, 0.75, 1.0, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, 0.25, 1.0, 0.5, -0.25, 0.5, ]);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder0060.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer002.destroy()
    device30.pushErrorScope("validation");
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    render_pass_encoder2030.executeBundles([])
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.popDebugGroup();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2000.setStencilReference(1);
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
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
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.beginOcclusionQuery(2)
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder2010.executeBundles([])
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2000.beginOcclusionQuery(2)
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group200);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.setPipeline(render_pipeline200);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2000.endOcclusionQuery()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder0050.endOcclusionQuery()
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    render_pass_encoder0070.popDebugGroup();
}