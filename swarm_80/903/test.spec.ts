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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array0 = new Float32Array([0.25, -1.0, -0.75, 1.0, -0.75, 0.25, 0.0, 0.5, -0.5, 0.75, -0.75, -0.5, 1.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, -0.25, 0.25, 0.0, 1.0, -0.5, 0.75, 0.0, -0.25, 0.5, 0.0, -1.0, 1.0, 0.5, -1.0, -0.25, 1.0, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, -0.5, -0.75, -0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 0.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.75, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, -0.25, -0.75, -0.25, 0.25, 0.25, 0.25, 0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_buffer000 = command_encoder000.finish();
    
    const array1 = new Float32Array([-1.0, -0.75, 0.5, 1.0, -0.25, -0.75, -0.5, -0.5, -0.75, 0.75, 0.75, -1.0, 0.5, 0.25, 0.5, 0.75, 0.0, 0.0, 0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 0.5, 0.5, -0.25, 0.25, 0.0, 1.0, 0.75, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -0.25, 0.0, -1.0, -1.0, 1.0, -0.25, 0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.75, -1.0, 0.75, -0.5, -0.5, 1.0, -0.75, -0.75, -1.0, -0.75, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture000.destroy();
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer000.destroy()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer001.destroy()
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.submit([command_buffer000, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder001.clearBuffer(buffer003);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    texture001.destroy();
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    buffer002.destroy()
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder001.setPipeline(render_pipeline000);
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    render_pass_encoder0010.executeBundles([])
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    render_pass_encoder0010.setPipeline(render_pipeline002);
    texture002.destroy();
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const array2 = new Float32Array([1.0, -0.5, -0.25, 0.5, 1.0, 0.5, 0.25, -0.5, 0.5, -0.5, 0.25, 0.25, 0.75, -0.25, -0.5, -0.75, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, 0.0, 0.25, -0.5, -1.0, -0.25, 1.0, 0.0, -1.0, -1.0, -1.0, 1.0, 0.75, 0.25, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, 1.0, -1.0, -0.5, 0.5, 0.5, 0.75, 1.0, -0.75, 0.25, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.5, 0.25, 0.75, 0.75, 0.0, 0.25, 0.0, -0.25, -0.25, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, 1.0, 0.0, 0.5, 0.75, -1.0, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 0.0, 0.75, 0.0, -0.25, ]);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const array3 = new Float32Array([0.0, 0.5, -0.5, -0.25, 1.0, 0.0, 1.0, -0.5, -1.0, -0.5, 0.25, 1.0, 0.25, 0.25, 1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, 0.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.75, 1.0, 0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.0, 0.5, 0.0, 0.5, 0.25, -0.5, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.5, -0.5, -1.0, 0.75, 1.0, -0.75, -0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 0.25, 1.0, 0.25, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, 0.5, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.75, ]);
    
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer005.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer007.destroy()
    render_pass_encoder0010.setStencilReference(1);
    
    const array4 = new Float32Array([0.5, -1.0, 1.0, 0.25, -1.0, -0.5, 0.5, 0.5, -0.25, 0.75, 1.0, -0.5, -0.5, -0.75, 0.5, 0.5, 0.75, 0.5, -0.75, 0.75, -0.75, -0.5, 0.25, 1.0, -0.5, 0.75, 0.25, -0.5, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, -0.25, -1.0, -0.5, 1.0, 0.0, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, 0.5, -0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.75, -0.25, 1.0, 1.0, -0.25, 0.25, 0.5, -0.75, 0.25, -0.25, 0.25, 0.25, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, -1.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.0, 0.25, -0.5, 0.0, 0.5, -0.75, 0.75, 1.0, -1.0, -0.5, 0.0, ]);
    texture003.destroy();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0010.setStencilReference(1);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer008.destroy()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    
    
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    render_pass_encoder0020.setStencilReference(1);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    buffer0010.destroy()
    
    render_bundle_encoder002.setVertexBuffer(0, buffer009);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder0010.popDebugGroup();
    
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    buffer009.destroy()
    buffer004.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
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
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    buffer0012.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    
    const array5 = new Float32Array([-1.0, 0.25, 0.75, 1.0, 0.75, -0.75, 1.0, 0.0, 0.75, 1.0, -1.0, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 0.75, 1.0, -0.75, -0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.5, -1.0, 0.5, -0.75, 0.25, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 0.5, -0.25, -0.75, 0.25, -1.0, -0.5, -0.25, 0.25, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, -1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, -0.5, -0.25, -1.0, 0.25, 0.75, 0.75, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    buffer0011.destroy()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setStencilReference(1);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer003.destroy()
    
    
    device00.pushErrorScope("out-of-memory");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0010.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
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
    render_bundle_encoder002.draw(3);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture004.destroy();
    device30.destroy();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0042,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0030.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_bundle_encoder001.setVertexBuffer(0, buffer009);
    
    
    device40.pushErrorScope("validation");
    const array6 = new Float32Array([0.5, 0.0, 0.75, 0.0, -0.75, 0.25, 0.25, 1.0, -0.25, 0.75, -1.0, 0.75, -1.0, 0.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.25, -0.75, -1.0, 0.0, -0.25, -0.5, 0.0, -0.25, -0.5, -0.75, -0.75, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -0.5, 0.25, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.5, -1.0, 0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -1.0, 1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 0.75, -0.5, 0.75, -0.5, 1.0, ]);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0030.setPipeline(render_pipeline006);
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
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
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const array7 = new Float32Array([-1.0, -0.5, -0.75, -1.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 0.5, -0.25, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, 1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, 0.0, -1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -1.0, 0.5, 0.25, 0.25, -0.5, 0.0, -0.25, 0.75, -0.25, -0.5, 0.0, 0.75, 1.0, -1.0, 1.0, -1.0, -0.75, 0.75, -0.75, 0.5, 1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.25, 0.25, -0.5, -0.75, -0.25, 1.0, 1.0, -0.25, -0.25, -1.0, 1.0, -1.0, 1.0, -0.5, 0.75, -0.5, 1.0, 0.5, 0.75, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    buffer006.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    render_bundle_encoder001.draw(3);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer009);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
        format: "r32float",
        dimension: "2d"
    });
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer0016.destroy()
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device60.destroy();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
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
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    buffer0014.destroy()
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.setStencilReference(1);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    texture401.destroy();
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    device50.pushErrorScope("validation");
    texture005.destroy();
    render_bundle_encoder001.finish();
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder002.finish();
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    
    render_pass_encoder0020.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture007.destroy();
    
    render_pass_encoder0030.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    buffer0015.destroy()
    
    texture400.destroy();
    render_pass_encoder0010.setStencilReference(1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeTexture({ texture: texture008 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    texture500.destroy();
    device50.destroy();
    texture008.destroy();
    device00.pushErrorScope("validation");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder401.insertDebugMarker("mymarker");
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
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
    device40.pushErrorScope("internal");
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0033,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setPipeline(render_pipeline009);
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_pass_encoder0030.popDebugGroup();
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    render_pass_encoder0040.setStencilReference(1);
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    render_pass_encoder0030.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_bundle_encoder000.draw(3);
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    render_pass_encoder0030.popDebugGroup();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.destroy();
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture006.destroy();
    render_pass_encoder4000.insertDebugMarker("marker");
    render_bundle_encoder000.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout006]
    });
    buffer0013.destroy()
    texture402.destroy();
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer402.destroy()
    render_pass_encoder4000.insertDebugMarker("marker");
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    
    render_pass_encoder4010.executeBundles([])
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder4030.popDebugGroup();
}