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
    
    const array0 = new Float32Array([0.5, -1.0, -0.5, -0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.5, -0.75, -0.5, -0.75, 0.0, 0.75, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 1.0, -0.25, -0.5, -0.75, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.0, -0.5, -0.25, -1.0, 1.0, -0.75, 1.0, 0.5, -1.0, -0.25, 0.5, 1.0, 0.75, -0.75, 0.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.75, 0.75, 1.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, -0.75, -0.25, 0.5, 0.75, -0.5, 0.5, 0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 1.0, 0.5, 0.0, -0.5, -0.5, 0.0, -1.0, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.75, 0.5, 0.5, 0.0, -0.25, 0.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    
    const array1 = new Float32Array([0.5, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, 0.75, 0.5, 1.0, -1.0, 1.0, -1.0, 1.0, -0.25, 0.75, -0.25, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -0.25, -0.75, 1.0, 0.75, -0.5, -1.0, 1.0, -0.75, -0.75, 1.0, -1.0, 0.75, -0.25, -0.25, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, 0.25, 0.5, 0.5, -1.0, -0.5, -0.5, -0.25, 1.0, 1.0, -0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 0.5, -0.25, 0.25, -1.0, -0.25, 0.5, -0.25, 0.75, 0.75, 0.5, -0.75, 0.25, 1.0, 1.0, -0.5, -0.75, 0.0, 1.0, 0.25, 1.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.75, 0.0, ]);
    const array2 = new Float32Array([-1.0, -1.0, 0.75, -1.0, -0.75, 0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 0.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.75, 0.5, 0.25, -1.0, -1.0, -0.25, 1.0, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, 0.25, 0.75, 1.0, 1.0, -0.25, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, 0.5, 0.0, -1.0, 0.0, 0.5, 0.25, 0.75, 0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 0.5, -1.0, -0.5, -0.75, -0.75, 1.0, 1.0, 0.5, 0.25, -1.0, 1.0, -0.25, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, -1.0, -0.25, 0.25, 0.75, 0.0, 1.0, -1.0, -0.75, -0.5, 0.75, -0.5, 0.75, ]);
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array3 = new Float32Array([0.0, 1.0, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, 0.75, 0.25, 1.0, 0.0, 0.5, 0.75, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 0.0, 0.25, 0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 0.5, 0.75, 0.75, -0.75, -0.75, 0.5, 0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 1.0, -0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.25, 0.5, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, 0.75, 1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, 0.5, 0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 1.0, -0.25, 0.5, -0.5, 0.0, 0.75, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device00.destroy();
    const array4 = new Float32Array([-1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 0.75, 0.75, -0.25, -0.5, -1.0, 1.0, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, -1.0, -1.0, 0.75, 0.25, -1.0, 0.5, 0.0, -0.75, 0.0, 1.0, 0.75, -0.25, 0.5, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, -0.75, 0.25, -0.5, -0.75, -0.5, -0.5, 0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.0, -0.25, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.25, 0.25, 0.75, -0.75, 0.0, -1.0, 0.5, -0.25, -1.0, -1.0, 0.0, 0.25, 1.0, -0.75, 0.5, 0.75, -1.0, 0.75, -0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array5 = new Float32Array([-1.0, 0.5, -0.5, 1.0, -0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.25, 0.5, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -1.0, -1.0, 0.75, -0.25, 0.5, 0.5, -0.5, -0.25, 0.75, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, 0.75, -0.5, 0.25, -1.0, 0.5, -0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.25, 0.25, -0.75, 0.75, -0.75, -0.5, 1.0, -1.0, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.0, 0.25, -0.25, -0.5, 0.75, -1.0, 1.0, -1.0, 0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 0.75, 0.5, -0.25, -1.0, 0.25, -0.5, 0.5, 0.5, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -1.0, -0.75, -1.0, 0.75, 0.25, 0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.destroy();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const array6 = new Float32Array([0.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.25, 0.75, 1.0, 1.0, -0.75, 0.75, -1.0, -0.5, -0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -0.75, 1.0, 0.75, 1.0, -0.75, 0.25, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -0.5, 0.5, 0.0, -1.0, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -0.75, 0.5, 0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 0.75, 0.5, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.5, -0.5, 0.25, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, 0.0, 0.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, -0.5, -1.0, 0.25, -1.0, -0.5, 0.0, 0.5, -1.0, -0.5, 0.25, ]);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    
    const array7 = new Float32Array([-1.0, 1.0, 0.75, 0.0, 0.75, 0.25, -0.25, 0.25, 1.0, -1.0, 0.75, -0.25, -0.25, -0.75, 0.75, 0.75, 0.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.0, -0.75, 1.0, -0.5, -0.5, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, 0.5, 0.5, 1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.5, 0.75, 1.0, 0.5, 0.75, 0.75, 0.0, 0.25, 0.25, -0.5, 0.75, -0.25, 0.5, 0.5, -0.75, 1.0, -0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, -1.0, 0.0, 1.0, -1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 0.5, 0.0, 1.0, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const array8 = new Float32Array([0.25, -0.25, 0.5, 0.75, -1.0, 0.5, 0.5, 0.5, -0.25, -1.0, -1.0, -0.5, -1.0, -0.5, 0.0, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 0.75, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, 0.0, 0.25, 1.0, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, 0.75, 1.0, -0.75, -0.5, 1.0, -0.75, -0.75, 0.5, 0.75, 0.75, 0.0, -1.0, 0.75, 1.0, 1.0, 0.5, 1.0, 1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, -0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.0, 1.0, -0.25, 0.25, -0.75, 1.0, 1.0, 0.5, ]);
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
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
    query100.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    query102.destroy()
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
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
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    query103.destroy()
    
    
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    query100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const command_buffer300 = command_encoder300.finish();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_pass_encoder1020.executeBundles([])
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query105
    });
    
    query102.destroy()
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query101.destroy()
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query103.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.popDebugGroup();
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1030.beginOcclusionQuery(0)
    query103.destroy()
    
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    query101.destroy()
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1040.setStencilReference(1);
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
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_pass_encoder1040.setStencilReference(1);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    render_pass_encoder1040.executeBundles([])
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_pass_encoder1020.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    render_pass_encoder3040.setStencilReference(1);
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    query104.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    command_encoder305.clearBuffer(buffer301);
    
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
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    compute_pass_encoder3030.insertDebugMarker("marker")
    const command_buffer305 = command_encoder305.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
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
    
    
    query300.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder3040.setStencilReference(1);
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    query103.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder1040.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
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
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    render_pass_encoder1030.executeBundles([])
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query104
    });
    query101.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    compute_pass_encoder3030.insertDebugMarker("marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder1040.popDebugGroup();
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    query300.destroy()
    compute_pass_encoder3030.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.submit([command_buffer305, ]);
    
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query101.destroy()
    render_pass_encoder3040.popDebugGroup();
    
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pipeline1020 = device10.createRenderPipeline({
        label: "render_pipeline1020",
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
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
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const array9 = new Float32Array([-1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, -0.5, 1.0, -0.75, -0.25, 0.75, 1.0, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.0, -0.5, 0.0, 0.0, 0.75, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, 1.0, -0.75, -1.0, -0.75, -0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, -0.75, 1.0, -0.5, -0.5, -0.75, 0.5, -0.25, 0.75, 1.0, 0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, 0.75, -0.5, 1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, -1.0, -0.25, 0.75, -0.75, -0.25, -0.5, ]);
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
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
    
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder1020.setStencilReference(1);
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
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
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline1021 = device10.createRenderPipeline({
        label: "render_pipeline1021",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    command_encoder106.clearBuffer(buffer107);
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    render_pass_encoder1050.executeBundles([])
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1030.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.setStencilReference(1);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    query102.destroy()
    
    command_encoder107.resolveQuerySet(
        query105,
        0,
        32,
        buffer101,
        0
    )
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    query301.destroy()
    query100.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    render_pass_encoder1030.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    device10.queue.writeBuffer(buffer107, 0, array9, 0, array9.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
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
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder3040.setStencilReference(1);
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    render_pass_encoder1020.setStencilReference(1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query107.destroy()
    render_pass_encoder3040.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    query500.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
}