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
    
    const array0 = new Float32Array([-0.5, 0.25, -0.25, 0.75, 0.0, -1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, -0.5, -0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -1.0, 0.5, 0.5, -0.25, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, -0.5, -0.25, 0.0, -0.75, -0.5, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, -0.5, 0.5, -0.5, 0.0, 0.0, 0.25, -1.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.25, 1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.25, 0.75, 0.5, -0.75, 0.25, 0.5, -0.5, 0.75, -0.5, 0.75, -0.75, 0.75, 0.0, -0.5, 0.75, -0.75, 0.25, 0.25, -0.75, -1.0, 1.0, -0.25, 1.0, -0.5, 1.0, -0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.0, 0.0, 0.25, -1.0, -1.0, 1.0, ]);
    const array1 = new Float32Array([0.0, -0.75, -0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -0.75, 0.5, 0.5, -0.75, -0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, -1.0, -1.0, -0.25, -0.75, 0.5, 0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, -1.0, 0.75, 0.75, 1.0, 0.25, 0.75, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, 0.25, -1.0, -1.0, -0.5, -0.25, 1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.25, 0.25, -1.0, ]);
    
    const array2 = new Float32Array([0.25, -1.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, -0.75, 1.0, 0.25, -0.25, -1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.75, -0.75, 0.75, 0.75, -0.75, -0.5, -0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.75, -0.25, -0.75, -1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, -1.0, 1.0, -1.0, 0.5, 0.75, -0.5, 1.0, 0.75, -0.25, 0.0, -0.25, 1.0, -1.0, -1.0, -0.5, 0.25, 0.5, -0.75, -0.25, 0.5, -0.5, 1.0, 0.25, 0.75, 0.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.25, -0.75, -0.25, 1.0, -0.25, 0.25, 1.0, 0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 1.0, 0.25, -1.0, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.5, -0.5, -1.0, 0.75, 1.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, 0.75, 0.5, 1.0, 0.25, 0.0, 0.25, 0.0, -0.25, -0.25, -0.5, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.0, -0.75, 0.5, -1.0, -0.5, -0.5, 1.0, 0.5, 0.5, 0.75, 0.5, -0.75, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 0.0, 0.5, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, -1.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, 0.75, -0.75, -0.25, -0.75, -1.0, 0.75, -1.0, 1.0, 0.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array4 = new Float32Array([-0.75, 0.75, -0.25, 0.25, -0.25, 0.5, 1.0, 1.0, -1.0, 1.0, -0.75, -0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -0.75, -0.25, 0.25, 0.25, -0.5, -0.5, 0.25, 0.0, 0.25, 0.0, 1.0, 0.5, -0.5, -0.75, 0.5, -1.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.75, -1.0, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.5, 0.25, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, 0.25, -0.5, 1.0, -0.25, 0.5, 0.25, 0.0, -1.0, 0.5, 0.25, 0.75, -1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.25, 1.0, 0.0, 0.25, -1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.25, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("out-of-memory");
    
    
    
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    device10.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const array5 = new Float32Array([-0.5, 0.25, 0.25, 0.25, -0.25, 0.75, 0.5, 1.0, -0.75, -1.0, -0.5, -1.0, -0.25, -0.25, -1.0, -0.75, 0.0, 0.25, 0.0, 0.75, -0.75, 0.75, 0.25, 1.0, 0.0, -1.0, -1.0, -0.5, -0.25, 0.75, 0.25, 0.0, -0.25, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, 0.25, 0.0, -0.75, -0.25, -0.25, 0.5, -0.5, -0.5, 0.5, -0.75, 0.0, 0.0, -0.5, 1.0, -0.75, 0.75, 1.0, 1.0, 1.0, -0.5, 0.0, -0.25, 0.0, 1.0, 0.25, -0.25, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 1.0, 0.25, 1.0, 0.25, -1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, 0.5, -0.25, -0.25, -0.5, 0.75, -0.75, 0.25, -1.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device00.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    query001.destroy()
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer200.destroy()
    
    
    query000.destroy()
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array6 = new Float32Array([-0.5, 0.5, 0.25, 0.25, 0.5, 0.5, -0.25, -1.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, 0.25, 0.0, -0.5, 0.5, -0.25, -1.0, -0.5, -0.25, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, -0.75, -1.0, 0.0, 0.5, 0.5, -1.0, -1.0, -0.5, 0.75, -1.0, -0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.0, 0.75, 0.5, -1.0, -1.0, 0.75, -0.5, -0.5, -0.5, -0.25, 0.25, 1.0, 0.0, -0.25, 1.0, 0.25, 1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.5, -0.5, 0.0, -0.5, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 1.0, -0.75, 0.5, -0.25, 0.25, 0.5, -0.75, 0.0, 0.25, 0.5, -0.75, -0.25, 0.0, 1.0, -0.25, -0.25, 0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device20.pushErrorScope("internal");
    
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    
    device30.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    texture000.destroy();
    texture200.destroy();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    query000.destroy()
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    render_pass_encoder0010.setStencilReference(1);
    query001.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    texture001.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query002.destroy()
    query003.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query003.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    buffer201.destroy()
    
    query001.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer003.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    buffer000.destroy()
    
    query001.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
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
    const array7 = new Float32Array([-0.5, -0.75, 1.0, 1.0, 0.75, 0.0, -0.25, 0.75, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.25, 0.5, 0.0, -1.0, 0.5, 0.75, 1.0, -1.0, 1.0, 0.25, 0.5, 0.25, -0.25, -0.5, -1.0, -0.75, 0.25, -0.5, -1.0, -0.75, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, -0.25, -1.0, -1.0, 1.0, -0.75, 1.0, -0.5, -0.5, -0.75, -1.0, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.5, 0.75, -0.75, 0.25, 0.75, -0.25, 0.75, -0.75, 0.0, -0.75, 1.0, -0.5, -0.5, 0.5, 1.0, -0.25, 1.0, ]);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    query000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer002.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    device50.destroy();
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer202.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_bundle_encoder001.popDebugGroup();
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_bundle_encoder200.popDebugGroup();
    query200.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer004.destroy()
    
    
    render_bundle_encoder201.setPipeline(render_pipeline204);
    query002.destroy()
    const array8 = new Float32Array([-0.75, -0.75, 0.25, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 0.5, -0.75, -1.0, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.25, 1.0, -0.25, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, 0.5, 0.75, -0.75, 0.0, 0.75, -0.75, -0.75, 0.25, -1.0, 0.75, 0.25, 1.0, 1.0, 0.5, -1.0, -0.25, 0.75, 1.0, 0.0, -0.75, -1.0, -1.0, 0.25, -0.25, 0.75, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 0.25, 0.0, 0.0, 1.0, -0.5, -0.25, 0.25, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -0.5, -0.5, 0.5, 0.25, -1.0, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder200.draw(3);
    
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setStencilReference(1);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture004.destroy();
    const array9 = new Float32Array([0.25, 1.0, 0.25, -1.0, 0.25, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, 0.5, 0.0, -1.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, 0.75, 0.0, 0.5, 0.0, 0.25, -0.75, 0.25, 0.5, -0.5, 0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.75, -0.25, -0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.5, 0.5, -0.5, -1.0, ]);
    query200.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    texture002.destroy();
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    device60.pushErrorScope("validation");
    query000.destroy()
    query001.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.setVertexBuffer(0, buffer201);
    
    buffer204.destroy()
    
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    buffer206.destroy()
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder201.draw(3);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder600.insertDebugMarker("mymarker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout203]
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("validation");
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
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
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0000.popDebugGroup()
    
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.finish();
    query000.destroy()
    
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    query004.destroy()
    const array10 = new Float32Array([1.0, -0.75, 0.0, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.75, 0.0, -0.5, -0.75, 0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 0.0, -0.25, -1.0, 1.0, -1.0, 0.5, -0.75, 0.25, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.25, 0.5, -1.0, -0.25, 0.75, 0.25, 0.0, -1.0, -1.0, -0.25, -0.25, 1.0, 0.0, 0.25, 1.0, -0.75, -1.0, -0.5, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, 0.75, 0.25, 0.5, 1.0, 0.25, -1.0, 0.75, -0.5, -0.5, 1.0, 0.5, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, -0.5, -0.5, 0.0, 0.5, 0.75, -0.5, -0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 0.0, ]);
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    query200.destroy()
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout2015,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout2016,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout209,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device20.queue.writeBuffer(buffer207, 0, array8, 0, array8.length);
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout206]
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query002.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture005 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder0010.setStencilReference(1);
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
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
    
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout2017,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer009.destroy()
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout205]
    });
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    buffer205.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout2019,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout200,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer201, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0010.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
}