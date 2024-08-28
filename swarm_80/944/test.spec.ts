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
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array0 = new Float32Array([-0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 0.75, -0.25, -0.5, 0.5, 0.0, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, 1.0, -0.5, -0.5, 1.0, 0.0, -0.5, 0.0, -0.5, -0.5, 0.25, 0.25, 0.0, -0.25, 1.0, -0.5, -0.75, -0.25, 0.25, 0.0, -0.25, 1.0, 0.75, -1.0, 0.75, -1.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.75, 0.75, -0.75, -0.5, 0.0, 0.25, 1.0, 0.0, 0.0, -0.75, 1.0, 0.75, -0.25, 0.25, 0.5, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 1.0, 0.75, -0.75, -0.75, -0.5, 0.5, 1.0, 0.0, 0.75, -0.5, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, 1.0, 1.0, -0.25, 0.0, 0.25, -1.0, -0.25, -1.0, 0.25, 0.25, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array1 = new Float32Array([-1.0, -1.0, -0.25, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, -0.25, 0.5, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 0.75, 0.5, -0.75, -0.25, -0.25, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 0.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.75, -1.0, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, 1.0, 0.0, 0.0, -0.25, -1.0, 0.5, -1.0, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, 0.5, -0.75, 0.75, -1.0, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, 1.0, 0.5, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, 0.25, -0.25, -1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 0.5, ]);
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture101.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const array2 = new Float32Array([-1.0, -1.0, 0.25, 0.5, 0.75, 0.0, 0.5, -0.5, 1.0, 1.0, -1.0, -0.25, -1.0, 0.5, -1.0, 0.25, 0.75, 0.0, -0.5, -0.25, 0.0, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, -0.5, -0.25, 0.5, 0.0, 0.75, -0.25, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, 0.75, 0.75, 0.0, -0.75, 1.0, 0.25, -0.5, 0.0, -1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 1.0, -1.0, -1.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.5, -0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.0, -1.0, 0.25, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 0.75, -0.75, 0.25, 0.5, -1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -0.25, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    
    const array3 = new Float32Array([0.5, 0.5, 0.5, -0.5, -0.5, -1.0, -0.75, -0.5, 1.0, -0.25, -0.75, -1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 0.0, 0.0, -1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, 0.25, 0.0, 0.75, 0.5, 1.0, 0.5, -0.25, -0.5, 1.0, 0.5, 0.75, 0.0, 0.0, 0.75, 0.5, 0.25, 1.0, 0.75, 0.0, -1.0, 0.0, 1.0, -0.75, -0.25, 0.5, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.25, 0.0, -0.5, 0.0, 0.25, 1.0, -1.0, -1.0, -0.25, 0.0, -0.75, -1.0, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const array4 = new Float32Array([1.0, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, -1.0, -0.5, 0.5, -1.0, 1.0, 0.25, -0.5, 1.0, 0.75, -0.5, 0.75, 0.25, -0.25, 0.25, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.0, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.75, -1.0, 0.75, -1.0, 0.0, 1.0, -0.5, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, 0.0, -0.5, 0.0, 0.75, -1.0, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -0.75, -0.75, -0.75, 0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, 0.25, -0.25, 1.0, 1.0, 0.75, 0.5, -0.5, 0.25, 1.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder1000.executeBundles([])
    device00.destroy();
    const array5 = new Float32Array([-1.0, -0.75, -0.25, -1.0, 0.25, -0.25, -0.25, 0.25, -0.5, 1.0, 0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 1.0, 1.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.25, -0.25, -0.5, -0.25, 0.0, 0.25, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, -1.0, -0.5, 0.0, 1.0, 1.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.75, -0.5, 1.0, -0.25, 0.5, 1.0, -0.75, -1.0, 0.75, -0.75, 0.75, 0.25, 0.25, 0.5, -0.5, -0.75, 1.0, -0.75, -0.5, 0.5, 1.0, 1.0, 0.25, -0.5, -0.75, 0.5, -0.25, 1.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 0.5, 0.25, 0.25, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.5, ]);
    render_pass_encoder1000.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
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
    query100.destroy()
    const array6 = new Float32Array([-0.5, 0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.5, -0.5, 0.5, 0.25, 0.5, 0.25, 0.5, -0.75, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, 0.5, 0.0, 1.0, 0.0, 0.25, 1.0, -1.0, 0.5, -0.75, 0.0, 1.0, -0.5, 0.0, -0.5, 0.75, 0.0, 0.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.5, -1.0, -0.25, -0.25, -0.25, -0.25, -0.25, 0.25, 0.0, 0.25, -1.0, 0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, -1.0, 0.75, 0.75, -0.25, 0.5, 0.0, -0.75, -0.5, ]);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder101.clearBuffer(buffer100);
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
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
        occlusionQuerySet: query200
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_pass_encoder2010.executeBundles([])
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
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
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const array7 = new Float32Array([-0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.0, 0.75, -1.0, -0.25, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.5, 0.0, -0.25, -0.5, 0.25, 0.75, -0.25, -1.0, -1.0, 1.0, -0.5, -0.25, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.5, -0.75, -0.25, 0.0, 1.0, 0.0, -0.75, 0.5, -0.5, 0.5, 1.0, -0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.0, -0.5, 0.0, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.5, -1.0, -0.75, -0.75, -1.0, 1.0, -0.5, -0.25, 0.0, 0.75, 0.0, -0.5, 0.25, 0.5, 0.75, 0.0, -0.25, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, ]);
    render_pass_encoder2010.executeBundles([])
    
    const array8 = new Float32Array([0.0, -0.75, 0.75, 0.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.5, -0.75, 0.25, 1.0, 0.5, -1.0, 0.25, 0.25, 1.0, 0.5, -0.25, 1.0, 0.75, 1.0, -0.5, -1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.25, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.25, -0.25, 0.75, 0.75, 0.5, 0.25, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 1.0, 0.0, -0.25, 0.75, 1.0, 0.0, -0.5, 0.0, -0.25, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 1.0, 0.0, 1.0, 0.75, -0.25, 0.5, -0.25, 0.25, -0.25, 0.25, -1.0, 0.75, -0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.75, -0.75, 1.0, 0.5, 0.75, 0.25, ]);
    render_pass_encoder2000.beginOcclusionQuery(0)
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const array9 = new Float32Array([-1.0, 0.5, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, -1.0, 1.0, 0.75, -0.25, 0.5, -1.0, -0.75, 1.0, 0.75, 0.0, 1.0, 1.0, 0.5, 0.25, 0.25, -0.25, -0.25, -0.75, 0.5, -0.25, -0.25, -1.0, -1.0, 0.5, 0.75, 0.0, 0.75, 0.0, 1.0, 0.5, -0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.0, 1.0, 0.25, 1.0, -0.5, -0.5, 1.0, -1.0, 0.5, 0.75, -0.75, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, 0.25, 0.25, -0.5, -0.5, 0.75, -0.25, 0.25, -0.5, 1.0, -0.5, -0.75, 0.25, -0.75, 0.5, -1.0, -0.25, -1.0, -1.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.5, -0.25, 0.75, -0.75, 0.0, 0.25, 0.75, -0.5, -1.0, -1.0, 0.75, -0.25, ]);
    texture102.destroy();
    
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
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
    const array10 = new Float32Array([0.0, -0.5, 0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 1.0, 1.0, 1.0, 0.0, 0.25, 0.0, -0.5, -0.25, 0.75, 0.25, 0.0, -0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, 0.5, -0.75, -0.75, -0.75, -0.25, -0.5, 0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 0.25, -0.25, 0.0, 1.0, -0.25, 0.0, -0.75, -1.0, -0.5, 1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.5, 0.5, -0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 0.25, 0.75, -0.75, 1.0, -0.25, -0.75, -1.0, -0.75, -0.25, 0.25, 0.5, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 0.0, -1.0, 0.5, 0.75, 0.0, 1.0, 1.0, 0.0, -1.0, 0.75, ]);
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.popDebugGroup();
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    query201.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder2020.setPipeline(render_pipeline200);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
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
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder1020.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder2000.endOcclusionQuery()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device10.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    texture200.destroy();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1020.setPipeline(render_pipeline102);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1000.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    query202.destroy()
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    query201.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query400.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    texture103.destroy();
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
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
        occlusionQuerySet: query201
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query400.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline202);
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    texture202.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder2030.popDebugGroup();
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    device70.pushErrorScope("out-of-memory");
    device60.pushErrorScope("internal");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module600,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([1.0, -0.75, 0.0, 0.5, -0.25, 0.25, 0.25, -1.0, 1.0, 0.0, 0.0, 0.25, -1.0, -1.0, 1.0, 1.0, 1.0, -0.5, -0.25, 0.25, -0.25, -1.0, -1.0, -0.25, 0.25, 0.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, -0.25, -1.0, 0.0, 1.0, 0.5, 0.75, 0.5, 0.75, 1.0, 0.0, 0.0, -0.75, 0.0, 0.25, 0.5, 0.5, -0.5, 1.0, -0.75, 0.75, -1.0, -1.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.5, -1.0, 0.25, 0.75, -0.25, 0.25, -0.25, -1.0, -0.5, 1.0, 0.0, 0.0, 0.5, -0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, 0.75, 0.0, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, -0.5, 1.0, -0.25, ]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.clearBuffer(buffer301);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device60.destroy();
    
    device20.pushErrorScope("validation");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query400.destroy()
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    
    query204.destroy()
    query200.destroy()
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    texture203.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module302,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    command_encoder103.clearBuffer(buffer100);
    query400.destroy()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
}