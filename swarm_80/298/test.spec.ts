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
    const array0 = new Float32Array([1.0, 1.0, -0.75, -0.75, -0.5, 0.5, 0.25, -0.75, -0.75, 0.5, -0.25, 0.5, 0.5, -0.5, 0.5, -0.75, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, 1.0, -0.25, -0.25, 0.75, -1.0, -1.0, 1.0, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.75, 0.5, -0.5, -1.0, -0.75, -1.0, 0.75, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, -0.75, 0.5, 0.75, 0.25, 0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.0, 1.0, 0.75, 1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 0.25, -1.0, -0.5, 0.0, -0.75, 0.0, -0.25, 0.5, 0.0, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, -0.75, 1.0, -0.5, 0.25, -0.75, -1.0, -0.25, -0.75, -1.0, ]);
    
    const array1 = new Float32Array([-0.75, -0.25, 0.5, 0.0, 1.0, -0.75, -0.5, -0.75, 0.25, 0.5, -0.25, 0.0, 0.25, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, 0.25, -0.75, 1.0, -0.75, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, 0.75, -0.25, 0.0, 0.5, 0.5, 0.0, -0.25, -0.25, 0.0, 0.75, -1.0, -0.75, 0.0, 0.5, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, -0.5, 0.5, 0.75, -0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, -0.25, -0.25, -1.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 0.75, -0.5, 1.0, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.75, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([0.5, -0.5, 0.75, 0.25, -0.5, -0.25, -0.25, -0.75, 1.0, 0.25, 0.25, 0.0, -0.75, -0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, 0.5, -0.5, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.5, 0.25, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, -0.5, -0.25, 1.0, -0.25, -0.25, -0.25, -0.75, -0.75, 1.0, -0.5, 0.75, -1.0, -0.25, 0.25, -0.75, -0.5, -0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -0.25, -0.75, -0.25, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 0.75, -0.75, -0.5, -0.25, -0.5, 1.0, 0.5, 1.0, 0.25, -0.25, -0.5, 1.0, 1.0, 0.5, 0.75, 0.0, -1.0, 0.75, 0.5, -0.75, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array3 = new Float32Array([-1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.5, 0.0, 0.75, -1.0, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, -0.25, 0.25, -0.75, 1.0, 0.5, -0.25, 1.0, 0.0, -1.0, -1.0, -0.25, -0.25, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.75, -0.25, -0.25, 0.0, 0.5, -0.5, -1.0, -0.75, 1.0, 0.5, 0.5, 1.0, 0.5, -0.75, -0.25, -1.0, -0.75, -1.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, 0.0, 1.0, -0.25, 0.25, -0.25, 1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 0.75, -0.75, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, -1.0, 0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.popDebugGroup()
    device10.pushErrorScope("out-of-memory");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const array4 = new Float32Array([1.0, 1.0, 0.25, 1.0, -0.5, 0.0, -0.5, -0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.5, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, 1.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, -1.0, 0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.25, -1.0, -0.5, -1.0, 0.25, -1.0, -0.5, -0.25, 0.5, 0.25, 1.0, -0.25, -0.5, -0.5, 1.0, 0.75, 0.5, -0.75, -0.5, -1.0, 0.25, 0.0, -1.0, -0.75, 0.0, 0.5, -0.5, 0.25, -0.25, -0.25, 0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.5, -0.5, 0.25, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, -0.5, -0.25, 0.5, -0.75, -1.0, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder202.insertDebugMarker("mymarker");
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
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer200.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture100.destroy();
    command_encoder202.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([1.0, -1.0, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, 0.75, -0.25, 1.0, -1.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 0.75, 0.5, 0.0, -0.75, 0.0, -0.25, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, 1.0, 0.25, -0.5, 0.25, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, 1.0, 1.0, -0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.25, -0.75, 0.5, -0.5, -0.5, 1.0, -0.25, 1.0, -0.25, -0.5, -0.25, 0.5, -0.25, 0.0, 0.5, -0.75, ]);
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
    
    device20.pushErrorScope("internal");
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    buffer100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder202.popDebugGroup()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([1.0, 1.0, -1.0, 0.0, -0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 0.75, 0.5, 0.5, -1.0, -1.0, 1.0, 0.25, -0.75, -0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -0.25, -0.25, 0.0, 1.0, 0.25, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 0.25, -1.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.0, 0.75, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -0.5, 0.75, 0.0, 0.25, 0.25, 0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 0.0, 0.75, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, -0.75, 0.0, 0.0, -0.25, 0.0, -0.25, -0.5, 0.75, 0.25, ]);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array7 = new Float32Array([-1.0, 0.75, 0.75, 1.0, -0.75, -0.75, -0.75, 0.5, -0.25, 0.25, -1.0, 0.5, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.0, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.25, -0.5, -0.25, 0.25, 0.25, 0.0, -0.75, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, -0.5, -1.0, -0.75, -1.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, -0.75, 0.75, 1.0, 1.0, 0.75, -0.75, -0.5, -0.75, -0.75, 0.5, -0.25, 0.25, 0.25, 0.25, -0.5, 0.25, -0.75, 0.0, 0.0, 0.75, 0.75, -0.75, 0.5, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, ]);
    command_encoder100.popDebugGroup()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    const array8 = new Float32Array([-0.75, -0.75, 0.0, -0.25, 0.25, -0.5, -1.0, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.5, -0.75, 1.0, 1.0, 0.0, 0.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 1.0, 0.5, 1.0, -0.5, -1.0, 0.5, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, 0.5, -0.5, -0.25, 0.0, 0.5, 1.0, 1.0, -0.5, 0.25, 1.0, -0.75, -0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 1.0, 0.0, -0.5, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 1.0, -0.5, 0.0, 1.0, -0.75, 0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, 0.5, -0.25, -0.5, 0.5, -0.25, -0.25, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    const array9 = new Float32Array([0.25, 0.25, -0.5, 0.75, 0.5, -0.25, -1.0, -0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.75, -1.0, 0.0, 1.0, -1.0, 0.5, -1.0, -0.75, 0.75, 0.0, -0.25, 0.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, -0.25, 0.0, 0.0, 0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -0.5, 0.5, 1.0, -0.25, 0.0, 0.75, -1.0, -0.5, 1.0, 0.0, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, 0.5, -1.0, -0.5, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, 0.25, -1.0, 0.25, -0.75, -0.5, 0.25, -0.5, 0.5, 0.25, ]);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer101.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder204.insertDebugMarker("mymarker");
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder100.popDebugGroup()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder205.pushDebugGroup("mygroupmarker")
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    
    buffer300.destroy()
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    command_encoder200.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder205.popDebugGroup()
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder203.popDebugGroup()
    const array10 = new Float32Array([0.0, 1.0, 1.0, 0.5, -0.75, -0.25, 0.75, -0.25, 0.5, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, 1.0, 1.0, -0.5, 0.75, -0.75, 1.0, 0.25, -1.0, 0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.0, 1.0, -0.5, -0.25, 0.25, 0.75, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -1.0, -0.25, 0.25, 0.75, 1.0, -0.25, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, -0.25, -0.5, -0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, -1.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, 1.0, 0.25, 0.0, -0.25, ]);
    command_encoder205.pushDebugGroup("mygroupmarker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    command_encoder202.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    
    buffer103.destroy()
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    command_encoder201.insertDebugMarker("mymarker");
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder204.insertDebugMarker("mymarker");
    
    
    
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder201.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture300.destroy();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder101.insertDebugMarker("mymarker");
    
    
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline102);
    
    command_encoder301.popDebugGroup()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    buffer104.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    buffer203.destroy()
    
    
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder300.popDebugGroup();
    
    command_encoder204.insertDebugMarker("mymarker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer102.destroy()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder206.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder205.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder200.insertDebugMarker("mymarker");
    texture301.destroy();
    render_bundle_encoder101.popDebugGroup();
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
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder101.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
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
    command_encoder206.insertDebugMarker("mymarker");
    command_encoder102.pushDebugGroup("mygroupmarker")
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    buffer202.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder201.popDebugGroup();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder201.popDebugGroup()
    command_encoder303.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture102 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    const array11 = new Float32Array([-0.5, -1.0, 0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, -1.0, -1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 1.0, -1.0, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 1.0, 0.0, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, -1.0, 0.25, 0.75, 0.5, -1.0, 0.5, 0.0, 0.75, 0.5, 0.25, -0.75, 0.75, -0.75, 0.0, -1.0, 1.0, 0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.5, -0.5, -0.25, 0.0, 0.0, -0.25, -0.75, 0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, 0.25, -0.5, -0.75, 0.75, -0.75, 0.5, 0.25, -0.25, 0.5, -1.0, 0.25, -0.25, -0.5, 1.0, 1.0, -0.25, 1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -1.0, 1.0, -0.75, 0.25, 0.5, ]);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_pass_encoder2060.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_bundle_encoder100.popDebugGroup();
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder2060.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    command_encoder204.insertDebugMarker("mymarker");
    buffer201.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_pass_encoder2050.pushDebugGroup("group_marker");
    const array12 = new Float32Array([0.25, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 1.0, 0.5, 0.75, -0.5, 0.25, -0.5, 0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 1.0, -0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.0, 0.5, -0.25, 0.0, 0.0, -0.25, 0.5, 0.5, -0.75, 1.0, 0.0, 0.75, -0.75, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, 0.5, 0.25, -1.0, -0.75, -0.5, -0.5, -0.25, -1.0, 0.25, -1.0, 1.0, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.0, 0.5, 0.0, -0.75, -0.25, 0.0, -1.0, -0.75, -1.0, 0.75, -0.5, -0.25, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, -0.75, 0.5, -1.0, 0.25, 0.75, 0.0, -1.0, ]);
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer206, 0, array10, 0, array10.length);
    
    
    
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
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
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.popDebugGroup();
    buffer206.destroy()
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
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
    device10.queue.writeTexture({ texture: texture102 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder208.pushDebugGroup("mygroupmarker")
    command_encoder204.popDebugGroup()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    texture102.destroy();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    buffer204.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder2070.insertDebugMarker("marker");
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
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
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    render_bundle_encoder102.setPipeline(render_pipeline107);
    render_pass_encoder3000.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture101.destroy();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture103.destroy();
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder3000.insertDebugMarker("marker");
    texture302.destroy();
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
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
    command_encoder201.insertDebugMarker("mymarker");
    
    
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2050.popDebugGroup();
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    
    buffer106.destroy()
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2070.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.popDebugGroup();
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
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    
    
    render_pass_encoder2070.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    texture200.destroy();
    render_pass_encoder2070.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder201.popDebugGroup();
    
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    command_encoder202.popDebugGroup()
    command_encoder208.popDebugGroup()
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2070.popDebugGroup();
}