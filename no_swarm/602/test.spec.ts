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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array0 = new Float32Array([-0.75, -0.75, 0.0, 0.25, 0.75, 0.5, -0.25, -0.25, -0.5, -1.0, -0.25, -0.25, -0.25, 0.75, -0.75, -0.5, 0.25, -0.25, -0.5, 0.5, -0.25, -0.5, 0.75, -0.75, -0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, -0.5, -0.75, -0.75, -0.25, -0.25, -0.75, 0.0, -0.25, 0.25, 0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 0.0, 0.25, -1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 0.25, 0.75, 0.0, -0.25, 0.0, 0.25, 0.75, -0.25, 0.75, -0.75, -0.5, -0.25, 0.75, 1.0, 0.25, -0.75, 1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, 0.75, -1.0, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, -0.25, -1.0, -0.5, ]);
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query001.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    
    device10.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array1 = new Float32Array([-0.5, -0.75, -0.75, -0.5, 0.75, -0.5, 0.25, 0.25, 0.5, 1.0, -0.5, -0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, -0.5, 0.75, 0.25, -0.25, -0.5, 0.25, -0.5, 0.0, 1.0, 0.0, 0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.25, -0.25, 0.0, 0.25, -0.25, 0.5, -1.0, 0.0, -0.25, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, 0.75, 1.0, 0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, 1.0, -1.0, 0.25, 0.0, -0.25, 0.5, -0.25, -0.75, 0.25, -1.0, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.75, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    buffer000.destroy()
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const array2 = new Float32Array([-0.75, 0.5, -0.25, 0.25, -1.0, -1.0, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -0.75, -0.75, 0.25, 0.5, 0.5, -0.5, 1.0, 0.5, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.5, -0.75, 1.0, 1.0, -0.75, -0.25, 0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 1.0, -0.25, 1.0, -1.0, -1.0, -0.25, -0.25, -0.25, 1.0, 0.0, 0.5, -0.75, -0.5, 0.5, -1.0, 0.75, 0.5, -0.75, 0.0, 0.5, 0.0, -0.5, 1.0, 0.75, 0.75, 0.75, -0.75, -0.25, -1.0, 0.25, -0.5, -0.75, 1.0, 0.5, -0.25, -0.25, -0.75, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.75, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.25, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array3 = new Float32Array([-0.25, 0.5, 0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.75, 1.0, -0.5, -0.25, -1.0, -0.75, 0.5, -0.5, 0.0, 0.25, -0.75, 0.0, 0.25, 0.25, -0.75, 0.75, -0.75, -0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -0.5, -0.5, 1.0, 0.25, -0.75, -0.25, 0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -1.0, 0.5, -0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, 0.25, 0.75, 0.25, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, -0.25, -0.25, 0.5, -0.25, -1.0, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.5, 1.0, 0.25, -0.25, 0.25, 0.75, 1.0, -0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 1.0, 0.0, -0.75, -0.5, 0.75, ]);
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
        occlusionQuerySet: query001
    });
    query001.destroy()
    render_bundle_encoder001.popDebugGroup();
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array4 = new Float32Array([0.0, 0.75, 0.25, 1.0, 0.0, -1.0, 0.5, -0.25, -0.5, 1.0, 0.75, 0.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.75, -1.0, -1.0, 0.25, 0.25, 0.0, 0.0, 0.0, -0.25, 0.5, 0.25, -0.5, 0.0, 1.0, 1.0, 0.25, -0.5, -0.75, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 0.5, 0.5, 0.5, 1.0, 0.25, 0.5, -1.0, 0.0, -1.0, -0.25, 0.5, 1.0, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.0, 0.0, -0.75, 0.25, 0.5, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 1.0, 0.0, 0.75, 0.75, 0.75, 0.25, -1.0, -0.75, -0.5, 0.25, -0.5, ]);
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
    
    render_pass_encoder0010.setStencilReference(1);
    buffer002.destroy()
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.executeBundles([])
    
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    texture002.destroy();
    buffer001.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    texture000.destroy();
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.setStencilReference(1);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const array5 = new Float32Array([1.0, 0.25, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, 0.25, -1.0, 0.75, -1.0, -0.5, 0.25, -0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.25, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, 0.25, -1.0, 1.0, 0.75, 0.25, 0.75, 0.0, -0.5, -1.0, -0.25, 0.25, 0.0, -1.0, -0.25, -0.75, 0.75, -0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, 0.0, -0.5, 0.5, -0.5, 1.0, 0.0, 0.25, 0.75, 0.0, -0.25, -1.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.75, -0.5, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, 0.0, 0.25, -0.5, -1.0, 0.5, 0.75, -0.75, 0.25, 0.5, -1.0, ]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    query000.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0010.executeBundles([])
    
    
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setStencilReference(1);
    query002.destroy()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.executeBundles([])
    
    
    
    render_pass_encoder0010.executeBundles([])
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    texture001.destroy();
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.popDebugGroup();
    
    query000.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder0020.popDebugGroup();
    buffer003.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
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
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    texture003.destroy();
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0020.insertDebugMarker("marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    render_pass_encoder0010.setStencilReference(1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    buffer005.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    
    texture004.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0010, 0);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    compute_pass_encoder0000.popDebugGroup()
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    buffer0012.destroy()
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    buffer0014.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    buffer004.destroy()
    
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    buffer007.destroy()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module0015,
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
            module: shader_module0015,
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array0, 0, array0.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline006);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const array6 = new Float32Array([-0.5, 0.5, -0.5, -0.5, 0.0, -1.0, -0.75, 0.5, 0.0, -0.25, -0.25, 0.25, 0.25, 0.75, 0.75, -0.25, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, -0.25, 1.0, 0.25, -0.75, -1.0, 0.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.25, 1.0, 0.0, -0.25, 1.0, 0.75, -0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 0.0, 0.25, -1.0, 0.5, -1.0, -0.25, 0.5, 1.0, -0.75, 1.0, -0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -0.25, 0.25, -1.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.75, 0.75, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -0.25, 0.5, 0.25, -0.5, 1.0, 0.75, -1.0, 0.75, ]);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer006.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.setVertexBuffer(0, buffer002);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer008.destroy()
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module0015,
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
            module: shader_module0015,
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
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.pushErrorScope("validation");
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    render_bundle_encoder001.setVertexBuffer(0, buffer002);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.draw(3);
    
    
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    
    
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query002.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    buffer009.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer0013.destroy()
    
    query002.destroy()
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0010.popDebugGroup();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.5, 1.0, 0.75, 1.0, -0.75, 0.75, -1.0, 1.0, -1.0, 0.25, -0.75, -0.25, -0.5, -0.5, 1.0, -0.25, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, -0.75, -0.75, 0.0, 0.5, 0.5, 0.75, 0.75, 1.0, 0.5, -0.75, 0.25, -0.5, -1.0, 0.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.5, -0.75, -0.75, -0.5, 0.5, 0.25, 0.0, -1.0, -1.0, -0.5, -0.25, 0.5, -0.5, 1.0, 1.0, -0.5, 0.75, 0.75, -0.25, -0.75, -0.75, -0.75, 1.0, -0.5, 0.75, 1.0, 0.0, 0.0, 0.75, -0.25, 0.75, -0.25, 0.25, 1.0, -0.75, 0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -0.5, 0.75, -0.75, 0.75, -0.75, 1.0, -1.0, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    
    
    
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const array8 = new Float32Array([0.0, 0.75, -0.5, 0.5, 0.0, 0.5, 1.0, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.5, -1.0, -0.25, 0.75, -0.5, 1.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, -1.0, 0.75, -0.75, 0.0, -0.5, -0.5, 0.75, -0.75, 0.5, 0.75, -1.0, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, 0.25, -0.5, 0.75, -0.75, 0.0, 1.0, 0.25, 0.5, 0.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, 0.0, -0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.5, -0.75, -0.25, 1.0, -1.0, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, 0.25, 0.0, 0.0, -0.25, 1.0, -1.0, 0.0, ]);
    
    
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.75, 1.0, 0.5, -0.75, 0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.5, -0.75, 0.75, -0.75, 0.0, -0.25, -1.0, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.5, -0.75, 0.0, -1.0, 0.0, -0.75, 0.75, 1.0, -0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, -0.75, -0.5, -0.5, 1.0, 0.75, -1.0, -0.5, 0.75, 0.0, -0.5, 0.0, -0.75, -0.25, 0.75, -0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.5, -0.25, -0.5, 0.0, -0.5, 1.0, 0.0, 0.5, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, -0.75, 0.25, 1.0, 1.0, 0.0, ]);
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module0013,
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
            module: shader_module0013,
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    command_encoder301.clearBuffer(buffer300);
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
    
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    device00.pushErrorScope("internal");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query001.destroy()
    
    query000.destroy()
    
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    var shader_module0017_code = "";
    try {
        shader_module0017_code = await fs.readFile(__dirname + '/shader_module0017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0017 = await device00.createShaderModule({ label: "shader_module0017", code: shader_module0017_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0017,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module0014,
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
            module: shader_module0014,
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
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    texture005.destroy();
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    texture300.destroy();
    device30.queue.submit([command_buffer300, ]);
    
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    device00.queue.writeBuffer(buffer0010, 0, array9, 0, array9.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_pass_encoder0020.setVertexBuffer(0, buffer002);
    render_pass_encoder0010.setVertexBuffer(0, buffer002);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0010.drawIndirect(buffer003, 0);
    render_pass_encoder0020.end();
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer304, ]);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
}