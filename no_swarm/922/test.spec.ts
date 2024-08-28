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
    
    const array0 = new Float32Array([0.25, -0.5, 0.25, 0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -0.25, -1.0, -0.5, -0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -0.5, 0.75, -0.5, 0.0, 1.0, 0.75, 0.75, -0.25, 0.5, 0.5, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.5, 0.5, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.75, -0.25, -1.0, 0.75, 1.0, 0.5, -0.25, -0.25, 0.5, -0.25, -0.75, 1.0, -0.25, -0.25, -0.75, -0.75, 0.5, 1.0, -0.5, -0.25, 1.0, -0.5, 0.5, -0.25, 0.5, -0.5, 0.0, 0.0, 0.75, 0.25, 0.0, -1.0, 0.75, -0.25, 0.5, 0.5, -0.25, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.0, 0.0, -1.0, -0.5, ]);
    const array1 = new Float32Array([-0.5, -0.75, 1.0, 0.5, -1.0, -0.75, 0.25, 0.0, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, 1.0, -0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.5, 1.0, -0.75, 0.5, 0.25, 1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.5, 0.25, -0.75, 0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 0.0, -0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, 0.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.0, -1.0, 0.25, 0.25, 0.75, -0.25, 0.75, -0.75, 0.25, -0.75, 0.5, 0.75, -0.5, -0.5, -0.75, -0.25, ]);
    const array2 = new Float32Array([-0.75, -1.0, -0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.0, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, 0.5, 1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, 0.5, 0.5, -0.25, -1.0, 1.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.5, -0.25, 0.0, 0.5, -0.5, -1.0, 0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.75, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.25, -1.0, -0.5, -0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, -1.0, 0.5, -1.0, -1.0, -0.75, ]);
    
    
    const array3 = new Float32Array([-1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 1.0, -0.5, 1.0, -0.75, -0.5, -0.75, 0.75, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, -0.5, 0.0, -0.25, -0.25, 0.5, 1.0, -0.5, -0.75, 0.0, 0.25, -1.0, 0.25, 0.75, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 0.5, -0.25, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, -1.0, 0.25, 1.0, 0.5, -0.25, 0.0, 0.75, 0.75, 0.0, 1.0, -0.25, 0.5, -1.0, 0.75, 1.0, -0.25, -1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 1.0, -0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 0.5, 1.0, 1.0, -1.0, ]);
    const array4 = new Float32Array([-0.75, 0.5, 0.25, -1.0, -0.5, 0.5, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, -0.5, 1.0, 0.0, 0.25, -0.75, -0.25, -1.0, 0.25, 1.0, 0.75, 0.0, 1.0, -0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 1.0, -0.25, -0.25, -0.5, 0.25, 0.0, 0.25, -0.25, 0.75, 0.75, -0.75, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, -1.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.0, -0.5, 0.0, 0.5, -1.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.5, -0.75, -1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 0.0, 0.25, 0.25, -1.0, 0.0, -0.75, -1.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.0, -0.5, -0.5, 0.25, ]);
    const array5 = new Float32Array([-0.5, 0.0, 0.75, 1.0, 1.0, -0.5, 0.0, -0.5, 1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, -0.25, 0.5, 0.25, 1.0, -1.0, 0.5, -0.25, 0.25, -0.75, 0.25, -0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.75, 0.25, -0.25, -1.0, 0.0, -0.25, -0.5, -0.5, 0.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.75, 0.0, -0.75, 0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.25, -0.25, -0.25, -1.0, 1.0, -0.25, -0.5, -1.0, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.0, 0.25, 1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -1.0, -0.75, 0.5, 0.5, -0.75, -0.5, 0.25, 0.5, -0.25, 1.0, -0.75, ]);
    const array6 = new Float32Array([0.5, 1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.75, -0.25, 1.0, -0.25, 1.0, -0.25, 1.0, 0.5, 0.75, -0.75, -0.5, -0.5, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, 0.5, 0.5, 0.75, -0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.75, 0.0, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, -0.5, 0.25, -1.0, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, 0.75, 0.5, 1.0, 0.75, 0.0, 0.5, 1.0, 0.5, -0.25, -0.75, -0.5, 0.75, -0.5, -1.0, 0.75, 0.75, -1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array7 = new Float32Array([-0.75, 0.75, 0.25, -1.0, -1.0, -1.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, 1.0, 0.5, 0.75, 1.0, 1.0, 0.0, -0.25, 1.0, 0.5, 0.25, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 1.0, 0.5, 0.0, 0.5, -0.75, 0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.75, -1.0, -0.5, 1.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.75, -0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 0.75, -0.25, -1.0, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, -1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, ]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    device10.pushErrorScope("out-of-memory");
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder100.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-0.25, -0.5, -0.5, 0.5, 0.25, 1.0, 1.0, 0.75, 0.25, 0.5, 0.0, -0.75, -0.75, -0.75, -0.75, 0.25, 0.0, -1.0, -0.25, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, -0.25, 0.75, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, -0.5, 0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.25, 0.5, -1.0, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.5, 1.0, 1.0, 1.0, -1.0, 0.25, 0.5, -1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.0, -0.75, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, 0.0, 1.0, 0.75, 0.0, -0.25, ]);
    
    
    
    const array9 = new Float32Array([-0.25, 0.25, -1.0, -1.0, -0.5, 0.5, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 1.0, -0.5, 1.0, 0.75, 0.75, 0.25, 0.25, -0.25, 0.0, -0.5, 0.25, -1.0, 0.0, 0.0, -1.0, -0.5, -0.5, 0.5, -0.5, -0.5, -1.0, -0.25, 0.0, 1.0, -0.5, 0.0, 0.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, -0.25, -0.25, -0.75, -0.75, -1.0, -0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -0.75, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 0.75, 1.0, 1.0, 0.0, -1.0, 0.25, 0.75, 0.25, -0.5, 0.75, 0.0, 1.0, 0.25, -0.75, -1.0, 1.0, 0.25, -0.5, -0.5, -1.0, 0.75, -0.75, -0.75, 1.0, -0.25, -0.5, -1.0, 0.5, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder100.popDebugGroup();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_buffer100 = command_encoder100.finish();
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder100.popDebugGroup();
    
    texture101.destroy();
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module106,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module106,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    compute_pass_encoder1010.popDebugGroup()
    
    
    render_bundle_encoder100.setPipeline(render_pipeline103);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    texture100.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.setPipeline(render_pipeline105);
    
    buffer100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer102.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.setPipeline(render_pipeline104);
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
    device10.pushErrorScope("internal");
    const array10 = new Float32Array([-0.25, -1.0, 0.0, 0.25, -1.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, 0.5, -0.5, 0.0, -0.75, 1.0, 0.25, -0.5, -0.75, 0.0, -0.25, 0.75, -1.0, 0.75, 0.75, 0.75, -0.25, 1.0, 0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, 1.0, 1.0, -1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -0.75, 0.25, -0.75, 1.0, 0.0, 0.0, -0.25, 0.75, 0.75, 0.0, 0.25, -0.25, -0.25, 0.5, 1.0, 0.5, -1.0, 0.5, -1.0, -0.25, -0.25, 0.75, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, -0.25, -1.0, 0.25, -0.75, 0.5, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, -0.25, 0.0, 0.75, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    buffer103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    buffer101.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const array11 = new Float32Array([0.0, 0.5, 0.75, 0.75, -1.0, 0.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, 0.0, 0.75, -0.75, -0.25, 1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.75, -0.75, 0.5, -0.25, 0.75, 0.25, -0.25, -0.75, 0.75, 0.75, 1.0, 0.25, 0.25, -0.5, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, -0.5, 0.5, -0.75, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, 0.0, 0.25, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, 1.0, -0.25, 1.0, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, -0.25, 0.25, 0.5, -0.75, -0.75, -0.5, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, 0.0, ]);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    command_encoder200.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
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
    const array12 = new Float32Array([-1.0, -1.0, -0.25, -0.5, 0.0, -1.0, 1.0, 0.5, 1.0, 0.0, 1.0, -0.25, -1.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, 0.0, 1.0, -0.25, -0.25, 0.5, 1.0, -0.5, 0.75, 0.5, 0.0, -0.25, 0.5, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.0, 1.0, -0.75, 0.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, 0.0, 0.75, 0.25, -0.5, -0.25, -0.25, -0.25, -0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 1.0, 1.0, -1.0, -1.0, -0.25, -0.25, 0.75, 0.5, -0.25, 0.25, 0.5, ]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array13 = new Float32Array([0.25, -0.75, 1.0, 0.0, 1.0, 0.0, 0.5, 0.75, -0.75, -1.0, 0.25, -0.75, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -0.75, -1.0, -0.75, -0.75, 0.0, -0.25, -0.5, 0.75, -1.0, -0.75, -0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.25, 0.25, -0.25, 0.0, 1.0, 1.0, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, 0.25, 0.25, 0.25, -1.0, 0.0, -1.0, -0.5, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, -0.75, 0.5, 0.5, 0.75, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, -0.25, -1.0, -0.25, 1.0, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, -0.5, -0.5, -0.5, ]);
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    query200.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query100.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    render_pass_encoder1020.setStencilReference(1);
    const array14 = new Float32Array([-0.25, -0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 0.75, -1.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -1.0, 0.25, 1.0, 0.0, -0.75, -0.5, 0.5, -0.5, 1.0, -0.75, 0.0, 1.0, -0.75, -0.25, -0.5, 1.0, -0.75, -0.25, 0.0, 0.25, 0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -0.5, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, -0.75, -0.5, -0.25, -1.0, -0.75, 0.0, 0.5, -1.0, 0.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 0.75, -1.0, 0.5, -0.25, ]);
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    const command_buffer200 = command_encoder200.finish();
    buffer105.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture103.destroy();
    device10.queue.submit([command_buffer100, ]);
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
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group103);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer109.destroy()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1020.popDebugGroup();
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
        vertex: {
            module: shader_module1011,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1011,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module1010,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1010,
            entryPoint: "fragment_main",
            targets: [
                {
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
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer104.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer108.destroy()
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
        vertex: {
            module: shader_module1013,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    buffer1011.destroy()
    
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    
    buffer1010.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group105);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.writeBuffer(buffer1014, 0, array12, 0, array12.length);
    
    
    render_pass_encoder1020.popDebugGroup();
    device10.queue.writeBuffer(buffer1014, 0, array14, 0, array14.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer1014, 0, array13, 0, array13.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
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
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer1014, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer1014, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1014, 0, array11, 0, array11.length);
    
    device10.queue.writeBuffer(buffer1014, 0, array5, 0, array5.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array9, 0, array9.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer1012.destroy()
    
    buffer106.destroy()
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer1014, 0, array13, 0, array13.length);
    render_bundle_encoder102.popDebugGroup();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    device30.pushErrorScope("validation");
    texture102.destroy();
    device10.queue.writeBuffer(buffer1014, 0, array6, 0, array6.length);
    
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array14, 0, array14.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
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
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1014,
            entryPoint: "main"
        }
    });
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    command_encoder202.clearBuffer(buffer201);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
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
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer1014, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer1013.destroy()
    
    const command_buffer202 = command_encoder202.finish();
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
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
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const array15 = new Float32Array([-1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.0, -0.75, -0.25, 0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 1.0, 0.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.5, -1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 1.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.25, 1.0, -0.25, -1.0, -0.25, 0.5, 0.0, 1.0, -0.75, 0.25, -0.5, 0.75, -1.0, -0.5, -0.25, 1.0, -0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 1.0, -1.0, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 0.75, -0.25, 1.0, -0.5, 0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.0, 1.0, 0.5, ]);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device10.queue.writeBuffer(buffer1014, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer1014, 0, array14, 0, array14.length);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1010.popDebugGroup()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const array16 = new Float32Array([-0.75, 0.0, 1.0, 0.25, -0.75, 1.0, 0.25, 0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -1.0, -0.5, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, 0.25, 0.75, 0.0, -0.5, -0.75, -0.5, -0.75, -0.5, 0.0, -0.75, -0.5, 1.0, 0.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 1.0, -0.75, 0.0, 1.0, -0.25, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 0.75, -0.75, 0.25, 0.5, -0.25, 0.0, 0.75, -0.75, -1.0, -0.5, -0.5, -0.5, -1.0, 0.25, 0.25, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer1014.destroy()
    const array17 = new Float32Array([1.0, 0.5, -0.25, 1.0, 1.0, 0.25, 0.0, 0.25, -0.25, 0.5, -0.5, 0.0, -0.75, -0.5, -0.25, -0.5, -0.5, 0.5, 1.0, 0.75, -0.75, 0.5, 1.0, 0.75, 0.5, 0.75, -0.5, -0.25, 0.75, 0.25, -0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, 1.0, 0.75, 0.0, 1.0, 1.0, -1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 1.0, 0.0, -0.25, 0.25, 0.75, 0.5, 1.0, -0.25, 0.25, 0.75, 1.0, 0.25, 0.25, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.25, 0.75, -0.75, 0.75, ]);
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1030.popDebugGroup()
    buffer107.destroy()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1014,
            entryPoint: "main"
        }
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    device20.queue.writeBuffer(buffer200, 0, array14, 0, array14.length);
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    buffer203.destroy()
    compute_pass_encoder1030.end();
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_pass_encoder1050.setPipeline(render_pipeline105);
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
        vertex: {
            module: shader_module1013,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1013,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1040.executeBundles([])
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline1010);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2010.end();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1010.end();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    command_encoder101.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer201, ]);
}