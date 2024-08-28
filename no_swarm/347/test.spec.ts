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
    
    
    const array0 = new Float32Array([0.5, 1.0, 0.0, 0.0, -1.0, -0.75, -0.5, 0.0, -0.5, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.25, -0.75, -0.25, -0.5, -1.0, 1.0, -0.5, 0.0, 0.75, -1.0, 0.25, 0.75, 1.0, -1.0, 0.5, -1.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.5, 0.25, 0.0, -1.0, -0.5, -0.75, 0.5, -0.25, -0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 1.0, 0.25, -0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, 0.75, -0.25, -0.5, 0.0, -0.25, -0.25, -0.5, 1.0, -0.25, 1.0, -0.25, -0.5, -0.5, 0.75, 0.5, 0.25, 0.75, 1.0, -1.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.25, 0.75, 0.5, 0.5, 0.25, -0.25, ]);
    
    
    
    const array1 = new Float32Array([0.75, 0.25, 0.5, -0.75, 0.0, 0.5, 0.0, 1.0, -0.5, 0.0, 0.0, -0.75, -0.5, 0.5, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, 1.0, -0.5, 1.0, -1.0, 0.5, 0.0, 0.0, 0.25, -0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 0.0, -0.5, -0.75, -0.5, 1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.0, -0.5, 0.25, -1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, 0.0, 0.25, 0.5, -0.75, 0.75, -0.25, 0.75, 0.75, 0.5, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, 1.0, 0.0, 0.5, 0.25, -1.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, -0.75, 0.5, -0.25, 0.25, 1.0, 1.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const array2 = new Float32Array([0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, -0.75, 0.25, 0.0, 0.25, -0.5, -0.25, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.5, 1.0, 0.5, -0.25, -0.25, 0.5, 0.5, 1.0, 1.0, 0.5, 0.25, 0.5, 1.0, -0.5, 0.0, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -0.25, -0.25, 0.0, 1.0, -0.5, 0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.25, -0.25, 0.0, -0.75, 0.5, 0.0, 0.75, 0.5, 0.0, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, -0.75, 0.5, 0.0, -0.25, -0.75, -0.75, 0.75, 0.75, 1.0, 1.0, 0.5, 0.0, -1.0, 0.25, -0.5, 0.75, -0.5, -0.5, -0.75, ]);
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    texture000.destroy();
    const command_buffer002 = command_encoder002.finish();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    command_encoder004.popDebugGroup()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    command_encoder003.clearBuffer(buffer001);
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder003.clearBuffer(buffer001);
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    buffer001.destroy()
    buffer002.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    
    
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    texture001.destroy();
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer003.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    query001.destroy()
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    texture300.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device10.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query000.destroy()
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
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
    render_pass_encoder3000.setStencilReference(1);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query300.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setStencilReference(1);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0040.popDebugGroup()
    
    device00.pushErrorScope("out-of-memory");
    buffer004.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer005.destroy()
    
    query000.destroy()
    buffer300.destroy()
    query001.destroy()
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    query001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.popDebugGroup();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    query001.destroy()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    query000.destroy()
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.destroy();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder0030.setPipeline(compute_pipeline000);
    texture301.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer006.destroy()
    query300.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder3000.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
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
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const array3 = new Float32Array([-1.0, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, 1.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.5, 1.0, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.75, -0.25, -0.75, -0.75, -0.75, 1.0, -1.0, -0.75, 0.25, 0.0, 0.25, 0.5, 0.5, -0.75, -1.0, -0.75, 1.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, -0.5, 0.0, -1.0, 0.5, -0.75, -0.75, -0.75, 0.0, -1.0, 0.75, -0.5, -0.75, 1.0, -0.5, 1.0, -0.75, -0.25, 0.75, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -1.0, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, 1.0, 1.0, 0.5, -1.0, -0.75, -0.5, 0.5, 0.75, ]);
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    buffer007.destroy()
    
    
    
    query300.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    query000.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder0040.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    device30.pushErrorScope("internal");
    device00.pushErrorScope("out-of-memory");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0030.popDebugGroup()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    buffer008.destroy()
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
    
    const array4 = new Float32Array([-1.0, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, -0.25, 0.25, 0.0, 0.75, 0.0, -0.25, 1.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.25, -0.75, 0.75, -1.0, -0.25, 0.0, 0.75, 1.0, -0.75, 0.5, -0.5, -0.5, -0.75, -0.25, -0.5, -1.0, 0.75, -0.75, -0.75, 1.0, 0.5, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 0.25, -0.5, -0.5, -1.0, 1.0, 0.25, -0.75, -0.75, 1.0, 0.75, 0.5, -1.0, -0.5, -0.75, 0.25, 0.75, -0.5, 0.75, 1.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.75, -0.25, 0.75, 0.25, -0.25, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.75, -1.0, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.75, -0.25, -0.5, 0.75, ]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query004.destroy()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query003.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device50.destroy();
    const array5 = new Float32Array([-0.5, -0.5, 0.5, -0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.0, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, -0.5, 0.5, -0.5, -0.25, 1.0, 1.0, 0.25, -0.25, 0.75, -1.0, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.25, -1.0, 0.0, 0.0, 0.0, -0.25, 0.5, -0.25, -1.0, 0.25, 0.0, -0.75, 0.5, 0.0, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 0.5, 0.25, 0.75, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, 0.5, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, 0.75, 0.25, -0.75, 0.75, -0.5, -0.5, 0.25, -1.0, -0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, 0.25, 0.25, ]);
    
    query004.destroy()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    command_encoder005.insertDebugMarker("mymarker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    texture302.destroy();
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const array6 = new Float32Array([0.5, -0.25, -1.0, -0.25, -0.5, 0.0, -0.25, -0.75, -0.5, -1.0, -0.5, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, -0.25, 1.0, 0.0, 1.0, 0.0, -0.25, 1.0, -0.5, 0.75, -0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 0.75, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, 0.5, -0.25, -0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 0.75, -0.75, -0.5, 1.0, 1.0, -0.5, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.5, 0.75, 0.25, 0.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.0, -0.75, 0.75, 0.0, -0.25, -0.5, 0.25, 1.0, 1.0, 0.5, -0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 0.5, ]);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device70.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder3020.executeBundles([])
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
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
    query000.destroy()
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    device60.pushErrorScope("out-of-memory");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    render_pass_encoder3020.setPipeline(render_pipeline303);
    render_pass_encoder3020.setStencilReference(1);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3000.setPipeline(render_pipeline301);
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    device00.queue.submit([command_buffer002, ]);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    command_encoder005.popDebugGroup()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer009.destroy()
    
    device80.destroy();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group002);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const command_buffer005 = command_encoder005.finish();
    
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0014, 0);
    buffer0013.destroy()
    compute_pass_encoder0060.setPipeline(compute_pipeline0027);
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    query001.destroy()
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    render_pass_encoder3000.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer0014, 0, array6, 0, array6.length);
    buffer000.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
    });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder3020.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer0015.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0014, 0, array2, 0, array2.length);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0027.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group005);
    buffer0014.destroy()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.executeBundles([])
    
    render_pass_encoder3030.setPipeline(render_pipeline304);
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_bundle_encoder600.popDebugGroup();
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline304);
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder3030.insertDebugMarker("marker");
    device00.queue.submit([command_buffer001, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    buffer0016.destroy()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0019, 0);
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const command_buffer007 = command_encoder007.finish();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group006);
    render_pass_encoder3030.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder3020.popDebugGroup();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0023, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group302);
    compute_pass_encoder0040.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.end();
    compute_pass_encoder0030.popDebugGroup()
    command_encoder000.popDebugGroup()
    compute_pass_encoder0030.end();
    compute_pass_encoder0060.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer300);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3020.end();
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer005, ]);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3000.end();
    const command_buffer004 = command_encoder004.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.end();
    const command_buffer006 = command_encoder006.finish();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, ]);
    device00.queue.submit([command_buffer006, ]);
}