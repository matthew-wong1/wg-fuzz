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
    const array0 = new Float32Array([-0.75, -1.0, 0.5, 0.0, 0.0, 0.75, -0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, -0.5, 0.0, 0.5, 0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.75, 0.5, -0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, 0.0, -1.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, 0.75, 0.0, 0.0, -0.5, -0.5, -1.0, -0.5, 0.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.0, 1.0, -0.5, -0.25, 0.5, -1.0, 0.25, -0.75, 0.0, -0.5, 0.5, 0.5, -0.75, 1.0, -1.0, 0.5, 0.5, -0.5, 0.5, 0.25, ]);
    
    
    
    const array1 = new Float32Array([0.0, -1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -0.75, -1.0, -0.5, 1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.75, 1.0, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, -1.0, 0.0, -0.25, 0.0, -1.0, -0.25, 0.75, 0.5, -1.0, -0.75, 0.5, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.5, 0.75, -0.75, 0.25, -0.5, -0.75, -0.25, -0.75, 0.5, -0.75, 0.0, -1.0, -0.75, -0.25, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, -1.0, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_buffer000 = command_encoder000.finish();
    
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const array2 = new Float32Array([0.25, 0.0, -1.0, 0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.25, -0.25, -0.75, -0.75, -0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.5, 0.75, -1.0, 1.0, 0.75, 0.5, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.25, -0.5, -1.0, -0.5, -0.25, -1.0, 0.0, -1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.0, -0.75, 1.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, -0.25, 1.0, 1.0, -0.75, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 0.25, 0.5, -0.5, 0.5, 1.0, -1.0, 0.75, -0.75, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 0.25, -0.5, -1.0, 0.0, 0.0, 1.0, 0.5, 0.0, -0.5, 0.75, 0.0, -1.0, 0.25, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer001 = command_encoder001.finish();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.pushErrorScope("internal");
    
    command_encoder002.insertDebugMarker("mymarker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder003.insertDebugMarker("mymarker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_buffer004 = command_encoder004.finish();
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    
    query001.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query001.destroy()
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    buffer000.destroy()
    
    query000.destroy()
    command_encoder006.insertDebugMarker("mymarker");
    query001.destroy()
    
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder006.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer001, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array3 = new Float32Array([-0.25, 1.0, 0.25, -0.5, 0.0, 0.25, 1.0, 0.25, -0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 1.0, -1.0, -1.0, -0.5, -1.0, 0.75, -0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.25, 0.0, -0.25, -0.5, 0.25, 0.5, 0.75, -1.0, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.25, 1.0, -0.5, -0.5, 0.25, -1.0, 0.75, 0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 0.25, -0.25, 0.25, -0.5, 0.0, -0.5, 0.75, -0.5, 0.5, -0.25, -1.0, 0.25, 1.0, 0.5, 0.75, -0.5, 1.0, -0.25, -0.5, -0.5, -0.5, 0.75, -0.25, 0.0, -0.5, -0.75, ]);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const array4 = new Float32Array([0.0, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 1.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.5, -0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.25, 1.0, 0.25, 0.75, -1.0, 1.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, 0.75, -0.5, 0.75, 0.5, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 1.0, 0.25, 0.25, 0.25, -0.75, 0.75, 0.5, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -0.75, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    command_encoder006.insertDebugMarker("mymarker");
    query000.destroy()
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    query001.destroy()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    query001.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    query000.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query003.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    
    
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
    query001.destroy()
    
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.pushErrorScope("internal");
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    buffer001.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder000.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder001.popDebugGroup();
    query002.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const command_buffer008 = command_encoder008.finish();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    query003.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer100.destroy()
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder001.popDebugGroup();
    
    
    device10.pushErrorScope("validation");
    
    render_bundle_encoder002.setPipeline(render_pipeline002);
    
    query003.destroy()
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    buffer002.destroy()
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array5 = new Float32Array([0.0, -1.0, -0.75, 0.25, -0.75, 0.0, 0.0, -1.0, -0.75, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, -1.0, -0.5, 1.0, 1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.75, 0.0, -1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, 1.0, 0.5, -0.75, 0.0, 0.5, 1.0, -0.5, 1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, -0.25, 0.0, -0.5, -1.0, -0.25, 0.5, -0.25, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, -0.5, 0.0, -1.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.75, -0.5, 0.0, 0.5, -1.0, -0.5, -0.5, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    query001.destroy()
    const array6 = new Float32Array([0.5, -0.25, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, -0.5, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, -0.5, 0.5, 0.5, 0.75, -0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, -0.25, 0.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -0.75, -0.25, -0.5, 0.5, -0.25, -1.0, 0.0, 0.0, -1.0, 0.75, 0.25, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, 0.25, -1.0, -0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -0.25, -0.75, 0.0, 0.75, 0.25, -0.75, 0.75, 0.5, 0.25, -1.0, 0.5, 0.5, 0.75, -0.5, 0.0, -0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.5, 1.0, 1.0, 0.0, 0.25, -0.25, 0.75, 1.0, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const array7 = new Float32Array([-0.5, -0.5, 0.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.75, 0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 0.5, 1.0, 0.75, 0.5, -0.5, 0.25, 0.0, -0.75, 0.25, 0.25, -0.5, -1.0, -0.25, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.25, 0.5, 0.75, 0.5, -0.25, 0.75, 0.0, -0.25, -0.75, 0.75, -0.25, -0.75, -0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -0.5, 1.0, -1.0, -0.5, 1.0, -0.25, 0.75, -1.0, -0.25, -0.5, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.5, -0.25, 0.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.25, -1.0, -0.5, 0.75, 0.25, 0.25, -0.75, 0.0, 0.75, 0.75, 0.5, -0.75, 0.5, 1.0, -0.75, ]);
    buffer003.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    query200.destroy()
    query100.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query002.destroy()
    const command_buffer0010 = command_encoder0010.finish();
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder009.pushDebugGroup("mygroupmarker")
    query001.destroy()
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    
    
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder001.popDebugGroup();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.submit([command_buffer007, ]);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer004.destroy()
    query002.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.submit([command_buffer200, ]);
    query004.destroy()
    query002.destroy()
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0060.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder0090.insertDebugMarker("marker")
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const array8 = new Float32Array([-1.0, 0.25, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, -0.5, -0.5, -0.75, 0.0, 0.25, 0.0, 0.25, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, -0.75, 0.5, 0.25, -0.5, 0.5, 0.0, -0.75, -1.0, 0.75, 0.5, 0.5, 0.25, -0.25, -1.0, -1.0, -1.0, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 0.25, -0.75, 0.5, -0.5, 0.75, 0.25, -0.75, -0.25, 0.75, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, 1.0, -0.25, 0.25, 0.75, -0.75, 0.75, 1.0, 0.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.75, -1.0, -0.75, 0.0, -0.5, 0.25, 0.0, 0.0, ]);
    compute_pass_encoder0060.insertDebugMarker("marker")
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0090.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder0090.insertDebugMarker("marker")
    command_encoder0011.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    query005.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_bundle_encoder001.popDebugGroup();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    buffer006.destroy()
    buffer300.destroy()
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder0011.pushDebugGroup("mygroupmarker")
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query100.destroy()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    
    
    query201.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    buffer005.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query102.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    compute_pass_encoder0090.insertDebugMarker("marker")
    query200.destroy()
    
    query004.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    buffer200.destroy()
    
    query004.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder0012.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query001.destroy()
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder0012.insertDebugMarker("mymarker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_bundle_encoder001.insertDebugMarker("marker");
    query004.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query001.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    query101.destroy()
    query004.destroy()
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    query101.destroy()
    compute_pass_encoder0090.insertDebugMarker("marker")
    query002.destroy()
    command_encoder203.pushDebugGroup("mygroupmarker")
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    
    query202.destroy()
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    query301.destroy()
    
    
    
    buffer007.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    compute_pass_encoder0030.insertDebugMarker("marker")
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    query000.destroy()
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder0012.pushDebugGroup("mygroupmarker")
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
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    buffer204.destroy()
    buffer203.destroy()
    
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const command_buffer0013 = command_encoder0013.finish();
}