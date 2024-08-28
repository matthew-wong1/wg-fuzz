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
    const array0 = new Float32Array([0.5, -0.25, 0.0, -0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 0.5, -0.75, -0.25, 0.5, -0.5, -1.0, -0.5, 0.75, -1.0, 0.5, -0.5, -0.5, -0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 1.0, 0.0, 0.25, -0.5, 1.0, 1.0, -1.0, -0.75, 0.0, -0.75, -0.5, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, -0.75, 0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.75, 0.75, 0.5, -0.75, 0.75, -0.75, 0.25, 0.25, 0.5, 0.0, -0.75, 0.75, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, -0.5, 0.0, 1.0, 0.25, 1.0, -1.0, -1.0, -1.0, 0.75, 0.25, 1.0, -0.75, 1.0, 0.5, -0.5, -0.5, -1.0, -0.25, -1.0, ]);
    
    
    
    const array1 = new Float32Array([1.0, 0.75, 0.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.5, 1.0, 0.5, -0.5, 1.0, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, 0.5, -1.0, -0.5, 0.25, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -1.0, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, -0.25, 0.25, 0.25, 0.5, -0.25, -0.5, -1.0, 0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.25, 0.5, 0.5, -1.0, -0.25, -0.75, -0.5, -0.25, -1.0, -0.25, 0.0, 1.0, 0.75, 0.0, 0.0, 0.5, -0.75, 0.5, -0.75, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.5, 0.0, 0.25, 0.25, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.25, -1.0, 0.25, -0.5, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, -0.25, 0.25, 0.75, 0.5, -0.5, 0.25, 0.25, 0.25, -1.0, -0.75, 0.0, 0.5, 0.0, 0.5, -0.75, 0.25, -0.75, 1.0, -0.5, -1.0, 0.25, -0.75, -0.25, -0.25, 0.5, -1.0, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.75, -0.75, 0.0, 0.0, -1.0, 0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, -0.75, -0.5, -0.25, -1.0, 0.0, -1.0, -1.0, 0.25, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, 0.5, 0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 0.0, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-1.0, -0.5, -0.75, -0.25, 0.25, -1.0, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.0, -0.25, -0.5, 1.0, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, 0.25, -0.75, -0.5, 0.25, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, -0.75, 0.75, -0.75, 0.0, -0.5, 0.5, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, 1.0, 0.5, 0.5, -0.75, 1.0, 0.75, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.25, -0.5, 0.75, 0.25, -0.75, -0.75, 1.0, -1.0, 1.0, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, -0.75, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 0.0, -1.0, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, 0.0, -1.0, -0.75, 0.0, 0.25, 1.0, 1.0, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array4 = new Float32Array([-0.25, -0.5, -0.25, 1.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, -1.0, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.75, -0.75, 0.0, 0.5, 0.5, 0.0, 1.0, 0.5, 0.5, -0.75, -0.25, -1.0, -0.75, 1.0, -0.75, -0.5, 0.0, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -0.75, 0.25, -0.75, 0.0, 1.0, -1.0, 0.0, 0.25, -0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.5, 0.0, -0.25, 0.75, 0.75, -1.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.75, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.75, 0.5, 0.75, -0.75, ]);
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const command_buffer001 = command_encoder001.finish();
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
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
    const array5 = new Float32Array([1.0, -1.0, -0.25, 0.5, 1.0, 1.0, -1.0, 0.25, -0.25, 0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, -0.5, 1.0, 0.75, -0.5, -0.25, -1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.25, -0.25, 0.75, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 0.25, -0.25, 0.75, -0.5, 1.0, 0.75, -1.0, 0.0, 0.75, 1.0, 0.5, -0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, -0.5, -0.75, 0.75, -0.75, 1.0, 0.75, -0.5, -1.0, 0.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 0.25, -0.75, 0.75, 1.0, 0.25, -0.5, 0.25, -1.0, -0.25, -0.5, 1.0, 0.0, 1.0, -0.5, 0.5, -0.75, -0.75, 0.75, -0.5, -0.5, 0.25, 0.25, ]);
    buffer000.destroy()
    
    device00.queue.submit([command_buffer001, ]);
    
    const array6 = new Float32Array([-1.0, -1.0, -1.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.5, -0.25, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, -0.25, 0.0, -0.75, -0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.0, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, -0.75, 1.0, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.5, -0.25, 0.0, -0.5, -0.75, -0.75, -0.25, 0.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.75, 0.75, -0.25, 1.0, 0.25, 0.25, -0.75, 1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.75, -0.5, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, -0.75, -1.0, ]);
    const array7 = new Float32Array([1.0, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, -1.0, 0.75, -0.25, 1.0, -1.0, -0.75, 0.0, -1.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, -0.5, 1.0, -1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.25, -0.25, -0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -0.25, 1.0, 0.25, 0.0, -1.0, -0.5, -0.25, 0.5, 0.5, -0.25, -0.5, -1.0, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, 0.5, 1.0, 1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 1.0, 0.25, -1.0, 0.5, 0.0, -0.25, 0.5, -1.0, 0.75, 1.0, 1.0, 0.0, 0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.25, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    command_encoder000.insertDebugMarker("mymarker");
    
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
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer001.destroy()
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.25, -0.75, -0.25, -0.5, 0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, -1.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.25, -0.75, -0.5, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.75, 0.5, -1.0, -0.75, 0.75, 0.5, 0.75, 0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.0, 0.25, 0.25, 1.0, 0.0, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, -0.25, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 1.0, -0.75, -0.75, 0.0, -1.0, -1.0, 1.0, -1.0, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
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
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0000.popDebugGroup()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_buffer400 = command_encoder400.finish();
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
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder001.setPipeline(render_pipeline002);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    
    device40.queue.submit([command_buffer400, ]);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
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
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    compute_pass_encoder3000.popDebugGroup()
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    
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
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const array9 = new Float32Array([-1.0, 1.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.75, 0.25, -1.0, -0.75, -0.75, 0.0, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.0, -1.0, 0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -0.75, 0.0, 0.0, -0.5, -0.25, -0.5, 0.25, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, 1.0, -0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -0.5, -1.0, 0.75, -0.75, 0.5, 0.5, 0.25, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, -0.75, -0.75, -0.5, -0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 1.0, 0.25, 0.5, -0.75, 0.0, -0.75, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, -0.25, -0.25, 0.25, 0.75, 0.75, 0.5, 0.5, 0.0, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder500.insertDebugMarker("mymarker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer003.destroy()
    render_bundle_encoder001.popDebugGroup();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder502.popDebugGroup();
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const command_buffer003 = command_encoder003.finish();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer004.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder0020.setPipeline(render_pipeline009);
    
    buffer002.destroy()
    
    
    render_bundle_encoder000.popDebugGroup();
    
    
    buffer005.destroy()
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer300.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    compute_pass_encoder3010.popDebugGroup()
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([-0.5, 0.25, -0.25, 1.0, 1.0, -0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.5, 0.0, 0.25, -0.5, -0.75, 1.0, 0.75, 0.5, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, -1.0, 0.75, -0.25, 0.5, 0.0, -0.5, 1.0, 0.25, 0.0, 1.0, -0.25, -1.0, -0.25, -1.0, -0.75, 0.75, -0.25, 1.0, 0.5, -1.0, 0.25, 1.0, 0.25, -0.25, 0.0, -0.75, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -0.75, -0.5, 0.5, 0.5, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.0, -0.25, 0.25, 1.0, 0.75, 1.0, 0.75, 0.75, -0.75, -1.0, 1.0, 0.5, -0.25, 0.25, ]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: query401
    });
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device60.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder502.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    render_bundle_encoder502.insertDebugMarker("marker");
    
    device50.queue.submit([command_buffer500, ]);
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    render_pass_encoder4010.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    device00.queue.submit([command_buffer003, ]);
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    buffer500.destroy()
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
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
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group400);
    
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/shader_module0014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    
    
    buffer006.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline0025 = device00.createRenderPipeline({
        label: "render_pipeline0025",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const array11 = new Float32Array([1.0, 0.0, 0.25, -1.0, 0.25, -0.75, -0.5, -0.75, -0.75, -0.25, 0.0, 0.0, -1.0, 0.5, 1.0, 0.0, 0.25, 1.0, 0.75, 1.0, -0.75, 0.0, -1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, -0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 1.0, -0.25, -0.75, 0.25, 0.75, 0.0, 0.5, -0.25, 0.5, 0.75, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, -0.5, -0.25, -0.75, 0.5, -0.5, 0.25, -0.5, -1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.0, 0.0, 0.75, -1.0, -0.75, -0.75, -0.5, -0.5, -0.75, -0.75, 0.5, 0.5, 0.75, 0.25, 0.0, 0.75, -1.0, 0.0, 0.25, 0.5, 0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder4010.setPipeline(render_pipeline402);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
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
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    buffer403.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pipeline0026 = device00.createRenderPipeline({
        label: "render_pipeline0026",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
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
    
    const render_pipeline0027 = device00.createRenderPipeline({
        label: "render_pipeline0027",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device50.destroy();
    
    render_bundle_encoder000.setVertexBuffer(0, buffer008);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const render_pipeline0028 = device00.createRenderPipeline({
        label: "render_pipeline0028",
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
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    const array12 = new Float32Array([-0.75, -0.5, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, 0.5, 0.75, -1.0, -1.0, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, -1.0, -1.0, 0.25, 0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 1.0, 0.5, 0.5, 0.5, -1.0, 1.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, 0.75, 1.0, 0.5, -0.5, -1.0, 0.5, 0.75, 0.0, 0.25, 0.25, 1.0, 0.75, -0.5, 1.0, -1.0, 1.0, -0.75, -0.75, 0.75, 0.5, 0.75, -0.5, -1.0, -0.25, 1.0, 1.0, 1.0, 0.75, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, 0.75, 0.75, 0.25, 1.0, -0.5, 0.5, 1.0, -1.0, 0.25, 0.75, -0.5, ]);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    buffer0011.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0020.beginOcclusionQuery(0)
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    buffer305.destroy()
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    buffer400.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline008);
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder401.setPipeline(render_pipeline402);
    buffer009.destroy()
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer008);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder4010.beginOcclusionQuery(0)
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    render_bundle_encoder401.popDebugGroup();
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4022 = texture402.createView({ label: "texture_view4022" });
    render_bundle_encoder301.popDebugGroup();
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline009);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder001.popDebugGroup();
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    
    
    render_bundle_encoder400.popDebugGroup();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group402);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
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
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    render_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0040.setVertexBuffer(0, buffer004);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.end();
    const command_buffer004 = command_encoder004.finish();
}