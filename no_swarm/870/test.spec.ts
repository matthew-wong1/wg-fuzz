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
    const array0 = new Float32Array([0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.0, -0.75, 1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.75, -1.0, 0.75, -0.5, 0.25, -0.5, 0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.25, -0.25, 0.25, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.5, -0.25, -0.25, -1.0, 0.5, -1.0, 0.75, -0.75, 0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.75, -0.25, 1.0, -1.0, -0.5, 0.25, -0.5, -0.5, -0.5, 0.5, -0.5, 0.75, -0.75, ]);
    const array1 = new Float32Array([0.0, -0.5, 1.0, 0.0, 0.75, -0.5, 0.0, 0.75, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 0.0, 0.25, 0.75, 0.0, 0.0, 0.25, -1.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.75, 0.5, -1.0, 0.75, -0.5, 0.5, -1.0, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, -0.25, -0.25, -1.0, -0.5, 0.75, -0.75, -1.0, -1.0, 0.75, -0.75, -0.25, -0.75, 0.0, -1.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -0.75, 0.5, -0.5, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.75, -0.5, 0.5, -0.5, 1.0, -0.25, -0.25, -0.25, 1.0, -0.5, -0.5, 0.75, -1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.5, ]);
    
    const array2 = new Float32Array([0.0, 1.0, -0.75, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, -0.5, 0.25, 0.75, 0.0, 0.5, -0.25, -0.75, 0.25, 0.25, -0.25, 0.5, -0.25, 0.0, -0.5, -0.25, -0.75, 0.5, 0.5, 1.0, -0.5, -0.75, 0.75, -0.25, 1.0, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 1.0, 0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.0, -1.0, 1.0, 0.25, 0.0, 0.25, -0.75, -1.0, 0.25, 0.75, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, -0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -1.0, -0.5, -0.25, -1.0, 0.75, 0.5, 1.0, 1.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.75, -0.75, -0.25, -0.75, 0.5, -1.0, -1.0, 0.5, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 1.0, 0.75, 0.25, 0.25, -0.75, -0.5, -0.5, 0.75, 1.0, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, -1.0, 0.0, -1.0, 0.0, 0.5, -0.25, -1.0, 0.0, -1.0, -0.75, 1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.0, 0.75, -0.5, 0.75, -1.0, 0.5, -0.5, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, -0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.5, 0.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.0, 0.5, -0.75, 0.25, -1.0, 0.5, -0.75, 1.0, -0.75, 1.0, -0.5, 0.0, -0.5, -0.75, -0.75, -0.5, 0.75, -0.25, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.25, -0.5, 0.5, ]);
    device00.pushErrorScope("out-of-memory");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    texture000.destroy();
    
    
    buffer100.destroy()
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture002.destroy();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture001.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_buffer300 = command_encoder300.finish();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device30.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    
    query100.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    query002.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query000.destroy()
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder101.popDebugGroup();
    query002.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, ]);
    
    buffer101.destroy()
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
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
    render_pass_encoder0030.setStencilReference(1);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array4 = new Float32Array([-0.5, 0.25, -0.5, -0.5, -1.0, 1.0, -0.75, -0.5, 0.5, -0.75, -0.75, -1.0, 1.0, -1.0, -1.0, -0.5, -1.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, -0.75, 0.5, 1.0, 0.75, -0.25, 1.0, 0.0, -0.25, -0.25, 0.25, 0.25, -1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, -0.25, -0.75, -1.0, 0.75, 0.75, -0.5, 0.25, 0.5, 0.75, 0.75, -0.5, -0.75, 0.0, 0.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.0, 0.0, -0.75, -1.0, 0.25, 0.0, 0.5, 0.5, ]);
    render_pass_encoder0020.setStencilReference(1);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("validation");
    render_pass_encoder0020.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer400.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder1000.executeBundles([])
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    texture100.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture300.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query000.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    
    
    render_pass_encoder1010.executeBundles([])
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array5 = new Float32Array([-0.25, 0.0, -0.25, 0.25, 0.75, 0.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.75, -0.75, 0.0, -0.25, 0.5, -0.5, 0.5, 0.25, 0.75, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.25, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, 1.0, -0.25, 0.75, -0.75, -0.75, 0.5, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -1.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, -1.0, -0.25, 0.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.75, -0.25, -0.25, 0.75, -0.75, 0.25, -0.75, 0.0, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.5, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.setPipeline(render_pipeline001);
    render_pass_encoder0030.setPipeline(render_pipeline002);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const array6 = new Float32Array([-1.0, -0.75, -0.5, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 1.0, 0.5, 0.0, 0.25, -0.75, 0.5, 0.0, -1.0, -0.75, 0.75, 0.5, -1.0, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, -1.0, 1.0, 0.5, 0.5, -0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.25, -0.75, -0.25, 0.25, 0.0, -1.0, -1.0, 0.5, -0.5, -0.75, 0.0, -1.0, 1.0, -0.75, 0.5, -1.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.0, -0.75, -0.75, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, 0.75, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, 0.25, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, -0.5, ]);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder301.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_pass_encoder1000.insertDebugMarker("marker");
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
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder200.popDebugGroup();
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder401.insertDebugMarker("mymarker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer200.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    buffer300.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    buffer102.destroy()
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("validation");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    buffer007.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    const command_buffer402 = command_encoder402.finish();
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder0020.setStencilReference(1);
    buffer301.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.0, 0.5, -0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, 0.5, 0.75, 0.0, -1.0, -1.0, -0.75, -0.25, -0.25, -0.25, 0.5, -0.5, -1.0, -1.0, -0.25, -0.5, 0.5, 1.0, 1.0, 0.0, 0.0, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, -0.75, 0.0, -0.25, -0.25, -0.5, 0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -0.25, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, 0.25, 0.75, 0.75, -0.25, 0.0, 0.5, -0.75, -1.0, 0.25, 0.75, -0.5, -0.75, -1.0, 0.75, 0.0, 1.0, 0.75, 1.0, 0.25, -0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 0.0, 0.75, -1.0, -0.75, 1.0, 0.25, 0.75, 0.0, 0.75, 0.25, -0.75, ]);
    query101.destroy()
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    render_pass_encoder0030.setStencilReference(1);
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
    query000.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    buffer008.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder102.popDebugGroup();
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query104.destroy()
    query402.destroy()
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    query003.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query103.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.popDebugGroup();
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query100.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const command_buffer302 = command_encoder302.finish();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder0020.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.setPipeline(render_pipeline101);
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    command_encoder301.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0015, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0015, 0);
    const command_buffer301 = command_encoder301.finish();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
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
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    const command_buffer001 = command_encoder001.finish();
    command_encoder400.popDebugGroup()
    compute_pass_encoder4010.end();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    const command_buffer400 = command_encoder400.finish();
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer001, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
}