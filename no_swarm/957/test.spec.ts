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
    const array0 = new Float32Array([0.25, -0.25, 0.0, 1.0, -1.0, -0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.75, 1.0, -1.0, 0.5, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, -0.5, 0.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.75, -1.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.25, 0.75, -0.25, -1.0, 0.5, -0.75, 1.0, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, 0.5, -0.5, 1.0, 0.5, -1.0, -0.5, 0.25, 1.0, 1.0, -0.75, -0.5, 0.5, -0.5, 1.0, 0.0, -0.75, -0.75, 0.5, 0.0, -1.0, 0.75, -0.5, -0.75, -0.75, 0.75, -0.25, 1.0, -1.0, -0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 0.0, 0.25, -0.25, -0.25, 1.0, 0.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture000 = device00.createTexture({
        label: "texture000",
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array1 = new Float32Array([-0.5, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.75, -0.25, 0.25, -0.75, 0.75, 0.5, 0.75, 0.5, 0.75, -0.5, 0.0, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 1.0, 0.5, -0.5, 0.0, 1.0, 0.75, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, -0.75, 0.75, 0.75, 0.75, -0.25, 0.75, -0.5, 0.75, -0.75, 0.75, -0.5, 0.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.75, 0.25, -0.25, -0.75, -0.75, -0.25, 1.0, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, 0.75, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.pushErrorScope("internal");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.pushDebugGroup("group_marker");
    texture001.destroy();
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    const array2 = new Float32Array([0.25, 0.5, -0.75, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, -1.0, -0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, -0.5, 0.5, -1.0, 1.0, 0.75, 0.25, -0.5, 0.5, -0.5, -0.25, -1.0, -0.5, 1.0, -0.25, 0.0, 0.0, 0.5, -0.75, -0.5, -0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.0, 0.75, 0.75, -1.0, 0.75, -0.5, -0.25, -0.5, 0.75, -1.0, 1.0, 0.5, -0.75, -0.75, 0.5, 0.25, 0.25, 0.75, -1.0, 0.0, -0.5, -0.25, -0.5, 1.0, -1.0, -1.0, -0.25, 0.5, 0.25, 0.5, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 1.0, -1.0, 0.5, 0.5, -1.0, -0.75, 0.75, 0.0, 0.25, 1.0, -0.75, 0.5, 0.25, -0.25, 0.5, 0.25, 0.25, ]);
    
    
    render_bundle_encoder000.popDebugGroup();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    texture002.destroy();
    
    device00.pushErrorScope("internal");
    render_pass_encoder0000.executeBundles([])
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
    render_pass_encoder0020.executeBundles([])
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer002.destroy()
    render_pass_encoder0000.beginOcclusionQuery(0)
    const array3 = new Float32Array([0.5, 0.75, -0.75, -0.5, -0.25, 0.5, 0.25, -0.25, -0.75, 1.0, 0.5, 0.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -0.75, -0.25, 0.0, 0.25, -0.25, 1.0, -0.75, 1.0, 0.25, 1.0, 0.75, -0.75, -0.25, -0.75, 1.0, 0.75, 0.25, 0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -0.25, 0.75, 0.25, -0.5, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 1.0, -0.5, 0.0, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.25, 0.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, -0.25, -0.25, 0.0, 0.0, -0.5, -1.0, 0.5, 1.0, -0.75, -0.25, 1.0, -1.0, 0.25, 0.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.0, ]);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.pushErrorScope("internal");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setStencilReference(1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array4 = new Float32Array([0.5, -0.5, 1.0, 0.25, 0.75, 0.5, 1.0, -1.0, 0.75, -0.25, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.5, -0.75, -0.75, -0.25, 1.0, 0.25, 0.0, 0.5, -0.75, -0.25, 0.25, -1.0, -0.5, -0.5, -1.0, 1.0, 0.25, 1.0, -1.0, 0.5, 0.5, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.0, -0.5, 0.0, 0.0, -0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -0.25, 0.0, -0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, -0.5, -0.5, 0.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.75, 0.75, -0.5, 0.5, -0.25, 0.0, 0.25, 0.25, 0.75, -0.25, -1.0, -1.0, 0.5, -0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -0.75, -0.75, ]);
    
    render_pass_encoder0030.setStencilReference(1);
    device10.destroy();
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0000.executeBundles([])
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.popDebugGroup();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.setPipeline(compute_pipeline003);
    
    render_pass_encoder0000.setStencilReference(1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0020.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query001
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder0000.endOcclusionQuery()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.popDebugGroup();
    buffer003.destroy()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query001.destroy()
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.75, 0.75, -0.25, 1.0, 1.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.0, 0.25, -0.25, 0.75, 0.0, 1.0, 0.75, 0.0, 0.75, 1.0, -0.25, -0.75, 0.75, 0.0, -1.0, -1.0, 0.0, 0.0, 0.5, -1.0, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, 0.75, 0.0, -1.0, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 0.75, -1.0, -0.75, 1.0, -0.5, 0.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.0, -1.0, -0.5, -1.0, 0.5, -0.25, 0.0, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, -0.75, 1.0, -0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 0.75, 0.75, 0.0, -0.75, -0.25, 1.0, 0.75, -0.75, -0.25, 0.75, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([0.0, -0.25, -0.5, 0.75, -1.0, 0.25, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, -0.25, -1.0, 0.5, -0.5, -0.25, -0.75, 0.5, 0.0, -0.5, -0.25, 1.0, -0.25, -0.25, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.75, -1.0, 0.5, 1.0, -1.0, -1.0, -1.0, 0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, 1.0, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.5, -0.75, -0.5, 1.0, -0.5, -0.75, 0.75, 0.25, 0.75, 0.5, -1.0, 0.25, 0.75, -1.0, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, -0.75, 0.25, 0.25, ]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder0000.insertDebugMarker("marker");
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_pass_encoder0000.executeBundles([])
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.executeBundles([])
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    texture000.destroy();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0060.insertDebugMarker("marker");
    query000.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0030.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0060.insertDebugMarker("marker");
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder0030.setStencilReference(1);
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    query002.destroy()
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query006.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.insertDebugMarker("marker");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer006, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer006, 0);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query006.destroy()
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0050.endOcclusionQuery()
    query002.destroy()
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    const array7 = new Float32Array([0.0, 0.0, 0.25, -0.25, -0.25, -0.5, 1.0, -0.75, -0.25, 0.0, 0.25, 0.0, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, 0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.0, 1.0, -0.5, -0.5, -0.25, 0.25, -0.75, -0.5, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.25, 1.0, -0.5, -0.75, 0.0, 0.75, -0.5, -1.0, 0.25, 0.5, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, 0.75, -1.0, -0.75, 0.0, 0.0, -1.0, 0.75, 1.0, 0.75, 0.5, -0.75, 0.25, 1.0, 0.25, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 0.75, -1.0, -0.75, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    device20.pushErrorScope("validation");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setStencilReference(1);
    query001.destroy()
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    texture003.destroy();
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query006
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query004
    });
    query002.destroy()
    query006.destroy()
    render_pass_encoder0070.setPipeline(render_pipeline000);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    query005.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.popDebugGroup();
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    query000.destroy()
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    query000.destroy()
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0070.insertDebugMarker("marker");
    render_pass_encoder0060.setStencilReference(1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0020.executeBundles([])
    render_bundle_encoder000.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0060.popDebugGroup();
    
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0080.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const array8 = new Float32Array([1.0, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, 0.25, -0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -0.25, 0.0, -0.75, -1.0, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, 0.0, 0.25, -0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.25, -0.5, -0.75, -0.25, -1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.25, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -0.25, -0.25, -1.0, -0.5, 0.5, -0.25, 0.25, 0.0, 0.25, ]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0040.popDebugGroup();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
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
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group001);
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
    buffer004.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0050.setPipeline(render_pipeline000);
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer008.destroy()
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0000.setStencilReference(1);
    
    render_pass_encoder0040.popDebugGroup();
    
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    render_pass_encoder0080.executeBundles([])
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setStencilReference(1);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0070.setStencilReference(1);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_pass_encoder0080.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setPipeline(render_pipeline002);
    render_pass_encoder0070.insertDebugMarker("marker");
    command_encoder200.popDebugGroup()
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
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
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer009.destroy()
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    render_pass_encoder0060.setPipeline(render_pipeline003);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    query201.destroy()
    
    render_pass_encoder0080.setPipeline(render_pipeline004);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    render_pass_encoder0000.setPipeline(render_pipeline003);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group006);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0080.setBindGroup(0, bind_group009);
    compute_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device20.queue.submit([command_buffer200, ]);
}