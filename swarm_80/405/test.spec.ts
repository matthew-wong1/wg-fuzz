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
    
    
    
    
    const array0 = new Float32Array([0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 0.0, 0.5, -0.75, 0.0, -1.0, 0.0, 1.0, 1.0, -0.5, 0.75, -0.75, -0.75, 0.0, 0.75, -0.25, -0.5, 0.0, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, 0.0, 0.75, 0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, -1.0, -0.5, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, 1.0, -0.75, 0.0, 0.25, 0.25, 0.25, 0.25, -0.75, 0.75, 1.0, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 0.0, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.25, 0.25, 0.75, 0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    device10.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array1 = new Float32Array([1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, 0.75, -0.25, 0.75, 0.25, -0.25, 0.75, -0.5, 1.0, 0.75, -0.5, 0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 0.5, 1.0, -0.25, 0.75, 1.0, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, 0.5, -0.5, -0.75, -0.25, 1.0, 0.5, -1.0, 0.25, -1.0, -0.75, -0.75, 1.0, 0.0, -0.25, 0.25, -0.25, 0.5, -0.5, -1.0, -0.25, -0.25, -1.0, 1.0, 0.25, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -0.5, 0.5, -0.25, 0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 1.0, 0.25, 1.0, 0.25, 0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 0.75, 1.0, -0.5, -0.5, -0.75, 0.75, ]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    command_encoder000.clearBuffer(buffer001);
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.clearBuffer(buffer001);
    
    const array2 = new Float32Array([-0.25, 1.0, 0.5, 0.25, -0.5, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.25, -0.25, 0.25, 0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.0, -0.75, 1.0, -1.0, 0.75, 0.75, -1.0, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, -1.0, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 1.0, -0.5, 0.75, 0.25, 0.25, -1.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, -0.25, 0.25, 0.5, -0.75, -0.25, -0.5, 0.25, -0.25, -1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 1.0, 0.75, 0.25, -0.25, 0.0, -0.5, 1.0, -0.25, -1.0, 0.75, 0.5, -0.75, 0.0, -1.0, 0.75, 0.5, -0.25, ]);
    
    command_encoder001.clearBuffer(buffer001);
    const array3 = new Float32Array([0.75, 0.5, -1.0, -0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 0.0, -1.0, 0.0, -1.0, -0.25, 0.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.75, 0.25, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, 0.75, 0.75, 0.75, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, 1.0, -1.0, 0.75, 0.25, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, -0.5, -0.5, 0.75, 1.0, -0.75, 0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.5, -0.25, 0.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.25, -0.5, 1.0, -0.25, -0.25, -0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.25, 0.0, ]);
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.insertDebugMarker("mymarker");
    const array4 = new Float32Array([-0.75, -1.0, 0.0, -0.5, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, 1.0, 1.0, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.5, 0.0, 0.5, -0.5, -1.0, 0.75, -0.25, -1.0, 0.5, -1.0, -0.75, 0.75, 0.0, -1.0, 0.0, 1.0, 0.5, -0.75, 1.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, -1.0, 1.0, 1.0, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, 0.75, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, -0.75, 0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.5, ]);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    
    buffer001.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, 0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -0.75, -0.25, -0.5, 0.25, -1.0, -0.25, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, 0.5, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -1.0, 0.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.75, 0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 1.0, 0.0, -0.5, -0.5, 0.5, -0.75, -1.0, -0.75, -0.75, -0.25, 0.5, 0.75, 0.5, -0.5, 0.25, 0.75, -0.25, -0.25, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, 1.0, -0.5, -0.75, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, 0.25, 0.0, ]);
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
    buffer002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder400.insertDebugMarker("mymarker");
    
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    buffer003.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder0000.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    device30.destroy();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder000.popDebugGroup();
    
    command_encoder400.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const array6 = new Float32Array([-0.5, 0.5, 0.0, 0.5, -0.75, -1.0, -0.5, 1.0, 0.0, 1.0, 0.5, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, -0.25, 0.25, -0.25, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, 0.75, 0.75, -0.75, -0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, -0.25, 1.0, 0.75, 0.25, 0.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.75, -0.25, -0.75, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -0.25, -0.5, 0.25, -0.5, -0.25, 1.0, -0.25, 0.0, 0.25, 0.25, 1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, -0.75, 0.5, 1.0, 0.75, 1.0, ]);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    buffer201.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    buffer200.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_bundle_encoder200.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder500.insertDebugMarker("mymarker");
    
    command_encoder600.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
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
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    const array7 = new Float32Array([-1.0, 0.25, -0.5, -0.75, -0.25, -0.75, 0.75, 1.0, 1.0, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 0.75, 0.0, -1.0, 0.5, 0.5, -0.75, 0.75, 0.75, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.0, 1.0, 0.5, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, 0.25, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.5, 0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 0.25, 0.75, -0.75, -1.0, 1.0, -1.0, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, -0.5, -0.25, -0.75, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, -0.25, -0.25, -0.5, 0.75, 0.75, -0.5, 0.25, 0.0, ]);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0040.popDebugGroup()
    
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder200.insertDebugMarker("mymarker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder502.insertDebugMarker("mymarker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    buffer400.destroy()
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
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder503.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array8 = new Float32Array([-1.0, 0.75, 0.5, -0.5, 0.75, -0.5, -0.25, -0.75, 0.25, 1.0, -0.25, -0.5, -1.0, -1.0, 0.25, 0.25, -1.0, 0.75, 0.25, 0.75, 0.75, 0.75, -0.75, -0.75, 0.75, -0.75, -0.5, -0.25, 0.75, -0.5, 0.5, -0.5, -0.5, 0.75, -1.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.25, 0.5, -0.5, 0.0, -0.5, -0.5, 0.5, 0.5, -1.0, 0.0, 0.5, 0.25, -0.5, -0.25, -0.5, 1.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.25, 0.25, 1.0, 0.25, 0.5, -0.25, 0.75, 0.75, -0.25, 1.0, 0.75, -1.0, 0.25, -0.25, 1.0, -0.5, 0.0, -0.5, -1.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.0, -0.25, 0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, -0.75, ]);
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    command_encoder500.popDebugGroup()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder502.pushDebugGroup("mygroupmarker")
    buffer600.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
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
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder604.pushDebugGroup("mygroupmarker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder605.insertDebugMarker("mymarker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4020.insertDebugMarker("marker")
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6020.insertDebugMarker("marker")
    command_encoder501.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder605.pushDebugGroup("mygroupmarker")
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder603.insertDebugMarker("mymarker");
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    
    buffer401.destroy()
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder603.insertDebugMarker("mymarker");
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder4020.popDebugGroup()
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    compute_pass_encoder5020.popDebugGroup()
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer004.destroy()
    
    
    command_encoder604.popDebugGroup()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder603.pushDebugGroup("mygroupmarker")
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_bundle_encoder601.popDebugGroup();
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const array9 = new Float32Array([-0.5, 0.5, 0.5, 0.5, -0.25, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, 1.0, 0.0, 0.0, 0.75, -0.5, -0.25, 1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 0.0, -0.75, 0.5, -0.5, 0.0, 1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, -0.25, -0.75, -0.75, -1.0, -0.25, 0.25, -1.0, 0.25, -0.5, 1.0, 0.25, 0.0, 0.0, -0.5, 0.75, -1.0, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 0.5, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 0.75, -0.25, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, ]);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0030.popDebugGroup()
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    command_encoder604.pushDebugGroup("mygroupmarker")
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_bundle_encoder200.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
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
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device70.destroy();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder6020.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder601.insertDebugMarker("marker");
    const array10 = new Float32Array([1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.25, -1.0, -1.0, -1.0, -1.0, -0.25, 0.25, -0.75, -0.25, 0.25, -0.25, -0.25, 0.5, -0.5, -0.5, 0.25, -0.5, 0.0, 0.5, 0.25, 0.25, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, -0.5, -0.5, 0.0, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, -0.25, -0.5, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, -0.75, -1.0, 0.75, -0.75, 0.0, -0.5, -1.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, 1.0, 0.25, 0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, 0.5, -0.25, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -0.25, -0.5, -1.0, 0.25, 1.0, 0.5, ]);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    command_encoder604.popDebugGroup()
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    command_encoder603.popDebugGroup()
    
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    command_encoder500.pushDebugGroup("mygroupmarker")
    compute_pass_encoder5030.insertDebugMarker("marker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    command_encoder505.insertDebugMarker("mymarker");
    command_encoder403.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder6030.insertDebugMarker("marker")
    command_encoder403.insertDebugMarker("mymarker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    compute_pass_encoder4020.popDebugGroup()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder203.insertDebugMarker("mymarker");
    compute_pass_encoder6040.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder0030.popDebugGroup()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    command_encoder403.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder6050.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder500.popDebugGroup();
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    const array11 = new Float32Array([-1.0, -0.25, 0.5, 1.0, -0.25, 0.25, -0.25, 0.0, 0.5, -1.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.75, 0.5, -1.0, 0.25, -0.25, -0.75, 0.75, 0.0, 0.5, -1.0, -0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.5, 0.5, 0.5, 0.0, -0.5, 0.75, 0.0, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 0.25, -1.0, -0.75, 0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, 0.75, 0.25, -1.0, -0.75, -1.0, -0.5, -0.5, 0.25, 0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.0, 0.75, 0.0, 1.0, 0.0, 0.0, 0.25, -0.75, 0.5, 0.25, 0.5, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 0.5, 0.0, ]);
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
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
    
    compute_pass_encoder6050.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    command_encoder403.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    command_encoder201.popDebugGroup()
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    command_encoder500.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
}