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
    const array0 = new Float32Array([0.75, 0.25, -0.25, -1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.25, 0.75, -0.75, 0.5, -0.5, -0.5, -0.25, 0.0, 0.25, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.0, 0.5, -0.75, -1.0, -0.25, 1.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.0, 0.75, -0.75, 0.75, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, 0.5, 1.0, -0.75, -0.75, 0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -0.25, -0.5, -0.75, 0.5, 0.25, -0.5, 0.5, 0.75, -1.0, 0.0, -0.25, -0.5, -1.0, -0.25, 0.75, -1.0, -0.5, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, 0.5, -0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.75, 1.0, 0.0, 0.0, -1.0, -0.5, 0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -1.0, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 0.5, 0.0, -0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -0.5, -0.75, -0.75, 0.0, 0.75, 0.75, 0.5, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 0.5, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, -0.25, -0.25, 0.75, -1.0, 1.0, 1.0, 1.0, 1.0, 0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.5, 0.5, -1.0, 1.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.75, -0.75, 0.5, -0.25, -0.75, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, -1.0, 0.25, 1.0, -0.75, 0.25, ]);
    const array2 = new Float32Array([0.25, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, -1.0, 0.25, -0.25, 1.0, -0.5, -0.75, 0.0, -0.75, -0.25, 0.25, 0.5, -0.25, -1.0, -0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.75, 0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, 0.75, 1.0, -0.25, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, -0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 0.0, -0.5, -0.5, -0.25, 0.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, -1.0, -1.0, -0.25, -0.25, 0.75, -0.75, -0.75, ]);
    
    
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
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
    device10.destroy();
    
    
    const array3 = new Float32Array([0.25, -0.25, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.5, -0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.75, -0.25, 1.0, 0.75, 1.0, -0.25, -0.25, -1.0, 0.25, 0.75, 0.0, 0.5, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.75, 0.25, -0.75, 0.5, 0.75, 0.5, 0.5, -0.5, -0.75, 0.0, 0.25, 0.0, -0.75, 1.0, 0.5, 0.5, -0.5, -0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -0.75, -0.5, 0.75, 1.0, -1.0, -0.25, -0.75, 0.25, -1.0, 0.25, -0.5, -1.0, 1.0, -1.0, -0.5, 0.0, -1.0, -0.25, 0.5, 0.0, -0.25, 0.0, -0.75, -0.5, 1.0, 0.25, -1.0, 0.25, ]);
    const array4 = new Float32Array([-0.25, -0.25, -1.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 0.5, 0.25, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 1.0, 0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.75, 0.5, -0.5, 1.0, 1.0, -0.75, -0.25, 1.0, 0.75, 0.75, 0.75, -0.75, -0.25, 0.25, -1.0, -0.25, 1.0, -1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 0.25, 1.0, -0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.0, -0.75, 0.25, 0.5, 0.25, 0.75, 0.0, -0.5, 0.75, 0.5, 0.5, 0.25, 0.0, -1.0, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, -1.0, -0.75, -1.0, -0.25, -0.75, -0.25, 0.5, -0.25, 0.75, 1.0, ]);
    const array5 = new Float32Array([-1.0, 0.25, 0.25, -0.75, 0.5, -1.0, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 0.75, -0.75, -1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.0, 0.0, -0.25, 0.25, -1.0, 0.0, 0.25, -1.0, 1.0, -1.0, 0.75, 0.5, 0.75, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.0, 1.0, -0.25, 1.0, -1.0, 0.25, 1.0, 0.0, 1.0, 0.5, 0.25, -0.75, -0.5, -0.75, 0.5, 0.25, 0.25, 0.75, 0.25, 0.0, 1.0, -1.0, -0.5, 0.5, 0.25, 0.75, ]);
    
    
    
    
    
    const array6 = new Float32Array([-0.25, -0.5, -0.5, -0.75, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, 1.0, 1.0, -0.5, -0.25, -1.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.25, -0.75, 0.0, -0.75, 0.5, -0.75, -0.75, 0.5, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, -0.25, -0.5, -0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.0, -0.75, 0.5, 0.75, -0.5, 0.25, -1.0, 0.0, 0.75, 0.75, -0.25, -0.25, 0.0, 1.0, -0.25, 0.0, 0.0, -1.0, -0.5, 0.25, -0.75, -0.5, 1.0, 0.5, 0.0, -0.75, -0.75, 0.5, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device00.destroy();
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer300.destroy()
    
    
    
    query201.destroy()
    
    
    
    
    query201.destroy()
    
    device20.pushErrorScope("internal");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    const command_buffer300 = command_encoder300.finish();
    command_encoder301.pushDebugGroup("mygroupmarker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device30.pushErrorScope("out-of-memory");
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder301.popDebugGroup()
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    const array7 = new Float32Array([-0.25, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 0.25, 0.75, 0.25, 0.0, 1.0, -1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 0.25, -0.25, 0.25, 0.75, 0.5, -0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 0.25, -0.75, -0.75, -0.25, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, -0.75, 0.25, -0.5, 1.0, -0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, 0.5, -0.75, -1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, -1.0, -0.5, 0.0, -1.0, 0.25, 1.0, -0.75, 0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 0.75, 0.5, -0.25, -0.5, 1.0, -0.75, 1.0, -0.25, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    device50.pushErrorScope("out-of-memory");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query200.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query300.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
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
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    buffer200.destroy()
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder300.setPipeline(render_pipeline301);
    
    const array8 = new Float32Array([-0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, -0.5, -0.75, -0.25, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.75, 0.25, 0.25, 0.0, -1.0, -0.5, -0.5, 1.0, -0.5, 0.0, 0.75, 0.25, 0.25, -0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 1.0, -0.25, 0.0, 0.5, 0.75, 1.0, 0.5, 0.5, -0.5, 0.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, 1.0, 0.25, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.75, 1.0, -0.75, -0.25, -1.0, ]);
    
    command_encoder400.insertDebugMarker("mymarker");
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_buffer500 = command_encoder500.finish();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
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
    
    device20.pushErrorScope("validation");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.popDebugGroup()
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([-0.75, 1.0, 0.0, -0.25, 0.25, -0.25, 0.5, -1.0, -0.25, -0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 0.5, -0.5, 1.0, -1.0, -0.25, -1.0, 0.75, 0.25, -1.0, 0.0, 1.0, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, -0.75, 0.75, 0.75, -0.75, 0.0, -0.5, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, 0.75, -0.5, -0.75, -0.25, 0.5, -0.25, -1.0, -0.75, 0.0, 0.0, 0.0, 0.75, 0.25, -1.0, 0.5, 0.0, -1.0, -0.25, 0.5, 0.75, -0.25, 1.0, 0.0, -1.0, 1.0, 1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 1.0, 0.0, -0.25, 0.25, 1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.0, 0.75, 0.75, 0.0, 0.5, ]);
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.pushErrorScope("internal");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const command_buffer302 = command_encoder302.finish();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer301.destroy()
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_buffer501 = command_encoder501.finish();
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
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
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query201.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    command_encoder400.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder502.setPipeline(render_pipeline502);
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    command_encoder301.popDebugGroup()
    
    command_encoder402.popDebugGroup()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group501);
    command_encoder400.popDebugGroup()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    command_encoder502.pushDebugGroup("mygroupmarker")
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    buffer504.destroy()
    device40.pushErrorScope("internal");
    
    command_encoder502.popDebugGroup()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.submit([command_buffer500, ]);
    
    device30.pushErrorScope("internal");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer400 = command_encoder400.finish();
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    const command_buffer304 = command_encoder304.finish();
    
    query400.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
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
    
    
    command_encoder401.insertDebugMarker("mymarker");
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    command_encoder402.clearBuffer(buffer401);
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    buffer201.destroy()
    command_encoder502.insertDebugMarker("mymarker");
    
    
    query204.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder301.insertDebugMarker("mymarker");
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer306,
        0
    )
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_buffer301 = command_encoder301.finish();
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    buffer502.destroy()
    buffer304.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    query203.destroy()
    command_encoder503.popDebugGroup()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder500.setBindGroup(0, bind_group502);
    buffer400.destroy()
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer306,
        0
    )
    
    
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    const command_buffer502 = command_encoder502.finish();
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
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
    
    command_encoder305.clearBuffer(buffer302);
    command_encoder201.popDebugGroup()
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer506.destroy()
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    command_encoder503.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.setPipeline(render_pipeline401);
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
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer306,
        0
    )
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    buffer303.destroy()
    
    
    command_encoder200.popDebugGroup()
    
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    query401.destroy()
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const command_buffer402 = command_encoder402.finish();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
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
    
    
    
    command_encoder303.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    query301.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    buffer307.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query204.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer503.destroy()
    query201.destroy()
    
    command_encoder303.insertDebugMarker("mymarker");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    command_encoder303.clearBuffer(buffer302);
    
    query302.destroy()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    command_encoder503.insertDebugMarker("mymarker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer306,
        0
    )
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.submit([command_buffer402, ]);
    
    query401.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder503.popDebugGroup()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query501.destroy()
    query501.destroy()
    const command_buffer305 = command_encoder305.finish();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query304.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer305, ]);
    const command_buffer503 = command_encoder503.finish();
    const command_buffer200 = command_encoder200.finish();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer303 = command_encoder303.finish();
    device20.queue.submit([command_buffer200, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer301, command_buffer304, ]);
    device50.queue.submit([command_buffer503, ]);
    command_encoder401.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer401 = command_encoder401.finish();
    device30.queue.submit([command_buffer303, ]);
    command_encoder201.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
}