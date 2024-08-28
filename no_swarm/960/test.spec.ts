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
    
    const array0 = new Float32Array([-0.25, 1.0, 0.0, -0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 1.0, 0.75, 0.0, 1.0, -0.25, 1.0, 0.25, -0.5, -1.0, -0.75, 0.75, -0.5, 0.25, -0.75, 1.0, -0.25, -0.5, -0.5, 1.0, 0.5, 0.25, -0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 1.0, -0.5, 0.75, 0.25, -0.5, -0.75, 0.25, -0.5, 0.75, 1.0, -1.0, -1.0, -0.75, 1.0, 0.5, 0.0, -1.0, 0.5, 0.75, -0.25, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 1.0, 0.5, 1.0, -0.5, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.25, 0.5, 0.25, 0.0, -0.75, -1.0, 0.25, -1.0, 0.25, -1.0, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([1.0, 1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.5, -1.0, -0.25, -1.0, 1.0, 0.75, 0.0, -1.0, -0.25, 0.25, 0.5, 0.75, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.75, -1.0, 0.25, 0.25, 0.75, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, -0.5, 0.0, 0.25, 0.0, 0.0, 1.0, -0.5, -0.25, -0.25, -0.5, 0.25, 0.5, 0.75, 0.25, 0.75, 0.5, -1.0, 0.0, -0.25, 0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, -1.0, 0.25, -1.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.5, 0.75, -0.25, -1.0, 0.25, 0.75, -0.5, 1.0, ]);
    
    
    
    const array2 = new Float32Array([0.75, 0.25, 0.0, 0.5, -0.5, 0.75, 0.5, 0.25, 0.75, 0.0, -0.5, -0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.25, -0.25, 0.0, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 0.5, -0.25, -1.0, -1.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 0.75, 0.25, 1.0, -1.0, 0.75, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, -0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.0, -0.5, 0.0, 0.25, 0.25, -1.0, 0.75, 1.0, 0.5, -0.5, 0.25, -0.75, 0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.5, -0.25, 1.0, 0.75, 0.25, 1.0, -0.25, 0.75, -1.0, -0.25, -1.0, 0.5, 0.0, 0.5, -0.25, 1.0, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, -1.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    const array3 = new Float32Array([0.75, -1.0, 0.0, -0.25, -0.75, 0.5, 0.25, -0.5, -0.75, 1.0, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, -0.25, -0.75, 1.0, -0.75, 0.75, -1.0, 0.75, 0.5, 0.0, 0.5, 0.75, 0.0, -0.5, -1.0, 0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 1.0, 0.75, -0.25, 1.0, -0.75, 0.75, 0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, 0.0, 0.0, -0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 1.0, 0.75, 1.0, 1.0, 0.75, -0.25, 1.0, -1.0, -0.25, 1.0, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, 0.75, -0.25, 1.0, 0.5, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array4 = new Float32Array([1.0, 0.0, 0.0, 0.25, 0.0, -0.25, -0.75, 0.75, -1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, 0.0, -1.0, -0.25, -1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 0.0, 0.75, -0.75, 0.25, 0.5, -0.25, 1.0, -1.0, 1.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, 1.0, -0.5, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.0, -0.25, 0.5, 0.5, -1.0, 0.0, 0.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.5, -1.0, 0.25, 0.0, -0.25, -0.5, 0.75, 1.0, 0.5, -0.75, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, -0.25, -0.75, 0.0, 0.75, -0.25, 0.75, 0.75, -0.5, -0.75, -0.75, 0.75, -1.0, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-0.5, 1.0, 1.0, -1.0, 0.5, 0.5, 0.75, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.25, 0.0, -0.25, -0.5, -0.75, 0.5, 0.75, 0.25, -0.25, -0.25, -1.0, -0.75, 0.25, 1.0, 0.0, 0.75, -0.5, 1.0, -0.75, 0.75, -0.25, 0.25, 0.5, -0.5, -0.75, -1.0, 0.0, -0.75, 1.0, -0.75, 0.75, -0.75, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, 0.75, 0.5, -0.25, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.0, 0.75, 0.25, -0.25, 0.5, 0.25, 0.75, -0.75, -0.75, 0.25, -0.5, 0.25, 0.75, -0.25, 0.5, 0.25, -0.25, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder400.clearBuffer(buffer400);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    query100.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer201.destroy()
    query400.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.clearBuffer(buffer400);
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const array6 = new Float32Array([1.0, 0.5, -0.5, -0.75, 0.5, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.75, -0.25, -1.0, 0.25, -1.0, 0.75, 0.0, 0.75, 0.5, -1.0, -0.25, -0.5, 0.0, 0.0, -1.0, 1.0, 0.5, 0.25, -0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.25, -0.5, -0.25, -1.0, -0.5, 0.5, 0.5, 0.5, 1.0, -0.75, -0.75, 0.75, 0.5, 0.0, 0.75, -1.0, 0.75, 1.0, 0.75, 0.75, -0.25, 1.0, -1.0, 0.0, -1.0, -0.25, -0.75, -0.5, 0.5, 1.0, 0.5, 0.25, 0.5, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.5, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.5, 0.0, -0.5, -0.25, -1.0, 0.25, ]);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array7 = new Float32Array([-1.0, 0.5, 0.0, -0.25, 0.0, 0.5, 0.75, 0.75, 0.5, -0.25, -0.75, 0.0, -0.75, 0.25, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.75, -0.25, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 0.25, 0.5, 0.25, 0.75, 0.0, -0.25, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, 1.0, -0.5, -0.75, -0.75, 0.5, 0.5, 1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 1.0, 0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, 0.25, 0.75, -1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 0.75, 0.0, -0.75, -0.25, -0.5, 0.0, -0.25, ]);
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer400.destroy()
    query400.destroy()
    
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.destroy();
    device10.destroy();
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
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
    
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.pushErrorScope("internal");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_buffer401 = command_encoder401.finish();
    texture600.destroy();
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    query601.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    texture203.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer202.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    buffer401.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder2010.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
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
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query602.destroy()
    
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    render_pass_encoder2000.setStencilReference(1);
    texture401.destroy();
    
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer404, 0);
    query600.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    const command_buffer402 = command_encoder402.finish();
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder4000.end();
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    buffer404.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder400.popDebugGroup()
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture201.destroy();
    
    texture204.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder601.insertDebugMarker("marker");
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    
    query400.destroy()
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    device30.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2010.setStencilReference(1);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture205.destroy();
    
    render_pass_encoder2000.setStencilReference(1);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.submit([command_buffer401, ]);
    query601.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder202.clearBuffer(buffer200);
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer400 = command_encoder400.finish();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    render_pass_encoder2010.popDebugGroup();
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    command_encoder602.insertDebugMarker("mymarker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
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
    render_pass_encoder2000.setStencilReference(1);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
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
    
    device40.queue.submit([command_buffer400, ]);
    
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    buffer200.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    render_pass_encoder2000.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    texture800.destroy();
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    texture202.destroy();
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.popDebugGroup();
    query402.destroy()
    render_pass_encoder2020.beginOcclusionQuery(1)
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    device40.queue.submit([command_buffer402, ]);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    query601.destroy()
    
    
    
    command_encoder601.insertDebugMarker("mymarker");
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder601.insertDebugMarker("mymarker");
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    buffer402.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture206.destroy();
    texture402.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
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
    
    render_pass_encoder2020.setStencilReference(1);
    
    
    
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setStencilReference(1);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group601);
    
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    texture403.destroy();
    render_pass_encoder2020.setStencilReference(1);
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module800,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    
    
    query402.destroy()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    buffer600.destroy()
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder6010.setPipeline(compute_pipeline605);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout605,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout406,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    texture802.destroy();
    
    query601.destroy()
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    device60.queue.writeBuffer(buffer604, 0, array0, 0, array0.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout406,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    device70.destroy();
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout404,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    compute_pass_encoder6020.insertDebugMarker("marker")
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.executeBundles([])
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder6020.popDebugGroup()
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer605, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer605, 0);
    render_pass_encoder2020.endOcclusionQuery()
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline605.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group602);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.dispatchWorkgroups(100);
    compute_pass_encoder6010.end();
    render_pass_encoder2010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group603);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6010, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6010, 0);
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6020.end();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2000.endOcclusionQuery()
    command_encoder602.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer602, ]);
}