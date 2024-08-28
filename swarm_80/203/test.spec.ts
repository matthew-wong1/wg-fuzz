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
    const array0 = new Float32Array([-0.5, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.75, -0.75, -1.0, -0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.0, 0.0, 1.0, 0.25, 0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 0.25, -0.25, -0.75, -0.75, -0.5, 0.25, 0.0, -1.0, -0.25, -0.5, 0.75, 0.25, -0.5, 0.0, -0.5, -0.75, 0.75, 0.0, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, 0.0, 0.75, 0.75, 0.0, 0.25, -0.75, 0.5, 0.75, 0.25, -0.5, 1.0, -0.75, -0.5, -0.25, -1.0, -0.75, -1.0, 1.0, -0.25, 0.25, -0.5, -0.25, 1.0, 0.25, -0.5, -1.0, 0.25, 0.25, -0.5, 0.75, 0.25, 0.0, -1.0, 0.5, 0.0, -1.0, 0.5, ]);
    const array1 = new Float32Array([-0.25, -1.0, -1.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 1.0, -0.75, 0.25, -0.5, -0.25, 1.0, 0.0, -1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.25, -0.25, -0.25, -0.5, 0.25, 0.0, 0.75, -1.0, -0.25, 0.25, -0.5, -0.75, 0.25, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, -0.75, 0.75, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, 0.25, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, 0.25, 0.25, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, 0.5, -1.0, 0.75, 0.75, 1.0, -0.75, 0.25, 0.5, -1.0, 0.5, -1.0, 0.75, -0.25, -1.0, -1.0, 0.5, -0.5, -0.5, -1.0, -0.25, -0.25, 1.0, -0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 1.0, 1.0, 1.0, 0.5, -0.25, 0.0, 0.75, -0.75, -0.75, 1.0, -0.25, -0.5, 0.75, 0.75, -1.0, 0.75, 1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.0, 0.5, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 0.0, 0.0, 0.75, 0.0, 0.25, 0.0, 0.5, -0.75, 0.25, -1.0, -1.0, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 0.0, 0.25, -0.5, -1.0, 0.75, -0.25, 0.25, 0.5, 1.0, 0.5, 0.25, 0.75, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, -0.5, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, 1.0, -0.75, -0.25, 0.75, 0.5, 1.0, 0.25, 0.5, -0.25, -0.25, 0.25, -0.75, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -1.0, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_buffer000 = command_encoder000.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.0, 0.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.25, -0.25, -0.25, 1.0, -0.25, -0.25, 1.0, -0.75, 0.5, 0.25, 0.5, -0.5, 0.5, -1.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -0.5, -1.0, -0.25, -1.0, 0.5, 0.5, 0.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.0, 0.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.25, 0.5, 0.75, 0.5, 0.75, 1.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.75, 0.75, 0.5, -0.25, -0.5, -0.75, -0.5, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, -0.25, 0.5, 1.0, -1.0, 0.0, 0.5, 0.0, ]);
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    texture001.destroy();
    query000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("internal");
    
    const array4 = new Float32Array([1.0, 0.5, -0.25, -0.5, -0.25, -0.75, -0.25, 0.0, 0.5, 1.0, -0.25, 0.5, 1.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.75, -0.25, 1.0, 0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 1.0, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, -0.75, 0.75, 0.75, 0.25, 0.5, 0.25, 0.25, -0.75, 0.25, 0.25, -0.25, 1.0, -1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, -0.25, 1.0, -0.25, 0.5, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 1.0, 1.0, -1.0, 0.25, 0.0, -0.75, 0.25, -0.25, 0.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, -0.75, -0.5, 0.25, 0.5, 0.75, 0.0, 0.0, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const array5 = new Float32Array([-0.25, -0.75, 0.75, 0.5, -0.25, 0.0, 0.5, -0.5, -0.5, -0.25, 1.0, -0.5, 0.75, 0.0, 0.75, 0.25, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, 0.25, -0.75, 1.0, 0.25, 1.0, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -0.5, -0.75, 0.75, -1.0, -0.25, 0.75, -1.0, 0.25, -0.25, -0.75, 0.25, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, 1.0, 0.5, 0.5, -0.25, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, 1.0, 0.5, -0.75, -0.5, -0.5, 0.75, 0.25, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, 0.25, 0.5, -0.25, -0.75, -0.5, 1.0, -0.5, 0.5, -1.0, 0.25, 1.0, -0.5, -0.25, 1.0, 0.5, 1.0, 0.0, 0.25, -1.0, -0.5, ]);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    query001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
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
        occlusionQuerySet: query001
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    texture002.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer100.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    texture003.destroy();
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    texture004.destroy();
    texture000.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.executeBundles([])
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0010.executeBundles([])
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    render_pass_encoder0010.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query002.destroy()
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    texture005.destroy();
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer000.destroy()
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    texture100.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.destroy();
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.executeBundles([])
    device10.pushErrorScope("internal");
    query003.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0020.executeBundles([])
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0010.popDebugGroup();
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query101.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query000
    });
    query001.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_pass_encoder0030.executeBundles([])
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    texture007.destroy();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder1010.popDebugGroup()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query002.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.popDebugGroup();
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query002.destroy()
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device30.pushErrorScope("validation");
    render_pass_encoder0020.popDebugGroup();
    query003.destroy()
    buffer004.destroy()
    
    query101.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder000.popDebugGroup();
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
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder300.popDebugGroup();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    buffer002.destroy()
    render_bundle_encoder100.popDebugGroup();
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
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query005.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    texture103.destroy();
    render_pass_encoder0020.setStencilReference(1);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query003.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    buffer005.destroy()
    
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    texture102.destroy();
    query300.destroy()
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    texture301.destroy();
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    query002.destroy()
    query003.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    query003.destroy()
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query004.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    render_bundle_encoder300.popDebugGroup();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    buffer502.destroy()
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    query102.destroy()
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer500.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0020.executeBundles([])
    
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture500.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0020.popDebugGroup();
    device50.pushErrorScope("out-of-memory");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query100.destroy()
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder0010.popDebugGroup();
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder1020.executeBundles([])
    device50.pushErrorScope("internal");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    query100.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder5010.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    query006.destroy()
    render_pass_encoder5010.executeBundles([])
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query003
    });
    texture501.destroy();
    compute_pass_encoder1000.popDebugGroup()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder101.popDebugGroup();
    
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture006.width / 2, texture006.height / 2);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
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
    query000.destroy()
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.popDebugGroup();
}