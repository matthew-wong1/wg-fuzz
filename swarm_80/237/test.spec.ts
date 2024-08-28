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
    
    const array0 = new Float32Array([0.25, 0.5, 0.25, 0.75, -1.0, 0.0, -0.75, 0.75, 0.25, -0.25, 0.75, -0.75, -0.25, 0.75, 0.5, 1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, -1.0, 1.0, 0.75, 0.0, -0.75, -0.5, -0.25, -0.75, 0.75, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -0.75, 0.5, 0.0, 0.0, 1.0, -0.5, 0.25, -1.0, -1.0, 1.0, 1.0, -0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 0.5, 0.0, -0.5, -0.75, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, -0.5, -0.5, 0.75, 0.0, 1.0, -1.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, -0.75, 0.25, -0.25, -0.25, 0.0, -1.0, -0.25, 0.5, ]);
    
    const array1 = new Float32Array([0.75, 0.75, 0.5, 0.25, -0.5, 1.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 1.0, 0.0, 0.75, 0.25, 1.0, -1.0, 1.0, -1.0, 0.25, -0.5, -0.75, -0.25, 0.5, -0.25, 0.5, 0.75, 0.75, 0.75, 1.0, -0.25, 0.25, 0.75, -0.5, 0.0, 1.0, 0.75, -0.25, 0.0, -0.75, -0.25, 0.5, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 0.25, 0.0, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, -0.75, -0.5, 0.75, -0.5, 0.0, 0.5, 1.0, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, -1.0, 0.0, 1.0, 0.0, 0.75, 0.0, 0.0, 0.0, -0.75, -0.75, 0.75, 0.75, 0.25, 0.25, 0.0, -0.25, 1.0, 0.0, 0.0, ]);
    
    const array2 = new Float32Array([1.0, 0.5, -0.25, -0.75, -1.0, -1.0, 0.0, -0.5, -0.5, 0.75, 0.75, 0.75, -0.25, 0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 1.0, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, 0.25, 0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.75, 1.0, 0.5, 0.75, 0.0, 0.0, -1.0, -1.0, 0.5, 1.0, 0.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.75, -0.5, 1.0, 0.75, 0.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.25, -0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -0.5, -0.75, -0.75, 0.5, 0.25, -1.0, 0.0, 0.75, 0.75, -1.0, 0.25, -0.25, -0.75, 0.5, -0.25, ]);
    
    
    const array3 = new Float32Array([-1.0, 0.0, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 0.0, -0.5, 0.25, 1.0, -0.5, -1.0, 0.75, 1.0, -1.0, -1.0, 0.25, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.0, -0.75, -1.0, 0.75, 1.0, -0.25, 0.25, 0.0, -0.75, -0.5, 0.25, 0.0, -0.5, -0.75, -0.25, -0.25, 0.75, 0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -0.5, 0.75, 0.75, 0.75, 0.25, 0.5, -0.25, -1.0, 0.0, -0.25, -0.5, -1.0, -0.25, -1.0, 0.5, -0.5, -0.25, -1.0, -0.25, -1.0, 0.25, 1.0, 0.5, -0.75, 1.0, -1.0, -0.5, ]);
    const array4 = new Float32Array([1.0, -0.5, 0.0, -0.25, 0.25, 1.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.25, 0.25, 0.5, -0.25, 0.0, -0.75, -1.0, 1.0, 1.0, 0.0, -1.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 1.0, -1.0, 0.75, -0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.25, -0.25, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.0, -0.75, -0.5, -0.75, -0.5, 0.5, -0.75, 0.25, 0.5, 0.25, 0.75, 0.25, -1.0, 0.75, -1.0, -0.75, -1.0, -0.5, -1.0, -0.75, -1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -1.0, 1.0, -1.0, -0.75, -0.5, 0.25, 0.75, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.5, -0.5, 0.0, -1.0, 0.75, -0.25, -1.0, -0.5, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, -1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 0.0, -0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 1.0, -0.5, 0.5, 0.75, 0.75, 0.0, 0.5, -1.0, 0.75, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, 0.75, 1.0, -0.25, -0.75, 0.5, 0.5, -1.0, -0.5, 0.0, 0.75, 1.0, -0.5, 0.5, -0.75, 0.25, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.25, 0.25, -0.75, -0.75, -1.0, 0.0, -0.5, 1.0, 0.75, -0.75, 0.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    query000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer000.destroy()
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    command_encoder001.clearBuffer(buffer001);
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder001.clearBuffer(buffer001);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-1.0, 0.5, 1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 1.0, 0.25, -0.5, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.5, 0.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.25, -0.5, -0.5, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, 0.5, 0.5, -0.25, -0.5, 0.25, 0.25, 1.0, 0.0, -0.25, 1.0, 0.25, -0.5, 0.5, -0.75, 0.5, -0.75, 1.0, -1.0, -0.5, -0.25, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, 1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.75, 0.5, 0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.0, 0.0, -0.5, 0.0, 0.75, 1.0, -1.0, -1.0, -0.5, 0.25, -0.75, -0.5, 1.0, -1.0, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, -0.5, -0.75, -0.5, -0.25, -1.0, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder000.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const array7 = new Float32Array([-1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -0.75, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, -0.75, 0.75, 1.0, -0.5, -0.25, -0.5, 0.5, 1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -0.75, -0.5, 0.25, 0.25, -0.25, -1.0, -1.0, 0.5, 0.25, -0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -0.25, -0.25, -0.25, -0.25, -0.75, -0.75, 0.5, 1.0, -1.0, -0.5, 0.25, 0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.75, 0.75, -1.0, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.75, 0.5, 0.0, -0.25, -0.25, 1.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.5, -0.25, 0.75, -0.5, 0.0, -0.5, ]);
    const array8 = new Float32Array([0.5, 0.25, -1.0, -0.5, 1.0, -1.0, 0.75, -0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, 0.5, 0.0, 1.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.75, 1.0, -1.0, 0.75, -1.0, 0.25, 1.0, -0.75, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, 1.0, 0.75, -0.25, 0.25, -0.75, 0.75, 0.0, 0.5, 0.5, -0.75, 0.75, 0.25, 0.75, 0.75, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.0, 0.75, 0.25, 1.0, -0.5, -0.25, 0.5, -0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -1.0, 0.25, 0.5, 0.75, -0.75, 1.0, 1.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.5, -1.0, 0.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.75, -0.25, 0.5, -0.75, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device30.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder003.pushDebugGroup("mygroupmarker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder002.pushDebugGroup("mygroupmarker")
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    command_encoder001.popDebugGroup()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    command_encoder002.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    
    command_encoder002.popDebugGroup()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder003.clearBuffer(buffer004);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer004);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    buffer004.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder004.insertDebugMarker("mymarker");
    const array9 = new Float32Array([-0.5, -1.0, 1.0, 0.25, 0.0, 0.75, 0.75, 0.0, -0.25, -0.5, 0.0, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -1.0, 0.0, 1.0, 0.5, 0.5, 0.75, 0.0, 0.0, 0.5, 0.5, -0.75, 0.25, -0.25, 0.5, -0.5, -0.25, -0.25, 0.5, 0.75, 0.25, -0.75, -0.75, 0.75, 0.25, -1.0, 0.5, -0.75, 0.0, 0.75, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, -0.5, 0.25, -0.5, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, -0.75, -0.75, 0.5, -1.0, -0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 0.0, 0.0, -0.5, -0.75, -0.25, 0.75, -0.5, 0.25, -0.75, 0.5, -1.0, 0.75, -0.75, 0.5, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    query200.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array10 = new Float32Array([1.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, -1.0, 0.75, -0.25, -0.25, 0.25, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.5, 0.0, 0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, -0.25, -0.5, 0.25, -0.75, 1.0, 0.75, -0.75, 0.0, -0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.25, -1.0, -0.25, -0.25, 0.0, 1.0, -0.25, 0.5, -0.5, 1.0, 0.25, -0.5, 0.0, -0.5, -1.0, 0.0, -1.0, -0.25, -0.75, -0.75, 0.25, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, -1.0, 0.25, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, -1.0, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.popDebugGroup()
    buffer005.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder001.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder001.insertDebugMarker("mymarker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder004.insertDebugMarker("mymarker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.pushErrorScope("internal");
    query002.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder005.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    command_encoder003.popDebugGroup()
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    command_encoder401.insertDebugMarker("mymarker");
    
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
    buffer002.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device10.destroy();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    query001.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder401.insertDebugMarker("mymarker");
    
    buffer006.destroy()
    device20.pushErrorScope("internal");
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    query201.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query202.destroy()
    query200.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder002.popDebugGroup()
    
    
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline002);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    command_encoder401.insertDebugMarker("mymarker");
    
    
    command_encoder005.insertDebugMarker("mymarker");
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    buffer200.destroy()
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    query200.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query201.destroy()
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    device40.pushErrorScope("out-of-memory");
    command_encoder402.popDebugGroup()
    command_encoder003.insertDebugMarker("mymarker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([-1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.5, -0.75, -0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.75, -0.25, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.25, -1.0, 0.25, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, -1.0, -0.75, 1.0, -0.75, -0.75, -0.5, 0.5, -0.75, -0.25, -0.75, -0.75, 1.0, 0.5, 1.0, -0.25, 0.0, -1.0, 1.0, -0.25, 0.75, 0.0, 0.25, -0.25, 0.0, 0.75, 0.75, 0.75, 0.75, -0.5, -0.75, 0.25, 0.75, 0.75, 0.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.5, 0.25, 0.25, -0.25, 1.0, -0.75, -0.75, -0.75, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, ]);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("validation");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    command_encoder006.pushDebugGroup("mygroupmarker")
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
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    query201.destroy()
    command_encoder006.popDebugGroup()
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.insertDebugMarker("mymarker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    command_encoder005.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.popDebugGroup();
    command_encoder005.popDebugGroup()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query401.destroy()
    render_bundle_encoder002.popDebugGroup();
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder001.popDebugGroup();
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    
    
    
    command_encoder005.insertDebugMarker("mymarker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder003.insertDebugMarker("mymarker");
    
    
    const array12 = new Float32Array([0.25, 1.0, 1.0, 0.25, -0.5, 0.5, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, -0.5, -0.5, 0.0, -0.75, 0.75, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, 1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.75, 0.75, -0.25, 0.5, 0.5, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, -0.25, -0.75, 0.5, 0.0, 1.0, -0.5, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, 0.25, 0.0, 0.75, -0.25, -0.5, -0.75, -0.5, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.5, -0.25, 0.5, -1.0, 0.5, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, -0.25, -0.75, -0.75, -0.75, -0.25, 1.0, 0.25, 1.0, 0.25, 0.75, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder000.popDebugGroup()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    
    const array13 = new Float32Array([-0.5, -0.25, -1.0, -0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.5, 0.25, 0.25, 1.0, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, 0.5, 0.5, -0.75, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, -0.5, 0.5, -0.5, -0.25, 0.5, -0.5, 0.25, -0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, -0.25, 1.0, -1.0, -0.25, -0.5, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, 1.0, 0.75, -0.75, 0.25, -1.0, 1.0, -0.5, 0.5, 0.75, ]);
    command_encoder401.popDebugGroup()
    command_encoder007.insertDebugMarker("mymarker");
    
    
    
    
    query003.destroy()
    
    
    command_encoder401.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder200.popDebugGroup()
    command_encoder003.insertDebugMarker("mymarker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder007.pushDebugGroup("mygroupmarker")
    
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    query004.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    query200.destroy()
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    query001.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
    
    
    
    query200.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    
    query202.destroy()
    query400.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    query001.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query401.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    query000.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
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
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    device40.pushErrorScope("out-of-memory");
    
    render_bundle_encoder202.popDebugGroup();
    
    
    
    command_encoder002.popDebugGroup()
    
    
    render_bundle_encoder402.insertDebugMarker("marker");
    query403.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer400.destroy()
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder400.popDebugGroup()
    command_encoder007.popDebugGroup()
    command_encoder001.popDebugGroup()
    command_encoder201.popDebugGroup()
    command_encoder004.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}