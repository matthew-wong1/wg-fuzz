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
    
    
    
    
    
    const array0 = new Float32Array([1.0, -1.0, 1.0, -0.5, 0.25, 0.5, 0.0, -0.75, -0.75, 0.75, -0.25, 0.0, -0.75, -1.0, 1.0, -0.5, -0.5, -1.0, -0.75, -0.25, -0.25, -0.5, -1.0, 0.0, 0.75, -1.0, -1.0, -0.75, 0.75, -0.75, 0.25, 0.0, 1.0, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, -0.75, 0.0, 1.0, -0.5, -0.75, 0.75, 0.0, 0.25, 0.5, -0.5, 0.25, -0.5, 0.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.75, 0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -1.0, -0.5, -1.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, -0.25, 1.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.25, 0.5, ]);
    const array1 = new Float32Array([0.0, 0.0, -0.75, 0.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, -0.5, -0.25, -1.0, -0.75, -0.25, -1.0, -0.75, -1.0, 1.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.0, 0.25, -1.0, 0.25, 0.75, -0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.0, -0.75, 0.0, 0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, 0.75, -0.75, 0.75, -0.75, 0.25, 0.0, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.25, ]);
    
    const array2 = new Float32Array([0.0, 0.5, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 0.0, -0.5, -0.25, 1.0, -1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.75, -1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, -0.5, -0.5, -0.25, 0.5, 0.25, 0.75, -1.0, 1.0, 0.5, -0.25, -0.25, -0.75, 1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, 1.0, -1.0, 1.0, -0.25, -0.25, 0.25, -1.0, 0.5, -1.0, 1.0, 0.5, 0.0, -0.5, ]);
    
    
    
    
    const array3 = new Float32Array([0.25, 0.0, 0.25, 0.75, -0.5, 0.25, 0.25, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -0.75, -0.25, 0.25, -0.5, -0.75, 0.25, 0.5, -1.0, 0.25, 1.0, 0.0, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, -1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 0.5, 1.0, -0.75, -1.0, -1.0, -1.0, 0.75, 0.25, 0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.25, -1.0, 0.25, 1.0, 1.0, 0.0, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array4 = new Float32Array([1.0, 0.25, -0.25, -0.25, 0.5, -0.75, -0.75, -0.75, 0.25, 0.75, -0.75, -0.75, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 0.0, -0.25, -0.25, 1.0, -0.5, 1.0, -0.75, -0.5, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.75, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, 0.0, 1.0, -0.5, 0.5, -1.0, -0.75, -0.5, -0.5, 1.0, -0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -0.75, 0.0, -0.5, 0.0, 0.5, 0.25, 1.0, 0.75, 0.0, -1.0, -1.0, 1.0, 0.75, -1.0, 0.25, 0.5, 0.25, 0.0, -1.0, 0.75, -0.25, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.75, 0.5, 1.0, 0.0, 0.75, 0.5, 0.25, -0.25, -0.75, 0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array5 = new Float32Array([1.0, 0.0, -0.75, -0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 0.0, 0.25, -0.25, 1.0, -1.0, -1.0, 0.75, 0.75, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.75, 0.25, -1.0, -1.0, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 0.25, -0.75, 0.0, 0.5, 0.75, 0.5, 0.75, 0.0, -0.5, 0.25, -1.0, -0.25, -0.5, 0.0, 0.5, -0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.5, -1.0, -0.5, 1.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, -0.25, 0.75, -0.75, 0.25, -0.5, 0.25, 0.75, -1.0, -0.5, 0.75, 0.0, 0.25, -0.75, 0.75, -1.0, 0.5, 0.0, 0.75, -0.5, 0.0, 0.25, 0.0, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    const array6 = new Float32Array([-1.0, -0.25, 0.75, -0.25, 1.0, 0.25, 0.75, -1.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.25, 1.0, -0.25, -0.75, 0.25, 1.0, 0.0, -0.25, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, -1.0, -0.75, 1.0, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -0.75, -0.5, -0.75, 0.75, -0.5, 0.75, 0.5, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 0.0, 0.5, 0.25, -0.5, -0.25, 1.0, -0.5, 1.0, -0.5, -0.75, -0.75, 0.5, -0.25, -0.75, -1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.75, -1.0, 1.0, -1.0, -0.75, 1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, -0.25, 0.25, 0.25, 1.0, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer200.destroy()
    device20.pushErrorScope("validation");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array7 = new Float32Array([-1.0, 1.0, -1.0, 0.25, 0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 0.5, -0.25, 1.0, -0.25, -0.5, 0.75, -1.0, 1.0, 1.0, -0.75, -0.75, -0.25, -1.0, 1.0, 0.25, -0.5, 0.75, -0.75, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, 0.5, -1.0, -0.75, 1.0, 0.75, 0.25, 0.25, 1.0, -0.5, 1.0, -0.5, 0.0, -0.25, 0.5, -0.75, 0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.5, 0.0, 0.5, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.0, 0.25, 1.0, 0.25, -0.5, -0.5, -0.25, 0.75, 0.0, -1.0, -0.75, -0.75, 0.25, 0.5, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.0, 0.25, -1.0, 0.75, 1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.75, 0.25, -1.0, 0.25, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const command_buffer200 = command_encoder200.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    query202.destroy()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device20.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    buffer201.destroy()
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query300.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.popDebugGroup();
    
    
    query201.destroy()
    buffer300.destroy()
    
    texture200.destroy();
    command_encoder100.popDebugGroup()
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer100.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    query100.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query202.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query301.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer203.destroy()
    
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_buffer101 = command_encoder101.finish();
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
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const array8 = new Float32Array([0.5, -1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, 0.5, -0.75, 0.75, 1.0, 0.5, 1.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, -1.0, 0.0, -1.0, 0.25, 0.75, -0.5, -1.0, -0.5, 0.5, 0.75, -0.25, 0.0, 0.5, 0.0, 0.75, -0.75, -0.5, -0.25, 1.0, 1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.25, 0.25, -0.75, 1.0, 1.0, -0.25, 0.25, -1.0, -1.0, 1.0, -0.75, 1.0, -0.75, 0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 0.5, 0.5, 0.25, 1.0, 0.5, 0.25, 1.0, 0.0, 0.0, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.0, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, -0.75, -0.75, ]);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    query202.destroy()
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    buffer103.destroy()
    
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer101.destroy()
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer200, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline1014);
    
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.popDebugGroup();
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
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
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_bundle_encoder201.popDebugGroup();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_bundle_encoder101.popDebugGroup();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline1014.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
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
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query200.destroy()
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder600.insertDebugMarker("marker");
    texture202.destroy();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder202.setVertexBuffer(0, buffer201);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    texture201.destroy();
    render_bundle_encoder202.setIndexBuffer(buffer200, "uint16");
    texture300.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
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
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query201.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.drawIndirect(buffer203, 0);
    buffer106.destroy()
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer107, 0);
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture203.destroy();
    texture600.destroy();
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
    
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    query700.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    
    const array9 = new Float32Array([-0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.5, -0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.25, -1.0, -0.5, -0.5, -0.5, -0.25, 0.25, 0.5, -0.5, -0.25, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, -0.75, -1.0, 0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.25, -0.5, 0.0, -0.5, 0.75, -0.25, -0.25, 0.0, 0.75, 0.75, -0.5, -0.75, -0.75, -0.25, 1.0, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.5, -1.0, -0.5, -0.5, 0.75, 0.5, -1.0, -1.0, -0.25, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, ]);
    command_encoder601.popDebugGroup()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1000.end();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder302.popDebugGroup();
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
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query700.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
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
        occlusionQuerySet: query200
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder6010.executeBundles([])
    command_encoder602.insertDebugMarker("mymarker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline303);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const command_buffer602 = command_encoder602.finish();
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    buffer107.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    command_encoder600.popDebugGroup()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
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
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
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
    texture204.destroy();
    buffer204.destroy()
    
    render_bundle_encoder202.popDebugGroup();
    command_encoder600.insertDebugMarker("mymarker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    query302.destroy()
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    command_encoder102.insertDebugMarker("mymarker");
    query300.destroy()
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    render_pass_encoder2010.setPipeline(render_pipeline202);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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
    const command_buffer603 = command_encoder603.finish();
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
    const command_buffer600 = command_encoder600.finish();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.end();
    compute_pass_encoder3000.end();
    device60.queue.submit([command_buffer600, command_buffer602, command_buffer603, ]);
    const command_buffer201 = command_encoder201.finish();
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([command_buffer102, ]);
}