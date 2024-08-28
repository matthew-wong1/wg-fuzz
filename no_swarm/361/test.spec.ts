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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.75, -0.75, 0.75, 0.75, -1.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 0.0, 0.75, -0.75, 0.0, 0.25, 0.0, 1.0, -1.0, -0.75, 0.0, 0.25, 0.75, -0.5, 1.0, 0.25, -1.0, -0.5, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, 0.75, 0.5, 0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.0, 0.0, -1.0, 0.5, -1.0, -0.25, -0.5, 0.5, -1.0, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, 1.0, -0.25, -1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 0.25, 0.75, -0.25, -1.0, 0.5, -1.0, 0.75, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, -0.75, 0.75, -0.25, -0.5, -0.75, 0.75, -0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    query100.destroy()
    const array1 = new Float32Array([0.25, -0.5, 0.25, -0.25, 0.75, 0.0, -0.5, 0.25, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -0.25, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, -0.5, 0.5, 0.25, -0.75, -1.0, 1.0, 0.75, -0.5, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, 0.25, -0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 0.5, -1.0, 0.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 1.0, 0.5, 0.25, 1.0, -0.5, -0.25, -0.25, 1.0, -0.75, 0.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.5, 0.75, 1.0, 0.5, 0.25, -0.25, 0.5, 0.0, 0.5, 1.0, 0.75, -0.25, -0.5, ]);
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture100.destroy();
    device10.destroy();
    const array2 = new Float32Array([-1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.25, 0.5, -0.25, -1.0, 0.25, 0.5, 1.0, 0.0, -0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, -1.0, -1.0, 0.5, -1.0, 1.0, -0.25, 0.5, -1.0, -1.0, 0.75, -0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 0.25, -0.75, -0.5, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.75, 0.5, -0.75, -1.0, 0.75, -0.75, 0.75, -1.0, 0.5, -1.0, 0.0, 0.0, -0.75, -0.75, -0.75, 0.75, 0.5, -0.25, 0.25, 0.25, -0.25, 0.75, -0.25, 0.75, 0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, 0.0, -0.25, 0.75, -0.5, 1.0, -0.25, -1.0, 0.25, 1.0, ]);
    const array3 = new Float32Array([0.5, 1.0, 0.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, 0.75, -0.75, 0.25, -0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.0, 0.0, -1.0, 0.5, -0.25, 0.75, 0.5, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, -0.25, 1.0, 0.25, -1.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.75, -1.0, 0.25, 0.5, 0.25, -0.5, -0.25, -1.0, -0.75, 0.75, -1.0, -0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 1.0, 0.0, -0.5, 1.0, 0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 0.5, -0.5, 0.25, 1.0, 0.25, 0.5, -1.0, -0.5, -1.0, 0.5, 0.5, ]);
    const array4 = new Float32Array([-0.25, 1.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.75, 0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, 0.75, -0.75, -0.75, -0.75, -0.75, -1.0, 1.0, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, -0.5, 0.5, 0.75, -0.5, 1.0, -0.25, -0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -1.0, 1.0, 0.5, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.5, -0.25, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, 0.0, 0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.5, -1.0, -0.5, 0.75, 0.5, -0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer200.destroy()
    
    
    
    const array5 = new Float32Array([0.75, -0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 1.0, -0.25, 0.5, 0.25, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, -0.25, -0.25, -0.5, -0.75, -1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 0.0, 0.75, 0.5, -0.25, 0.0, 0.0, 0.5, -1.0, -1.0, -1.0, -0.5, -0.75, 0.75, -0.5, -0.5, 0.0, -1.0, -1.0, -0.25, 0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 0.25, -0.25, -0.5, -0.75, -0.5, -0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 0.25, -0.75, 0.75, 0.0, 0.25, 0.5, -0.25, 0.75, -0.5, -0.5, 0.0, 0.5, 0.75, -0.25, -0.5, 1.0, 0.75, -1.0, -0.75, 0.0, -1.0, -0.25, -0.25, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array6 = new Float32Array([0.0, -1.0, 0.5, 1.0, -0.75, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, -0.5, 0.75, -0.75, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, 0.0, 0.75, -1.0, 0.5, -0.5, 0.25, -0.25, -0.75, 0.5, 0.75, 1.0, -1.0, -1.0, -0.75, -0.25, -0.75, 0.25, 1.0, -1.0, -1.0, -0.25, 0.75, 0.75, 1.0, -0.25, -1.0, -0.75, -0.75, 0.5, -0.25, -0.75, -0.75, 0.75, 0.0, -1.0, 1.0, -1.0, -0.75, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 0.25, 1.0, 0.0, 0.0, -0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.25, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 0.75, -0.75, -1.0, -1.0, 0.0, -0.25, -0.25, -0.5, 1.0, ]);
    
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-1.0, 0.5, 0.25, 1.0, 0.5, -1.0, -1.0, -0.75, -0.25, 0.25, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.5, 0.0, 0.5, -0.75, 1.0, -0.75, -0.5, 1.0, 0.25, 0.5, -1.0, 1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.75, -0.5, 0.0, -0.75, -0.5, -0.25, -0.25, -0.5, 0.0, 0.0, -0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -0.25, -1.0, -0.75, -0.75, -1.0, 0.75, 0.75, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.25, -0.5, 0.25, -0.5, 0.25, -1.0, 0.0, -1.0, -0.75, -1.0, 0.25, 0.25, -0.75, 1.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, -0.5, ]);
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture200.destroy();
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const array8 = new Float32Array([-0.75, -0.25, 1.0, 0.75, 0.25, 1.0, -0.25, 1.0, 1.0, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.25, -0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 1.0, -0.25, -0.75, 0.25, -0.25, 0.5, 0.5, 0.25, -0.25, 1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, 0.5, 0.25, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, -0.75, 0.5, -1.0, 0.75, -0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.0, -0.5, 1.0, 1.0, 0.75, 0.25, 0.75, -1.0, 0.25, 1.0, -0.75, -0.5, -0.5, 1.0, 0.5, 0.75, ]);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer200 = command_encoder200.finish();
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
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    
    const array9 = new Float32Array([0.75, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, 0.0, -1.0, -0.75, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, 0.0, 0.25, -1.0, 1.0, 0.75, -0.25, -0.25, 0.25, 0.75, 1.0, -1.0, 0.0, 0.25, 1.0, -0.5, 0.75, 0.25, 0.0, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 0.0, -1.0, 0.5, -0.75, 0.75, -1.0, 1.0, 0.0, -1.0, -0.25, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device30.destroy();
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device20.pushErrorScope("internal");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    device50.destroy();
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder200.popDebugGroup();
    buffer202.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    
    
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
    query400.destroy()
    
    
    query201.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([1.0, 0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -0.5, -0.5, -1.0, -0.25, -0.5, -0.75, 0.5, 1.0, -0.5, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, -1.0, 0.0, 0.0, -0.75, -0.75, -0.75, 0.5, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, -0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, 1.0, 0.75, 0.0, -0.5, 0.75, -0.75, 0.25, 1.0, 0.5, 0.5, 0.5, 0.75, -1.0, -0.5, 1.0, -1.0, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, -0.75, 0.0, -0.75, 0.0, 0.5, -1.0, 0.25, -1.0, 1.0, 0.75, -0.25, -1.0, 0.75, ]);
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    buffer600.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer203.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
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
    
    
    query400.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.pushErrorScope("internal");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device40.destroy();
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture600.destroy();
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture601.destroy();
    buffer204.destroy()
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
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
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer205.destroy()
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array11 = new Float32Array([-0.5, -0.25, 0.0, -0.25, 0.25, -1.0, -0.25, -1.0, 1.0, 0.25, 0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.25, -1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.0, 1.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.0, -1.0, -1.0, 1.0, 0.75, -0.75, -1.0, 1.0, 1.0, -1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, -0.75, -0.25, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, 0.0, -1.0, 0.5, 0.75, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.0, 0.25, 0.75, 0.5, 0.25, -0.25, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, 0.5, -1.0, 0.75, 0.75, 0.5, 0.25, ]);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query200.destroy()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const command_buffer600 = command_encoder600.finish();
    
    query206.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    query201.destroy()
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    query200.destroy()
    buffer207.destroy()
    query200.destroy()
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
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
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query202.destroy()
    query600.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
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
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    query201.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder201.clearBuffer(buffer201);
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    query207.destroy()
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
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
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    query601.destroy()
    
    command_encoder201.clearBuffer(buffer201);
    
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query601.destroy()
    command_encoder201.clearBuffer(buffer201);
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array11, 0, array11.length);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    device60.queue.writeTexture({ texture: texture602 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query203.destroy()
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeTexture({ texture: texture602 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query601.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    query203.destroy()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("internal");
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    device60.queue.writeTexture({ texture: texture602 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder202.copyBufferToBuffer(
        buffer209,
        0,
        buffer201,
        0,
        400
    );
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_buffer202 = command_encoder202.finish();
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline2018);
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer209.destroy()
    render_bundle_encoder602.popDebugGroup();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture602 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer602.destroy()
    
    render_bundle_encoder601.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer603.destroy()
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
    device60.queue.writeTexture({ texture: texture602 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device70.destroy();
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
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer604, 0, array4, 0, array4.length);
    buffer208.destroy()
    command_encoder601.insertDebugMarker("mymarker");
    device60.queue.writeTexture({ texture: texture602 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer604, 0, array3, 0, array3.length);
    compute_pass_encoder2010.popDebugGroup()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline2018.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer601 = command_encoder601.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.end();
    const command_buffer203 = command_encoder203.finish();
    const command_buffer201 = command_encoder201.finish();
    device60.queue.submit([command_buffer601, ]);
}