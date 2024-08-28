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
    
    
    const array0 = new Float32Array([0.5, -1.0, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, 0.0, -1.0, -0.5, 0.25, 0.5, -0.75, 1.0, -0.75, 0.25, -0.25, -0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.25, -0.25, -0.25, -0.5, 1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.0, 0.75, -0.5, -0.25, -0.25, 0.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.75, 1.0, 0.0, -1.0, 0.25, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.75, -1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 0.25, -0.25, 1.0, -0.25, 0.5, -0.75, 0.5, 1.0, -0.5, -0.5, 0.75, -1.0, 0.25, 0.25, 0.75, 0.75, 0.75, 1.0, 0.75, -0.25, -0.75, -0.5, 0.75, 0.0, 0.25, -0.25, -0.5, 1.0, 0.5, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.5, 1.0, 0.25, -0.25, 0.75, 0.75, 1.0, -0.25, -0.25, -0.75, -0.25, 0.25, 0.25, 0.25, -0.5, -0.5, 0.25, 0.25, -0.5, 0.25, 0.75, 0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.75, -1.0, 0.75, 0.5, -1.0, ]);
    
    const array2 = new Float32Array([0.75, -0.25, 0.25, 0.75, 0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.0, 0.25, 1.0, -0.5, 0.5, 0.25, -0.75, -1.0, -1.0, 0.0, -0.5, 0.0, 0.75, 1.0, -1.0, 0.75, -1.0, 0.0, -0.25, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, -1.0, -0.5, -0.75, 1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 0.75, 1.0, -0.25, -1.0, 0.5, -0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, 1.0, -1.0, 0.5, 1.0, -0.25, 0.0, -0.75, 1.0, 0.75, -0.5, 0.75, -1.0, 0.75, -1.0, 0.75, 1.0, -1.0, 0.75, -0.75, 0.75, -0.25, 0.75, 1.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("validation");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([1.0, -0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 0.0, 0.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.5, 0.5, -0.25, -1.0, 0.5, 0.25, -1.0, 0.5, -1.0, -1.0, -1.0, 0.75, 0.0, 0.5, 0.0, 0.25, -0.25, -0.75, 0.25, -1.0, 0.25, 0.0, -0.25, 0.25, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, 0.75, -0.75, 0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, 0.25, 0.0, -1.0, -0.75, 0.0, -0.75, -1.0, 0.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.75, -1.0, -1.0, -0.25, -0.75, 0.5, 0.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, 1.0, -0.5, 0.75, ]);
    buffer100.destroy()
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder102.insertDebugMarker("mymarker");
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    command_encoder101.popDebugGroup()
    query100.destroy()
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([-0.5, -0.75, -0.25, -0.25, 0.25, -0.25, 0.0, 0.5, -0.25, -0.25, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, -0.5, -0.75, -1.0, 0.25, -0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, 0.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -0.75, -0.25, -0.5, -0.25, 0.0, -0.75, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 1.0, -0.5, -0.5, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, -0.5, -0.5, -0.75, -0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.5, 1.0, 0.0, 1.0, 1.0, 0.25, -0.5, 0.5, 0.25, 0.25, -0.25, -0.25, 1.0, 0.75, -1.0, ]);
    
    command_encoder102.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer102 = command_encoder102.finish();
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    command_encoder101.insertDebugMarker("mymarker");
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    query103.destroy()
    query102.destroy()
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
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    compute_pass_encoder1000.popDebugGroup()
    query103.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder101.popDebugGroup()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    const array5 = new Float32Array([-0.5, 0.25, -0.25, -0.5, -1.0, 0.0, -0.5, 0.5, 0.25, 0.25, 0.5, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, 0.75, -0.5, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.75, 0.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, 0.25, -0.5, 0.5, -0.5, -0.25, -0.25, 0.0, 0.5, -0.25, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, -0.5, 0.25, 1.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.5, -0.25, 0.75, -0.75, 0.5, 0.0, -0.75, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.75, -0.25, -0.5, 0.0, -0.5, -0.75, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, -0.75, ]);
    
    
    
    command_encoder101.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const array6 = new Float32Array([0.25, 0.25, -0.25, -0.25, 0.25, 1.0, -1.0, -0.75, 0.0, 0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 0.25, -1.0, -0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, 1.0, -0.75, -1.0, 0.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, -0.25, -1.0, 0.5, 0.75, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, -0.25, 0.75, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.5, 0.75, 0.0, -0.5, -1.0, 1.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, 0.0, -0.75, 1.0, 0.0, 1.0, 0.5, -0.5, -0.25, 0.25, -1.0, -1.0, -0.5, 0.0, 0.0, -0.25, -0.5, -1.0, -1.0, -1.0, -0.25, -1.0, ]);
    const command_buffer101 = command_encoder101.finish();
    query101.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.25, 0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, 0.75, -0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, 0.25, 1.0, -0.5, -0.75, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, 0.5, 0.75, 1.0, -1.0, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, 0.0, 0.5, -0.75, 0.75, -0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 1.0, -0.25, 0.0, 1.0, 0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -0.75, 0.75, -0.25, -0.75, 1.0, -0.5, 0.25, 0.5, 1.0, -0.25, 0.5, -0.75, 0.0, 0.25, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.25, -0.25, 0.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 0.75, 0.0, ]);
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
    render_bundle_encoder101.setPipeline(render_pipeline103);
    buffer101.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    device10.pushErrorScope("validation");
    buffer102.destroy()
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    compute_pass_encoder1000.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    
    
    
    buffer002.destroy()
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    buffer001.destroy()
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder001.popDebugGroup();
    command_encoder104.popDebugGroup()
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    query102.destroy()
    
    device00.pushErrorScope("validation");
    texture000.destroy();
    buffer103.destroy()
    query102.destroy()
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query101.destroy()
    query104.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    query001.destroy()
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.popDebugGroup()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    texture100.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    
    buffer105.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer107.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    query000.destroy()
    buffer104.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder001.popDebugGroup();
    const array8 = new Float32Array([-0.25, -0.25, -1.0, 0.5, 0.0, 0.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.0, -1.0, 0.0, 1.0, -0.25, -0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -0.5, 0.5, -0.25, -1.0, -0.5, -0.25, -0.5, 0.75, -0.75, 0.75, -0.5, 1.0, 0.0, 0.0, 0.5, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 0.0, -1.0, 0.5, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.0, -1.0, 1.0, 0.75, 0.0, 1.0, -1.0, -1.0, -0.5, 0.5, -0.25, 0.5, 0.25, -0.5, 0.25, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    query100.destroy()
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    command_encoder000.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    query102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
        layout: render_pipeline103.getBindGroupLayout(0),
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
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query103.destroy()
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer109.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query001.destroy()
    compute_pass_encoder1030.popDebugGroup()
    const array9 = new Float32Array([-0.25, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.75, -0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 0.0, 0.25, -0.25, -0.5, -0.5, 0.25, 0.25, -0.75, 0.25, -0.75, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, 0.5, -0.75, -0.5, -0.5, 0.75, -0.75, 0.5, -0.5, -0.5, 0.75, -0.25, -0.5, -0.5, -1.0, 0.25, 0.0, -0.5, -0.25, 1.0, 0.75, 0.75, -0.5, -1.0, 1.0, 0.75, -1.0, -0.5, -0.75, 1.0, 0.75, -0.5, -1.0, -1.0, -0.25, 0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -0.75, 1.0, -0.5, 0.25, 1.0, 0.75, ]);
    buffer106.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer101, command_buffer102, ]);
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    const array10 = new Float32Array([0.25, 0.25, 0.5, -0.25, -0.25, -0.25, -0.75, 0.75, 0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, -0.25, 0.5, -0.5, 0.5, 1.0, 0.25, 0.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.0, 0.0, 0.5, -0.5, -1.0, 0.25, 0.25, 0.0, -0.75, 0.5, 0.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.25, -1.0, 0.75, -0.75, 0.0, 0.0, 1.0, 1.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 1.0, 1.0, -0.25, 1.0, 0.25, 0.75, 0.5, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -0.25, 0.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_buffer001 = command_encoder001.finish();
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder000.insertDebugMarker("mymarker");
    query202.destroy()
    texture200.destroy();
    
    query103.destroy()
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const array11 = new Float32Array([-0.25, 0.25, -0.75, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, -1.0, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.25, 0.75, 1.0, 0.0, 0.75, 0.5, -0.75, 1.0, 0.25, 0.25, -0.5, 1.0, 0.5, 0.0, 0.5, -1.0, -0.75, 0.5, 0.5, 0.0, -0.25, 0.5, 0.5, 0.75, 0.0, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.5, 0.0, -1.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -0.5, -1.0, -0.75, 1.0, 0.75, 0.0, 0.0, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, -0.25, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, 0.5, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    query104.destroy()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query202.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder002.setPipeline(render_pipeline002);
    query202.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    query202.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer202.destroy()
    
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    query100.destroy()
    
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    query102.destroy()
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    command_encoder105.popDebugGroup()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer108.destroy()
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder001.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    command_encoder202.popDebugGroup()
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device30.destroy();
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    query202.destroy()
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    query202.destroy()
    compute_pass_encoder1050.popDebugGroup()
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    query201.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
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
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1030.popDebugGroup()
    
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
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
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group102);
    command_encoder000.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1013, 0);
    compute_pass_encoder1040.popDebugGroup()
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    compute_pass_encoder1040.end();
    device20.queue.submit([command_buffer202, ]);
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    compute_pass_encoder1050.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
    const command_buffer003 = command_encoder003.finish();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1020, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1021, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder1050.end();
    const command_buffer105 = command_encoder105.finish();
    command_encoder104.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1000.end();
    command_encoder100.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device00.queue.submit([command_buffer000, ]);
}