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
    
    const array0 = new Float32Array([0.25, 0.0, -0.5, -0.25, 0.25, 0.5, 0.75, -0.5, -0.5, 0.0, 0.25, 0.0, 1.0, 0.75, 1.0, 1.0, 1.0, -1.0, 0.75, 0.0, 0.5, -0.75, -0.5, 0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.75, 0.5, 0.25, 0.0, -0.25, 1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 0.5, 0.75, 0.5, -1.0, -0.75, -0.5, 0.5, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 1.0, 0.5, 0.5, 0.5, 1.0, -0.75, 0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, -0.5, -0.5, -1.0, 1.0, -1.0, 0.0, 0.25, 0.5, -1.0, 0.25, -1.0, -0.25, 0.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.25, 0.75, 0.25, -0.5, 1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([0.0, -1.0, -0.25, -0.5, -1.0, 1.0, -0.25, 0.0, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.5, 0.0, -1.0, 0.75, -1.0, 0.25, 0.75, 0.75, 0.25, -1.0, -0.5, -0.75, 1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, -1.0, 0.25, 0.75, -0.75, 0.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, 0.25, -1.0, 1.0, -0.5, -0.25, 0.25, 0.75, 0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 0.25, 1.0, -1.0, -0.25, 0.5, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, -1.0, -0.75, 0.5, 0.75, -0.75, 0.25, -0.5, 0.75, -0.5, -0.5, -0.25, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-0.5, 0.0, -0.75, -0.5, -1.0, -0.5, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.0, -0.75, -1.0, 0.75, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -0.5, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.5, 0.25, -0.75, 0.25, -0.25, 0.0, -0.75, 1.0, 1.0, 1.0, -0.5, -0.5, -0.5, -0.75, -0.25, -1.0, 0.25, -0.5, -1.0, -0.75, 0.5, 0.0, -0.5, 0.75, -0.75, 0.75, -0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, 0.0, 0.25, -1.0, 0.25, 0.25, 0.25, 0.75, -0.5, 0.25, 1.0, 0.0, -1.0, -0.25, -1.0, 0.5, -1.0, 1.0, -0.25, -0.5, 1.0, -1.0, 0.25, 1.0, 1.0, -0.5, -0.5, -0.75, ]);
    
    const array3 = new Float32Array([0.5, 1.0, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.75, 1.0, -1.0, 0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.5, 0.0, 0.75, 0.5, 0.0, 1.0, 0.75, 0.75, 0.0, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, 1.0, -1.0, 0.75, 0.25, -0.25, 0.75, -0.25, -1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -0.75, 0.5, -0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 0.25, 0.5, 0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.25, 0.75, 0.75, 0.0, 0.75, 1.0, -0.25, 0.0, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    query100.destroy()
    
    
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
    device20.pushErrorScope("out-of-memory");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.pushErrorScope("internal");
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
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    buffer200.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const array4 = new Float32Array([0.5, 0.25, 0.0, 0.25, 0.5, -1.0, 1.0, -0.75, 0.5, 0.5, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.25, -1.0, 0.5, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, -1.0, 1.0, 0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -0.5, -0.25, -0.5, 0.75, 0.0, -0.25, 0.0, 0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.5, 1.0, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.5, 0.25, -0.5, -0.25, 0.25, 0.5, -1.0, -0.25, -0.75, -0.5, -1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, 0.25, -0.5, -0.5, 0.5, 0.25, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    texture101.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer101 = command_encoder101.finish();
    device20.pushErrorScope("validation");
    texture100.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder201.insertDebugMarker("mymarker");
    texture300.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder101.popDebugGroup();
    query200.destroy()
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.pushErrorScope("internal");
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer101, ]);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture102.destroy();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    command_encoder300.pushDebugGroup("mygroupmarker")
    query201.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder200.insertDebugMarker("marker");
    query100.destroy()
    buffer100.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture200.destroy();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.popDebugGroup()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    buffer201.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query200.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    command_encoder203.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder200.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query202.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    query200.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    texture104.destroy();
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    texture201.destroy();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    query103.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder1020.executeBundles([])
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder302.popDebugGroup()
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
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    query200.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    command_encoder204.insertDebugMarker("mymarker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query101.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query104.destroy()
    query201.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    device50.destroy();
    
    query102.destroy()
    
    command_encoder204.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setPipeline(render_pipeline101);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query103.destroy()
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    query102.destroy()
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer105.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder101.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder2060.insertDebugMarker("marker")
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    query200.destroy()
    render_pass_encoder1030.setVertexBuffer(0, buffer102);
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    buffer109.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder205.insertDebugMarker("mymarker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device40.destroy();
    
    
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    texture202.destroy();
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
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
    texture301.destroy();
    command_encoder300.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer101.destroy()
    command_encoder300.popDebugGroup()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.75, 1.0, -0.5, 0.5, 1.0, 1.0, 0.5, -1.0, 0.5, 0.75, -0.5, -0.5, 1.0, 0.25, -0.5, 0.5, 0.0, 0.0, 0.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.5, 0.5, -0.5, -0.5, -0.5, 0.5, 0.0, -1.0, -0.25, 0.25, -0.75, 0.25, 1.0, -0.75, 1.0, 0.0, -0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, -0.25, -0.25, -0.25, -0.25, -0.75, 0.0, -0.75, 0.75, -0.75, -0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 0.25, -0.25, 0.25, -0.5, 0.0, -0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -1.0, -0.25, -0.75, -0.5, ]);
    
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1030.draw(3);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder201.setPipeline(render_pipeline202);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
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
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1030.end();
    
    command_encoder204.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    
    
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
    render_bundle_encoder201.popDebugGroup();
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query104
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query202.destroy()
    buffer107.destroy()
    buffer300.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    query102.destroy()
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    query104.destroy()
    command_encoder204.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    
    query102.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    compute_pass_encoder3000.setPipeline(compute_pipeline309);
    device70.pushErrorScope("validation");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1031.setPipeline(render_pipeline105);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    buffer202.destroy()
    
    render_pass_encoder1031.insertDebugMarker("marker");
    
    command_encoder303.insertDebugMarker("mymarker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3010.dispatchWorkgroups(100);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline105.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline309.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group104);
    render_pass_encoder1020.draw(3);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer307, 0);
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3000.end();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer300 = command_encoder300.finish();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1031.draw(3);
    compute_pass_encoder3010.end();
    render_pass_encoder1020.end();
    command_encoder302.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer102 = command_encoder102.finish();
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer302 = command_encoder302.finish();
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
}