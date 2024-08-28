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
    
    const array0 = new Float32Array([1.0, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, 0.0, 0.0, -1.0, 0.5, 1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -0.75, 0.5, 0.75, 1.0, -0.75, -0.5, 0.75, 0.75, 0.25, 0.75, -0.5, -0.75, -0.5, -0.75, -0.25, -0.25, 1.0, -1.0, -0.75, 0.75, 0.5, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, 1.0, -0.25, -0.5, -1.0, 0.25, -0.75, 1.0, -0.25, 0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 0.0, 0.75, -0.75, -0.5, 0.5, -0.75, -0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -0.25, -0.75, 1.0, -1.0, -0.5, 0.25, 0.5, 0.25, 0.25, -0.5, -0.75, -0.75, -0.75, 0.25, -0.75, 0.0, 0.0, 0.75, 0.0, 0.25, 0.75, 0.75, 0.5, ]);
    const array1 = new Float32Array([-0.75, 0.75, 0.25, -0.75, 1.0, -0.75, 0.75, -0.75, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 1.0, 1.0, 0.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.75, -0.75, 0.25, -0.25, -0.75, 0.75, 0.25, -1.0, -0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, -0.25, 1.0, -1.0, -0.25, -0.5, 0.5, 0.25, -0.25, 0.0, -0.25, -1.0, -0.25, -1.0, -0.5, -1.0, 0.0, -0.5, -1.0, -0.5, 0.0, 1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 0.0, 1.0, 0.25, 0.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.0, 0.5, 0.0, 0.0, -0.75, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array2 = new Float32Array([-0.5, 0.0, -0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 1.0, 0.5, 1.0, 0.75, -0.5, 0.0, -1.0, -0.25, -0.5, 1.0, 1.0, 0.0, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, 0.75, -0.75, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, 0.5, -1.0, -0.5, 0.0, -1.0, -0.5, 1.0, 1.0, -0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, 0.0, 0.75, -0.5, -0.75, 0.0, 0.25, 0.5, 0.0, 0.5, 0.25, 0.75, -0.5, 1.0, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 0.25, -0.25, 0.5, -0.25, 0.5, 0.25, 0.25, 0.75, -0.25, 0.25, 0.5, -1.0, -0.5, 0.25, -0.25, 0.5, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.pushErrorScope("validation");
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
    
    const array3 = new Float32Array([0.0, 0.0, 0.25, 0.75, 0.25, 0.0, -1.0, 0.5, -0.5, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.5, 0.5, -1.0, 0.75, 0.5, 0.0, -0.5, 1.0, -1.0, -0.25, 0.75, -0.25, -0.25, -0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.25, 1.0, -0.25, 0.75, -0.25, 0.25, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, 0.75, 0.25, 1.0, -0.5, -0.75, -0.25, 1.0, 0.5, 0.5, 1.0, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, 0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.5, 0.5, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.25, 0.25, 0.25, 0.25, 0.5, 0.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query000.destroy()
    
    device00.destroy();
    const array4 = new Float32Array([-1.0, 1.0, 0.5, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, -0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.25, -0.5, 0.25, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.75, -1.0, 1.0, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, 1.0, 0.25, 0.75, 0.25, -0.5, 1.0, 1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.25, -0.75, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, -0.75, -0.75, -0.25, -0.5, 0.75, ]);
    
    
    
    
    const array5 = new Float32Array([1.0, -0.75, 0.0, 0.25, 0.75, -1.0, 0.5, 0.25, -0.75, -1.0, 1.0, 1.0, 0.0, -1.0, -0.75, 0.25, 0.75, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.0, 0.0, -1.0, -0.5, -1.0, 0.25, 0.25, 1.0, 0.5, 0.5, 0.75, 0.5, -0.5, 0.75, -0.25, 0.25, -0.5, -1.0, -1.0, -0.75, -0.25, 0.0, 0.25, -1.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.5, 0.75, 0.25, 1.0, -0.25, 1.0, -1.0, -0.75, 1.0, 1.0, -0.5, 0.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.0, -1.0, 0.25, -0.75, -0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 0.5, -0.75, -0.75, 0.0, 0.0, -0.25, -1.0, 0.25, 0.5, 0.25, -0.5, -0.25, -0.5, 1.0, -0.25, 0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array6 = new Float32Array([0.5, 1.0, 1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.25, 1.0, 0.25, 0.25, 0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.5, -1.0, 0.75, -0.5, -0.25, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 0.75, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 1.0, 0.75, 1.0, -0.5, 0.5, 0.0, -0.75, -0.75, -0.25, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, 1.0, 0.25, -1.0, 0.25, 1.0, 0.0, -1.0, 0.75, -1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.25, -0.5, 1.0, 0.0, 0.5, -0.5, 0.25, 0.25, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("validation");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device30.pushErrorScope("internal");
    query300.destroy()
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    texture300.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder202.insertDebugMarker("mymarker");
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder300.insertDebugMarker("mymarker");
    query300.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer201.destroy()
    command_encoder200.popDebugGroup()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    query201.destroy()
    const command_buffer203 = command_encoder203.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array7 = new Float32Array([-0.75, 1.0, 0.25, 1.0, -0.5, 0.5, 1.0, -0.5, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, -0.25, 0.5, -1.0, -1.0, 0.5, -0.5, -1.0, -0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 1.0, -1.0, 1.0, 1.0, 0.75, -0.5, -0.75, 1.0, 0.0, 0.25, 0.0, 1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, 0.5, 0.25, 0.5, -0.5, 0.5, 0.25, 0.5, -0.25, 0.0, -0.25, 1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.25, -0.5, -0.75, 0.0, 0.25, 0.5, -0.75, 0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 1.0, -0.75, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, -0.5, 0.25, -0.75, -0.5, 0.25, -0.75, -0.25, -1.0, -0.75, -0.75, -0.25, ]);
    query200.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query300.destroy()
    query200.destroy()
    
    
    
    
    
    command_encoder202.popDebugGroup()
    
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const array8 = new Float32Array([0.25, -1.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.75, 0.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, 0.5, 0.0, 0.75, -1.0, -0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, 0.75, 0.0, 0.75, 1.0, 0.0, 0.5, 0.25, 0.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 0.25, -1.0, -1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 0.25, -0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, -1.0, 0.0, -0.5, 0.25, 0.75, -0.5, -0.75, 0.25, 0.25, -0.25, -1.0, 0.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.5, 1.0, 0.75, 0.0, 0.5, ]);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder300.popDebugGroup();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const array9 = new Float32Array([-0.5, -0.5, -0.25, 0.0, 0.0, 1.0, 0.5, 0.5, 0.75, -0.75, -0.5, 0.25, -0.75, -0.25, -1.0, 0.0, 0.5, 0.5, 0.75, -0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, -0.5, -0.5, -0.25, 0.5, 0.0, -0.75, 0.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, -0.5, 0.75, -0.25, 1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -0.5, 0.0, 0.0, 0.5, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, -0.25, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, 0.75, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 1.0, -0.5, -0.25, -0.25, 0.25, 0.0, 0.0, ]);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    query301.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.submit([command_buffer203, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    buffer203.destroy()
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    compute_pass_encoder2020.setPipeline(compute_pipeline202);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder200.insertDebugMarker("marker");
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
    query202.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    command_encoder301.insertDebugMarker("mymarker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    buffer207.destroy()
    
    compute_pass_encoder2050.setPipeline(compute_pipeline202);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer208, 0);
    buffer206.destroy()
    device20.queue.writeBuffer(buffer208, 0, array4, 0, array4.length);
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    query301.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
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
    query302.destroy()
    query300.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    buffer208.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer301.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    command_encoder206.pushDebugGroup("mygroupmarker")
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    query301.destroy()
    
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    query301.destroy()
    query302.destroy()
    
    const array10 = new Float32Array([0.5, 0.5, -1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 0.5, -0.75, -0.5, -1.0, -0.25, 0.25, -1.0, -0.25, -0.5, 0.75, -0.25, -1.0, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, 0.75, -1.0, 0.25, -1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.75, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.25, -0.5, 0.5, -1.0, -0.25, 1.0, 0.0, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, 0.25, 0.75, 0.0, 1.0, 1.0, -0.25, 0.25, 1.0, 0.25, -0.25, 0.5, -1.0, -0.75, -0.5, 0.5, 0.25, 0.5, 0.0, 0.75, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, 1.0, -0.75, 1.0, 1.0, 0.25, 0.0, -1.0, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 1.0, 0.5, ]);
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    query203.destroy()
    render_bundle_encoder300.setVertexBuffer(0, buffer303);
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query303.destroy()
    query203.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    
    query302.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    compute_pass_encoder2040.insertDebugMarker("marker")
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.setPipeline(compute_pipeline207);
    
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer204.destroy()
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([-0.5, -0.25, -1.0, -1.0, -1.0, 0.0, 0.0, -0.75, 1.0, 0.25, -0.25, 0.0, -1.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.5, -0.75, 0.5, -0.75, 0.75, 0.25, 1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.25, 0.0, -1.0, 0.0, 0.0, 0.75, 0.5, -0.25, 0.5, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, 0.75, 0.25, 0.0, -1.0, -0.75, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, 0.0, 1.0, 0.5, 0.75, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -1.0, 0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -1.0, 0.25, 1.0, 0.75, -0.25, 0.0, 1.0, 0.25, 0.25, 0.5, 0.25, -0.75, 0.25, 0.75, 0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    query303.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder301.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2050.setBindGroup(0, bind_group202);
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2050.dispatchWorkgroups(100);
    query201.destroy()
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    device40.pushErrorScope("out-of-memory");
    
    query203.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    texture400.destroy();
    buffer202.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder301.setVertexBuffer(0, buffer303);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer307, 0, array9, 0, array9.length);
    query400.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    compute_pass_encoder2050.end();
    command_encoder206.insertDebugMarker("mymarker");
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    compute_pass_encoder2020.popDebugGroup()
    device30.queue.writeBuffer(buffer307, 0, array4, 0, array4.length);
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    device30.queue.writeBuffer(buffer307, 0, array6, 0, array6.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder3010.pushDebugGroup("group_marker")
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
    query302.destroy()
    buffer306.destroy()
    query203.destroy()
    device30.queue.writeBuffer(buffer307, 0, array1, 0, array1.length);
    render_bundle_encoder301.drawIndirect(buffer306, 0);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    buffer302.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    command_encoder205.insertDebugMarker("mymarker");
    
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer307, 0, array9, 0, array9.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder206.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
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
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_buffer205 = command_encoder205.finish();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2060.setPipeline(compute_pipeline207);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer307, 0, array8, 0, array8.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2011, 0);
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.queue.writeBuffer(buffer2011, 0, array8, 0, array8.length);
    render_bundle_encoder301.finish();
    query201.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    texture500.destroy();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query500.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder302.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer307, 0, array7, 0, array7.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer2012.destroy()
    
    render_bundle_encoder300.drawIndirect(buffer306, 0);
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder207.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer2011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query400.destroy()
    command_encoder207.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    
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
    query401.destroy()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder207.clearBuffer(buffer2011);
    buffer209.destroy()
    compute_pass_encoder3000.popDebugGroup()
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    device30.queue.writeBuffer(buffer308, 0, array5, 0, array5.length);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.popDebugGroup();
    
    texture200.destroy();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout403]
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer308, 0, array11, 0, array11.length);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group203);
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query401.destroy()
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query501.destroy()
    query303.destroy()
    const command_buffer208 = command_encoder208.finish();
    const command_buffer207 = command_encoder207.finish();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2015, 0);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group204);
    command_encoder500.popDebugGroup()
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const command_buffer500 = command_encoder500.finish();
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    compute_pass_encoder2060.popDebugGroup()
    device20.queue.submit([command_buffer208, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.end();
    compute_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    command_encoder201.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2060.end();
    compute_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer201 = command_encoder201.finish();
    command_encoder206.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer207, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer206 = command_encoder206.finish();
    device20.queue.submit([command_buffer204, ]);
}