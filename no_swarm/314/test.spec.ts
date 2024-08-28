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
    
    
    const array0 = new Float32Array([-0.25, 0.5, 0.5, -0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.75, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -0.5, 0.5, 0.75, 0.25, 0.25, 0.0, 1.0, -0.5, 0.25, -0.5, -0.75, -0.75, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 1.0, 1.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, -0.75, 1.0, -0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.75, -0.5, -1.0, -0.25, 0.25, 0.0, 1.0, -0.75, 0.75, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, 0.25, -0.25, -1.0, -0.75, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.0, -0.75, -0.75, 0.0, -0.5, -0.25, -1.0, -1.0, 0.5, 0.75, -0.25, 0.5, ]);
    
    const array1 = new Float32Array([-0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, 0.25, 0.75, -0.5, -0.25, -0.25, 0.0, 0.5, 0.0, -1.0, -1.0, 0.75, -0.5, 1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, -0.75, -0.25, -0.75, 0.25, 0.75, 1.0, 0.75, 0.25, 0.0, 0.5, 0.75, 0.5, -0.75, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, -0.25, -0.25, 0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.75, 1.0, 0.5, 0.25, 0.5, 0.5, -0.25, 0.75, 0.5, 1.0, 0.0, 0.25, -0.75, 0.75, 0.75, -0.75, 0.75, 0.25, -0.5, 0.25, 0.25, 1.0, 1.0, 1.0, -0.25, 0.25, 0.75, -1.0, 1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, -0.5, -0.75, 0.0, -1.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query001.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
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
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const array2 = new Float32Array([-1.0, 0.75, 0.75, -0.75, 1.0, 0.25, -0.25, 0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.5, -0.25, -1.0, -1.0, 0.25, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, 0.0, -0.75, 0.25, -0.25, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.5, 1.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, 1.0, -0.5, 0.0, -0.5, -1.0, 0.25, 0.5, 0.0, -0.75, 0.25, 0.25, -0.25, -0.25, 0.75, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -0.5, -0.25, 0.25, -0.5, 0.25, -0.75, 0.5, 0.5, -0.25, -0.25, ]);
    
    const command_buffer301 = command_encoder301.finish();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array3 = new Float32Array([-0.5, -0.5, 0.5, 0.75, 0.25, -1.0, 0.0, 0.75, -1.0, 0.75, -0.5, -0.75, -0.5, -1.0, 0.75, 0.0, 0.25, 0.5, 0.75, -0.5, -0.5, -1.0, -0.25, 0.5, 0.0, 0.5, 0.75, 0.0, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, 0.5, 0.25, 0.5, -0.75, -0.25, 1.0, 0.0, -0.75, 0.75, 1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, -0.25, -0.25, 0.75, -0.75, -0.25, 1.0, 0.75, -1.0, -1.0, -0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, 0.5, 0.0, 0.75, -0.75, -0.75, 0.0, 1.0, -1.0, 0.25, 1.0, 0.5, -1.0, 1.0, -0.25, -0.5, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query300.destroy()
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
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.queue.submit([command_buffer301, ]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.popDebugGroup()
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    texture201.destroy();
    texture200.destroy();
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    
    
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    query201.destroy()
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
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer303 = command_encoder303.finish();
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    texture300.destroy();
    
    
    
    buffer300.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    query300.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.pushErrorScope("internal");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer401.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder3000.insertDebugMarker("marker")
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
    
    compute_pass_encoder3020.popDebugGroup()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    texture400.destroy();
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    
    query301.destroy()
    texture401.destroy();
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
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
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    query301.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder4010.setPipeline(render_pipeline400);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    texture402.destroy();
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder4010.setStencilReference(1);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const array4 = new Float32Array([0.25, -0.5, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, 0.0, 0.5, -0.75, -0.75, -0.75, 0.5, -1.0, 0.75, -0.75, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, -0.5, 0.0, 0.75, -0.75, -1.0, 0.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.5, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, -1.0, 0.25, -0.25, 0.0, 0.25, -0.75, 0.0, -0.5, -0.75, 0.75, 0.25, -0.75, 1.0, -0.5, -0.75, 0.0, -0.75, 0.5, -0.25, 0.75, 1.0, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.5, -1.0, -0.75, 0.25, 0.0, 0.75, 0.5, -0.25, -0.75, -0.25, 0.75, 0.25, -1.0, 0.25, 1.0, 0.75, -1.0, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    compute_pass_encoder4000.popDebugGroup()
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    query301.destroy()
    
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    device60.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3020.setPipeline(compute_pipeline305);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    render_pass_encoder4020.executeBundles([])
    compute_pass_encoder3000.setPipeline(compute_pipeline303);
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    texture301.destroy();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder4020.beginOcclusionQuery(0)
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    render_pass_encoder4020.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    buffer301.destroy()
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
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
    render_pass_encoder4030.setStencilReference(1);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder304.popDebugGroup()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4020.setPipeline(render_pipeline400);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    render_pass_encoder3040.executeBundles([])
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4010.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
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
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer501 = command_encoder501.finish();
    
    
    render_pass_encoder3040.pushDebugGroup("group_marker");
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    buffer302.destroy()
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query700.destroy()
    render_pass_encoder4010.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setStencilReference(1);
    device80.pushErrorScope("out-of-memory");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder3040.setPipeline(render_pipeline301);
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder4030.setStencilReference(1);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.submit([command_buffer303, ]);
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setPipeline(render_pipeline401);
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.popDebugGroup();
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4020.popDebugGroup();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3050.pushDebugGroup("group_marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder302.setPipeline(render_pipeline302);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([0.75, 0.25, 1.0, 1.0, 1.0, -1.0, -1.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.25, 1.0, 1.0, 1.0, 1.0, -1.0, -0.75, 0.5, -0.75, 0.75, 0.25, 0.5, 0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.0, -1.0, 0.75, 0.0, 0.25, -1.0, 0.5, -0.25, 0.0, -0.25, -0.5, -0.5, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.5, -0.5, -0.5, -1.0, 0.0, 0.5, -0.5, -0.75, 0.5, -0.25, -0.75, -0.25, -0.75, 0.25, -0.75, 0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, 0.0, 0.5, -0.5, 0.5, -1.0, -1.0, 0.75, -0.25, 0.0, 0.25, 0.75, -0.5, 0.5, -1.0, -0.75, -0.25, 0.25, 1.0, 1.0, -1.0, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, -1.0, ]);
    device70.pushErrorScope("validation");
    texture403.destroy();
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setPipeline(render_pipeline304);
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4030.beginOcclusionQuery(1)
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer402.destroy()
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.insertDebugMarker("marker");
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
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
    
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer303.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group301);
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    render_pass_encoder3050.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    const command_buffer404 = command_encoder404.finish();
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder3050.setVertexBuffer(0, buffer304);
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4020.endOcclusionQuery()
    device40.queue.submit([command_buffer404, ]);
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer309, 0);
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3020.end();
    render_pass_encoder4030.setVertexBuffer(0, buffer400);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    device80.queue.submit([command_buffer801, ]);
    render_pass_encoder4020.setVertexBuffer(0, buffer404);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.end();
    compute_pass_encoder4000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer300 = command_encoder300.finish();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder3050.draw(3);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group304);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3050.end();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    render_pass_encoder4020.draw(3);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3040.setVertexBuffer(0, buffer304);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4011, 0);
    render_pass_encoder4030.draw(3);
    render_pass_encoder3040.draw(3);
    compute_pass_encoder5000.end();
    render_pass_encoder4030.end();
    render_pass_encoder4020.end();
    device30.queue.submit([command_buffer302, ]);
    device40.queue.submit([command_buffer401, ]);
    const command_buffer403 = command_encoder403.finish();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3040.end();
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    device50.queue.submit([command_buffer500, ]);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    device30.queue.submit([command_buffer304, ]);
}