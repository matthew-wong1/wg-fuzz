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
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.destroy();
    const array0 = new Float32Array([1.0, -0.5, -0.25, -0.75, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 1.0, 1.0, -0.75, -0.5, 0.5, -0.25, 0.0, -0.5, 0.25, -1.0, -0.75, 0.75, -0.5, 0.0, -1.0, 0.0, -0.25, 1.0, -0.5, -1.0, -0.25, 0.25, 0.0, 0.25, 0.25, 0.5, 1.0, 1.0, 1.0, 1.0, -1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, -1.0, -0.75, -0.25, -0.25, 0.25, -0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 1.0, -0.25, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, 0.25, -0.25, -0.5, 0.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, -0.75, -1.0, 1.0, 1.0, -0.25, 0.5, ]);
    
    const array1 = new Float32Array([-1.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.5, 0.0, -0.25, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 0.5, 1.0, 0.25, 0.0, 0.75, -0.75, 0.0, -0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 0.25, 1.0, -0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, -0.5, 0.5, -0.75, 0.0, 0.5, 0.5, 0.75, 0.0, 1.0, 0.0, -0.5, 0.5, 0.5, 1.0, 0.0, 1.0, -0.75, 0.5, 1.0, -1.0, 0.0, 0.75, 0.5, -1.0, -0.25, 1.0, -1.0, 1.0, -0.5, 0.5, 0.75, 0.75, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, -0.5, -1.0, 0.75, 0.75, -1.0, -0.25, -0.25, -0.25, 0.25, 0.5, -0.5, 1.0, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([0.0, 0.25, -0.75, 0.75, -1.0, 0.75, -1.0, -1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.25, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, -0.25, -0.25, 0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, -1.0, -0.5, 0.5, -0.75, -0.5, 1.0, -0.25, -0.5, -0.5, 0.25, -0.25, 0.0, 0.25, 0.75, 0.5, 0.75, 0.5, -0.75, -0.5, 0.5, 0.75, 1.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 1.0, 0.5, 0.25, 0.25, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, -1.0, 1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -1.0, 0.5, -0.75, 0.5, 1.0, -0.5, -0.75, 0.5, -0.5, 0.25, ]);
    
    const array3 = new Float32Array([0.75, 0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 0.75, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, 0.5, -1.0, 0.5, 0.0, -0.5, -0.5, -0.25, -0.25, -0.75, -0.25, 0.25, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.5, 0.25, 0.25, -1.0, 0.75, 1.0, 0.75, -0.25, 1.0, 0.75, -1.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.25, -0.25, 1.0, -0.5, 0.75, -0.25, 0.0, 0.5, 1.0, -0.5, 0.0, -0.5, -0.75, 0.0, 0.0, 0.5, 0.75, -0.5, -0.75, 1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, ]);
    
    
    const array4 = new Float32Array([-0.75, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, 0.25, -0.5, -0.25, 1.0, -0.25, -0.25, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 1.0, 0.25, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, 0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.75, -1.0, -1.0, 0.75, 0.75, -0.5, -0.25, -0.75, 0.5, -0.5, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, 0.75, 0.75, -0.5, 0.5, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, 0.25, -0.25, -0.5, -0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, ]);
    
    const array5 = new Float32Array([0.5, 0.25, -0.25, 0.25, -0.25, 0.0, 0.0, -0.75, 0.75, -0.5, 0.25, 0.75, -0.75, -0.75, -0.5, 0.25, -0.75, 0.0, -1.0, -0.25, -1.0, 1.0, -0.25, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, 0.5, -0.75, -0.5, 0.5, -1.0, -0.75, 0.25, 0.5, 0.25, 0.75, 0.75, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, -0.25, 0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 1.0, -0.75, -0.5, 1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -0.25, 0.75, -1.0, -1.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.75, -0.5, 0.5, 0.5, -0.75, 0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([-1.0, 0.25, -0.25, 0.25, 0.75, 0.75, 0.0, -0.25, 0.5, 0.25, -1.0, 0.75, -0.25, 0.0, -0.25, 0.75, 0.25, 0.0, 0.75, -0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.5, 0.5, 0.75, -0.25, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 0.25, -0.25, -1.0, -0.75, -0.75, 1.0, 0.75, -1.0, 0.0, -0.5, 1.0, 0.25, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, 1.0, 1.0, 0.75, 1.0, 0.0, 1.0, -0.25, 0.5, 0.0, -0.5, -0.25, 1.0, 1.0, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, -0.5, -0.25, 0.5, 0.75, -1.0, -0.5, -0.5, 1.0, -0.5, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 0.0, 0.5, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.insertDebugMarker("mymarker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer200 = command_encoder200.finish();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array7 = new Float32Array([0.5, 0.5, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, 0.75, -0.75, 0.5, 0.75, 0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, -0.75, 0.5, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, 0.5, 1.0, 1.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.75, -0.25, 1.0, 0.25, -0.25, -1.0, -0.25, -0.5, 0.5, 1.0, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.5, -0.5, -0.25, 1.0, 0.25, -0.25, -0.25, -0.25, -0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.5, -0.5, -1.0, -0.75, 0.0, 1.0, -1.0, -0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 0.25, 0.5, 0.25, 0.25, -0.5, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder3000.popDebugGroup()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
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
    
    const command_buffer202 = command_encoder202.finish();
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array8 = new Float32Array([0.75, 0.75, 0.25, -0.5, -0.25, 0.75, -0.25, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.0, 0.0, -0.25, -0.25, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, -0.5, -0.25, 0.0, 0.75, 0.5, 0.75, -0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.25, -1.0, 0.5, 0.0, -1.0, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, -0.5, -1.0, -1.0, 0.5, 0.0, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, -0.75, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, 0.25, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    query300.destroy()
    device30.pushErrorScope("validation");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
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
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([1.0, 0.0, -0.75, -0.25, 0.5, 0.75, -0.25, -0.5, 0.5, 0.5, -0.5, -0.75, 0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, -1.0, -1.0, -0.5, 0.0, -0.25, 0.25, -1.0, -0.25, -0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.25, 0.75, 0.5, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, -1.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, -0.5, -0.5, -1.0, 0.5, -0.5, 1.0, 0.5, 0.25, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, -0.75, -0.75, ]);
    buffer205.destroy()
    texture300.destroy();
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const array10 = new Float32Array([1.0, 0.5, -0.75, 0.75, 1.0, -1.0, 0.25, 0.5, -1.0, 0.25, 0.25, 1.0, -0.25, 0.25, 0.25, 0.0, 1.0, 0.25, -0.75, 1.0, -0.25, 0.75, 0.75, -0.5, -0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 1.0, 1.0, 0.0, 0.5, 0.5, -0.25, 0.0, -0.75, -0.75, -0.75, 0.5, 0.75, 0.5, -0.5, 0.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 0.75, 1.0, 0.0, 0.75, -1.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, 0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 0.75, 1.0, -0.5, -1.0, -1.0, -1.0, 0.25, 0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    buffer201.destroy()
    buffer204.destroy()
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    buffer203.destroy()
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
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
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([0.25, -0.25, 0.25, 0.0, 0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, -1.0, 0.0, -0.75, -0.5, -1.0, 0.5, 1.0, 0.5, -0.5, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, -0.75, -0.25, -0.5, 0.0, 1.0, 0.75, 0.0, -0.75, -1.0, -0.5, -0.25, -0.75, 0.75, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, -0.25, -0.75, -1.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, -0.25, -1.0, 1.0, 0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 1.0, -0.5, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, 0.75, 0.5, -0.5, 0.5, -1.0, 1.0, 0.0, -0.5, -0.75, -0.5, 1.0, 0.75, 0.25, -1.0, -0.5, 0.25, 0.5, 0.75, -0.75, ]);
    
    
    
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_bundle_encoder300.setPipeline(render_pipeline302);
    query301.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture301.destroy();
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    buffer202.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_buffer203 = command_encoder203.finish();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.setPipeline(compute_pipeline208);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const command_buffer600 = command_encoder600.finish();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    buffer206.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query200.destroy()
    compute_pass_encoder2040.popDebugGroup()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.setPipeline(render_pipeline303);
    buffer301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder302.popDebugGroup();
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    
    query600.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device20.pushErrorScope("validation");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
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
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder501.pushDebugGroup("mygroupmarker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group204);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder2010.popDebugGroup()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.setPipeline(compute_pipeline2021);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture400.destroy();
    compute_pass_encoder2050.insertDebugMarker("marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    texture302.destroy();
    render_bundle_encoder500.popDebugGroup();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer304, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer304, 0);
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([1.0, 1.0, 0.0, -1.0, 0.75, 0.75, 1.0, 0.25, -0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.5, 0.25, -0.25, -0.25, -0.25, -0.5, 0.25, -0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 1.0, 0.25, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.5, 1.0, 0.75, -1.0, -0.75, 0.25, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, 0.0, -0.75, 0.25, -0.5, 0.0, 0.5, 1.0, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, -0.5, -0.25, -0.5, -0.25, 0.0, 0.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.5, 0.0, -0.5, -0.75, -1.0, 0.5, 0.5, -0.75, -0.75, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, ]);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
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
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3010.setPipeline(render_pipeline307);
    
    buffer2010.destroy()
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline2021.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group205);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device20.queue.submit([command_buffer200, ]);
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("internal");
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder501.popDebugGroup()
    buffer200.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query500.destroy()
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
    buffer2015.destroy()
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query501.destroy()
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    buffer2011.destroy()
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2050.dispatchWorkgroups(100);
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array10, 0, array10.length);
    query200.destroy()
    buffer306.destroy()
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
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
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout207,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2017, 0);
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    compute_pass_encoder2050.end();
    compute_pass_encoder2010.end();
    compute_pass_encoder2040.end();
    const command_buffer700 = command_encoder700.finish();
    const command_buffer206 = command_encoder206.finish();
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer204 = command_encoder204.finish();
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer504, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer504, 0);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group502);
    compute_pass_encoder5000.end();
    device60.queue.submit([command_buffer600, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer201, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline307.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder3010.setVertexBuffer(0, buffer301);
    compute_pass_encoder5010.end();
    render_pass_encoder3010.draw(3);
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer507, 0);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device20.queue.submit([command_buffer204, ]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3010.end();
    device20.queue.submit([command_buffer205, ]);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder5020.end();
    device50.queue.submit([command_buffer501, ]);
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer301, ]);
}