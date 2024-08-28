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
    const array0 = new Float32Array([0.75, 1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 0.25, -1.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.0, -0.75, -1.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.25, 0.75, 1.0, -1.0, -0.25, -1.0, 0.5, 0.25, -0.5, 0.5, -0.5, -0.75, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, 0.75, 0.75, 0.25, 0.25, -0.5, -0.75, 0.75, -1.0, -0.75, -0.75, 0.75, -1.0, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 1.0, -1.0, 0.0, -0.75, 0.0, 0.75, -0.75, -0.25, 0.25, 1.0, -1.0, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -0.25, 0.0, -1.0, -0.5, 0.25, 1.0, -0.75, 0.0, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.25, -0.5, 0.25, 0.25, -0.25, -0.75, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 0.75, -0.25, 0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, -0.25, -0.75, 0.75, 0.25, 0.0, -0.25, 0.5, -1.0, 0.5, -0.25, 0.0, 1.0, 0.25, 0.0, 0.75, 1.0, 0.75, 0.0, 0.5, 0.25, -0.75, -1.0, -1.0, 0.25, -0.75, -1.0, 1.0, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.0, -0.25, -0.5, -1.0, 0.25, -0.75, -0.5, 0.5, 0.0, -0.25, -0.75, -0.5, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.0, 0.75, -0.75, -0.5, -0.25, 0.25, -0.25, -0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -0.75, 1.0, 0.25, -1.0, -0.75, -0.75, -0.5, 1.0, -0.5, 1.0, -0.5, 1.0, 0.25, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, -0.5, 0.25, -0.25, 0.5, -0.5, 1.0, -0.25, 1.0, -0.25, -0.5, -0.25, 0.0, -1.0, 0.0, -0.75, -0.5, -0.75, 0.5, -0.25, 0.5, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -0.75, -0.5, 0.25, -1.0, 0.25, -1.0, -0.5, 0.0, 0.75, 0.25, 0.75, -1.0, 0.75, 0.25, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 0.5, -0.25, 0.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.0, 0.75, 1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 1.0, 0.0, 0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.destroy();
    const array3 = new Float32Array([0.0, 1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 0.25, -0.25, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, 0.5, -1.0, -0.25, 0.75, 0.75, -0.25, -1.0, 0.25, -1.0, -0.5, 0.75, -1.0, -0.5, 1.0, -0.5, -0.5, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, -0.75, 1.0, 0.0, 0.75, 0.25, 0.0, 1.0, 0.75, -0.25, -0.5, -0.75, 0.0, 0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 1.0, 0.5, 1.0, 0.75, 0.5, 1.0, -0.75, 0.25, -0.25, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, -0.5, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, 0.5, 0.0, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, -1.0, -0.25, -0.75, ]);
    const array4 = new Float32Array([-0.5, 1.0, 1.0, 1.0, 1.0, -0.25, -0.5, -0.75, 0.75, -0.5, 0.0, -1.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, 0.0, -0.5, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.75, 0.0, -0.75, 0.25, -0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, -0.25, -0.25, -0.75, 1.0, 0.25, 0.25, 0.5, 0.5, 0.25, -0.5, -0.25, 1.0, -0.5, 1.0, 0.5, -0.25, -0.25, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, 1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 1.0, ]);
    
    
    const array5 = new Float32Array([-0.5, -1.0, -1.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.25, -0.75, 1.0, -1.0, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -0.75, 0.0, 0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, -0.5, 1.0, -0.25, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, -0.5, -0.25, -1.0, 0.5, -0.5, -0.75, -0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 0.25, 1.0, -0.75, 1.0, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, 0.5, -0.5, -0.75, 0.25, -0.25, -0.25, 0.5, -0.75, -0.25, -0.75, -0.25, 0.75, 0.75, 0.75, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, -1.0, 1.0, 0.75, 0.0, ]);
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array6 = new Float32Array([-0.25, 0.25, 0.5, 0.0, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, -0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.25, -0.5, -1.0, -1.0, 0.25, 0.0, -0.25, -0.5, 0.25, 0.0, 1.0, 0.75, 0.25, -1.0, 0.0, -1.0, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, -0.5, -0.75, -0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -0.75, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.0, -0.25, -0.75, 0.5, 0.0, 0.0, 0.75, -0.5, -0.25, 0.25, 0.25, -0.75, 0.25, 0.0, -0.5, -0.25, 1.0, 1.0, 0.75, ]);
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    const array7 = new Float32Array([1.0, -0.25, 1.0, 0.75, -0.75, -0.5, 1.0, 0.0, 1.0, 1.0, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 0.25, -0.25, 0.5, -0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 0.25, -0.75, 0.25, 0.5, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.5, -0.5, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, 0.75, 0.0, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, -1.0, 1.0, -1.0, 0.0, 0.75, 0.5, 0.5, 1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.25, -0.5, 0.5, -1.0, 0.5, 0.5, 0.75, -0.5, 0.75, -1.0, -1.0, -0.5, 1.0, -1.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.25, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query100.destroy()
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([0.5, 0.25, -0.5, 1.0, 0.75, 0.75, -0.25, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.5, 1.0, -0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.0, 0.5, 1.0, -0.5, -0.75, 1.0, -0.5, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, 1.0, 0.5, -0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -0.5, -0.75, 0.25, -0.5, -0.25, 0.5, 0.25, 1.0, 0.75, -0.25, 1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 0.5, -0.5, -1.0, -0.5, -0.5, -0.25, -0.25, -0.5, -0.5, -1.0, -0.5, -0.75, 0.25, ]);
    
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder101.insertDebugMarker("mymarker");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    texture100.destroy();
    query104.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
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
    
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture101.destroy();
    
    device10.pushErrorScope("internal");
    
    query106.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.destroy();
    query106.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    device10.queue.submit([command_buffer100, ]);
    
    render_bundle_encoder102.setPipeline(render_pipeline102);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_bundle_encoder100.popDebugGroup();
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device10.pushErrorScope("internal");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    buffer100.destroy()
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query102.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    query103.destroy()
    query104.destroy()
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
        occlusionQuerySet: query102
    });
    render_pass_encoder1030.setPipeline(render_pipeline102);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    buffer106.destroy()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query104.destroy()
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const array9 = new Float32Array([0.5, 0.75, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, -1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.75, 0.0, 1.0, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, 1.0, 0.25, -0.75, -0.5, -0.5, 1.0, 0.0, 1.0, 0.0, -0.75, 0.75, -0.75, -0.5, 0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.75, 1.0, -0.25, -1.0, -0.25, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.25, 0.5, -0.5, -1.0, -0.5, -1.0, 0.25, 0.5, -0.5, 0.25, -1.0, -1.0, -0.25, 0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -1.0, 1.0, ]);
    
    buffer105.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
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
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    query102.destroy()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query101.destroy()
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1040.setPipeline(render_pipeline1013);
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    query101.destroy()
    
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    query102.destroy()
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    query103.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    query102.destroy()
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    query106.destroy()
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    buffer108.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    buffer104.destroy()
    
    query105.destroy()
    query106.destroy()
    
    const array10 = new Float32Array([-1.0, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, -0.25, -0.5, 0.5, -1.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.75, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 0.0, 0.0, 0.25, -0.5, 0.5, -0.25, -0.5, -0.25, 0.75, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.25, 0.75, -1.0, 0.75, -0.5, -1.0, -0.75, 1.0, 0.25, 0.25, -0.5, 0.75, 0.5, 0.75, -1.0, -1.0, -1.0, -0.75, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, 0.25, -0.5, 0.75, 1.0, -0.5, -1.0, -0.5, -0.5, 0.5, 0.5, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, ]);
    
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder102.popDebugGroup();
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    
    
    render_pass_encoder1030.popDebugGroup();
    texture103.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    query106.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1011,
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
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    query101.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer103.destroy()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    
    buffer109.destroy()
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer102.destroy()
    query106.destroy()
    
    render_pass_encoder1030.popDebugGroup();
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
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
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
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
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline1022 = device10.createRenderPipeline({
        label: "render_pipeline1022",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    render_pass_encoder1030.popDebugGroup();
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline1023 = device10.createRenderPipeline({
        label: "render_pipeline1023",
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
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline1024 = device10.createRenderPipeline({
        label: "render_pipeline1024",
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
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const render_pipeline1025 = device10.createRenderPipeline({
        label: "render_pipeline1025",
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
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query101.destroy()
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    query101.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout105,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    query106.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("validation");
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout109,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([1.0, 0.5, -0.5, 0.5, -0.25, 1.0, -1.0, -0.5, 0.75, -1.0, -0.5, -0.75, 0.75, 0.25, 1.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.0, -1.0, -0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.0, -0.25, -0.75, 0.75, 1.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.25, 0.25, -0.75, -0.25, -0.25, 0.0, -0.75, -0.25, 0.0, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.75, -0.25, -0.75, 1.0, 0.75, -0.5, -1.0, -0.25, -0.5, 0.75, -0.5, -1.0, 0.25, 1.0, -0.75, -0.75, 0.25, 0.75, 0.0, 1.0, -0.75, -0.5, 0.25, 0.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -0.25, 1.0, -0.75, -0.25, 0.75, ]);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    query102.destroy()
    query102.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    texture105.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    query105.destroy()
    query104.destroy()
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const render_pipeline1026 = device10.createRenderPipeline({
        label: "render_pipeline1026",
        vertex: {
            module: shader_module109,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module109,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    texture300.destroy();
    
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query106.destroy()
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device30.destroy();
    
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout106]
    });
    buffer1010.destroy()
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1041,
            },
        ],
        occlusionQuerySet: query107
    });
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([-0.25, 1.0, 0.25, 0.75, 1.0, 0.75, 1.0, -0.5, 0.5, 0.75, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, 0.75, -0.75, 0.25, 0.25, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 0.5, 0.5, -1.0, 0.0, -0.25, -1.0, 0.75, 0.75, -0.75, 0.75, 0.75, 0.5, -0.5, -0.75, -0.5, 0.75, -0.25, -0.75, -0.75, 0.25, 1.0, 0.5, -1.0, 0.5, -1.0, 0.25, -0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -0.5, -0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -0.75, 0.25, 1.0, -0.5, -0.25, -0.75, -0.25, -0.75, 0.25, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 0.25, -1.0, -1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.75, 0.5, ]);
    
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const render_pipeline1027 = device10.createRenderPipeline({
        label: "render_pipeline1027",
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
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const render_pipeline1028 = device10.createRenderPipeline({
        label: "render_pipeline1028",
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
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1050.setPipeline(render_pipeline1024);
    compute_pass_encoder1020.popDebugGroup()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
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
        layout: render_pipeline1024.getBindGroupLayout(0),
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
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1020.end();
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
}