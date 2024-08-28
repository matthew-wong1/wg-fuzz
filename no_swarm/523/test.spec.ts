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
        powerPreference: "high-performance"
    });
    
    
    
    const array0 = new Float32Array([0.75, 0.25, 0.0, 0.25, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, 0.0, 0.0, -1.0, -1.0, 0.5, 0.0, 0.0, 0.25, 0.25, -0.75, -1.0, -0.75, 1.0, -0.5, 0.0, 1.0, -1.0, -0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.5, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 1.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, 0.25, 0.75, -0.75, 0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.5, -1.0, 0.25, -0.75, -0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -0.75, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -0.5, -0.5, 1.0, 0.75, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.5, -0.25, -0.5, -0.25, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, 0.0, 1.0, 0.0, 0.0, -0.75, 0.0, -0.75, -0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, -0.5, -0.5, -1.0, 0.75, 0.25, -1.0, 0.75, 0.0, 1.0, 1.0, 1.0, 1.0, -0.75, 0.25, -1.0, -0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 0.25, -1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.0, -1.0, 1.0, -0.75, 1.0, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 1.0, -0.25, -0.75, 1.0, 0.75, 0.25, 1.0, -0.5, 0.5, 0.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    const array2 = new Float32Array([0.75, 0.75, 0.25, 0.75, -1.0, 0.75, 0.75, 0.5, -0.5, -0.5, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, 1.0, -0.25, -0.25, 1.0, 1.0, 0.75, 0.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.75, -0.25, 0.0, -0.75, -0.75, 0.25, 1.0, 0.25, 0.0, 0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.5, -1.0, 1.0, 0.0, 0.25, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, 0.75, 0.25, -1.0, 0.25, -0.25, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 1.0, -1.0, -1.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.0, 0.25, 0.25, 0.0, 0.75, -1.0, 0.0, 0.75, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, 0.25, -1.0, 0.5, -0.75, 0.0, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, 0.0, ]);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array3 = new Float32Array([0.5, -0.5, 0.25, 0.0, 0.25, -0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, -0.5, 1.0, 0.25, -0.5, -0.25, 1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, 0.5, -0.25, 0.75, 0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 1.0, -1.0, 0.75, -0.75, 0.5, 0.75, 0.5, -0.5, -0.5, 1.0, 1.0, 0.25, -1.0, -0.5, -0.5, -0.75, 0.0, 1.0, -0.75, 1.0, -0.5, 0.75, 1.0, 0.75, 0.75, -1.0, 0.0, 0.75, -1.0, 0.0, -0.75, 0.75, 1.0, -0.75, 0.25, 1.0, -0.25, 0.75, -0.25, 0.0, 0.5, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const array4 = new Float32Array([-0.25, -0.75, -1.0, -0.5, -1.0, 0.5, 1.0, -1.0, 0.0, -0.5, -0.5, -0.75, -0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.25, 0.75, 0.0, -0.25, 1.0, -0.25, 1.0, 0.0, 0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 1.0, 0.75, -0.5, -0.5, 0.25, 0.5, -0.75, -0.75, -1.0, -0.75, 0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, 1.0, 0.5, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, 0.25, 1.0, -1.0, -0.25, -0.5, -0.75, -0.25, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, 0.5, -0.5, -0.5, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, -0.5, -0.5, 0.5, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 0.25, -0.25, 0.75, -0.5, 0.25, ]);
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
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    
    query500.destroy()
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture501.destroy();
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    query500.destroy()
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder5000.executeBundles([])
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder5000.executeBundles([])
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    
    render_pass_encoder5000.setPipeline(render_pipeline500);
    
    render_pass_encoder5000.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    
    
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.destroy();
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    buffer504.destroy()
    render_pass_encoder5000.setStencilReference(1);
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("out-of-memory");
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture504 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array5 = new Float32Array([0.5, -0.25, 0.0, 0.25, 0.25, 1.0, 0.25, 0.25, -1.0, -0.75, -1.0, -0.25, -1.0, -1.0, 0.0, 0.25, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, -0.75, -1.0, -1.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.5, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -0.5, -0.5, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, -0.25, -0.5, -0.25, 0.75, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 0.25, 0.25, -1.0, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, -0.25, 0.75, -0.75, ]);
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    device50.queue.writeTexture({ texture: texture504 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5000.setVertexBuffer(0, buffer500);
    const texture_view5032 = texture503.createView({ label: "texture_view5032" });
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    query500.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5060 = texture506.createView({ label: "texture_view5060" });
    device50.queue.writeTexture({ texture: texture503 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    device50.queue.writeTexture({ texture: texture504 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, 0.75, -1.0, -0.5, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, 0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 0.25, 0.5, 0.5, 0.0, -0.75, 1.0, -0.25, 0.5, 0.25, -1.0, 0.0, -0.25, 0.25, 0.5, -0.5, -0.5, 0.5, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, 0.0, 0.0, 0.0, 0.0, -0.75, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, 0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -0.25, 1.0, -0.75, -0.25, 0.25, -0.25, -1.0, 1.0, -0.25, 0.0, 0.5, ]);
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture503.destroy();
    texture506.destroy();
    device50.queue.writeTexture({ texture: texture504 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture504 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture504 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
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
    
    query500.destroy()
    buffer505.destroy()
    
    buffer502.destroy()
    
    const query601 = device60.createQuerySet({
        label: "query601",
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
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const texture_view5042 = texture504.createView({ label: "texture_view5042" });
    device50.queue.writeTexture({ texture: texture504 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device50.queue.writeTexture({ texture: texture504 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture504 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder5000.draw(3);
    
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    render_bundle_encoder600.popDebugGroup();
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device50.queue.writeTexture({ texture: texture504 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query601.destroy()
    query500.destroy()
    device70.destroy();
    device50.queue.writeTexture({ texture: texture504 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.popDebugGroup();
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture505.destroy();
    
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    texture601.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.setPipeline(render_pipeline505);
    device50.queue.writeTexture({ texture: texture504 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.setPipeline(render_pipeline502);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query500.destroy()
    texture600.destroy();
    texture502.destroy();
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder5000.end();
    device50.queue.writeTexture({ texture: texture504 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_pass_encoder5001 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: query501
    });
    query500.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture504.destroy();
    
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
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query601.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    render_pass_encoder6010.setStencilReference(1);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder6010.executeBundles([])
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    buffer600.destroy()
    const array7 = new Float32Array([0.75, -0.5, 0.75, 0.75, -0.75, 1.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.0, 1.0, 1.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.75, 0.0, 0.25, 0.5, 1.0, 0.0, 0.25, 0.5, 0.75, -0.5, 0.0, -0.25, 0.25, -0.25, -0.75, -0.75, -0.5, -0.75, 0.5, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, -1.0, 0.25, 0.0, -0.75, 0.5, 0.0, -0.5, 0.5, 0.75, 0.5, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, 0.25, 1.0, 0.0, 1.0, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 1.0, -0.25, -0.25, 0.5, 0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.0, -0.25, -0.5, ]);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    render_pass_encoder6010.setStencilReference(1);
    query600.destroy()
    const texture_view5070 = texture507.createView({ label: "texture_view5070" });
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_pass_encoder5001.setPipeline(render_pipeline506);
    buffer503.destroy()
    render_pass_encoder5001.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_pass_encoder6010.pushDebugGroup("group_marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    query600.destroy()
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device80.pushErrorScope("validation");
    device50.pushErrorScope("internal");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder600.setPipeline(render_pipeline602);
    
    
    render_bundle_encoder502.setPipeline(render_pipeline505);
    command_encoder602.pushDebugGroup("mygroupmarker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_pass_encoder5001.setStencilReference(1);
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
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device60.pushErrorScope("validation");
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6020.executeBundles([])
    query602.destroy()
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    render_pass_encoder6010.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    query600.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32sint",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query602.destroy()
    render_pass_encoder6010.popDebugGroup();
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder5001.setStencilReference(1);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_pass_encoder5001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query602
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    query602.destroy()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline505.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group502);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    query500.destroy()
    buffer5010.destroy()
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    render_pass_encoder5001.setStencilReference(1);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline506.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5001.setBindGroup(0, bind_group503);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_pass_encoder6020.setPipeline(render_pipeline601);
    render_pass_encoder6030.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query602
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    buffer5012.destroy()
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    
    compute_pass_encoder6000.setPipeline(compute_pipeline602);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    query601.destroy()
    render_pass_encoder6040.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6010.setStencilReference(1);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    buffer509.destroy()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5031,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5001.pushDebugGroup("group_marker");
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder5010.setPipeline(render_pipeline500);
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6040.pushDebugGroup("group_marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder501.setVertexBuffer(0, buffer5013);
    
    render_pass_encoder6040.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    texture800.destroy();
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder6030.pushDebugGroup("group_marker");
    query602.destroy()
    
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.setIndexBuffer(buffer505, "uint16");
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
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
    render_bundle_encoder500.setVertexBuffer(0, buffer5013);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
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
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group600);
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    
    query603.destroy()
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    render_pass_encoder6030.popDebugGroup();
    buffer602.destroy()
    query600.destroy()
    
    render_pass_encoder6030.insertDebugMarker("marker");
    render_pass_encoder5010.insertDebugMarker("marker");
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.setIndexBuffer(buffer505, "uint16");
    query603.destroy()
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.setIndexBuffer(buffer505, "uint16");
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder500.drawIndirect(buffer506, 0);
    buffer800.destroy()
    
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5001.popDebugGroup();
    render_pass_encoder5001.setVertexBuffer(0, buffer5013);
    render_pass_encoder6040.setPipeline(render_pipeline601);
    render_pass_encoder6030.setPipeline(render_pipeline602);
    render_pass_encoder6010.setPipeline(render_pipeline602);
    render_pass_encoder5001.draw(3);
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group504);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group602);
    render_pass_encoder5010.setVertexBuffer(0, buffer5013);
    render_pass_encoder5010.draw(3);
    render_pass_encoder6040.popDebugGroup();
    compute_pass_encoder6000.popDebugGroup()
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group603);
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group604);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    render_pass_encoder5010.end();
    render_pass_encoder6030.setVertexBuffer(0, buffer601);
    compute_pass_encoder6000.end();
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group605);
    render_pass_encoder5001.end();
    const command_buffer600 = command_encoder600.finish();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder6010.setVertexBuffer(0, buffer601);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6010.draw(3);
    render_pass_encoder6010.end();
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group606);
    render_pass_encoder6040.setVertexBuffer(0, buffer601);
    const command_buffer501 = command_encoder501.finish();
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder6020.setVertexBuffer(0, buffer601);
    render_pass_encoder6040.draw(3);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer501, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder6030.draw(3);
    render_pass_encoder6020.draw(3);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder6030.end();
    render_pass_encoder6020.end();
    render_pass_encoder6040.end();
    command_encoder602.popDebugGroup()
    const command_buffer603 = command_encoder603.finish();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer604 = command_encoder604.finish();
}