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
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const array0 = new Float32Array([-0.5, 0.25, 0.0, -0.75, 1.0, 0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.5, -1.0, 0.75, -1.0, -1.0, -0.75, -0.5, -0.5, 1.0, 0.5, 0.5, -0.5, -0.5, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, 0.5, 0.25, -1.0, 0.5, -1.0, 0.75, 0.75, 0.0, -0.75, -0.75, -0.25, 0.75, -0.25, -1.0, -1.0, 0.75, -0.75, -0.75, -0.25, 0.0, 0.0, 0.25, -0.5, -0.25, 0.75, -0.25, 1.0, -1.0, 0.0, 0.75, 1.0, 0.75, 0.25, -0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.0, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.75, 0.75, -0.5, -0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 0.5, 0.5, -0.75, 0.25, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, -0.75, -1.0, 0.5, 0.5, 1.0, ]);
    
    const array1 = new Float32Array([-0.25, 0.75, -0.5, 0.5, 0.0, -1.0, -0.5, 0.25, 0.75, 0.75, 0.25, -0.5, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, 1.0, 0.0, -0.5, 0.5, -1.0, 0.5, 1.0, -1.0, 0.25, -0.25, 1.0, 0.25, -0.25, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, -0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.75, 0.25, -0.25, 0.5, 0.25, 0.5, 0.25, 1.0, 0.5, 0.25, 0.25, 1.0, 0.75, 0.75, 0.0, 0.25, 0.0, 1.0, -0.25, -1.0, 1.0, 0.75, 0.5, -1.0, 0.75, 1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -0.5, 1.0, 0.25, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.25, 0.25, -0.75, 0.25, 0.25, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, 0.25, ]);
    
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array2 = new Float32Array([-1.0, -1.0, 1.0, -0.25, -0.5, -0.75, 0.75, 0.0, 0.0, 0.5, -0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, -0.5, 0.0, 1.0, 0.75, 0.75, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 1.0, 0.75, 0.5, 0.5, -0.5, 0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, -0.5, -1.0, 0.75, 1.0, 0.5, 0.5, 0.25, 1.0, 0.0, -0.25, -0.25, -0.75, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -1.0, -0.5, -1.0, 0.75, -1.0, 1.0, 0.0, 0.25, 0.25, -0.5, -1.0, 0.25, 0.25, 0.25, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 1.0, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array3 = new Float32Array([0.75, -1.0, 1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.0, 0.5, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.25, -0.75, -0.5, -0.75, -0.75, 0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 0.75, 0.25, 0.75, 0.25, 0.0, -0.25, -1.0, -0.5, 0.0, 0.5, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.25, 0.25, -0.5, -1.0, 0.0, -0.5, -0.75, -0.75, 0.0, 0.75, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, 0.75, -0.5, -0.25, ]);
    
    
    
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    buffer100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_buffer101 = command_encoder101.finish();
    const array4 = new Float32Array([-0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -0.75, 1.0, 0.75, -0.75, 0.0, 1.0, -0.25, 0.5, 1.0, 0.0, 0.75, 0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, -1.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.0, -0.5, -1.0, -1.0, 0.5, -0.75, -0.25, -1.0, -0.25, -1.0, -0.25, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, -1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, 0.5, -1.0, 0.75, 0.5, -0.5, 0.25, -0.75, 0.5, -0.25, -0.25, 0.25, -0.25, -1.0, 0.0, 0.75, 0.25, 0.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 0.75, 0.5, 0.75, 0.25, ]);
    command_encoder100.popDebugGroup()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.pushErrorScope("out-of-memory");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query100.destroy()
    
    query100.destroy()
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    texture101.destroy();
    query101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
        occlusionQuerySet: undefined
    });
    device20.destroy();
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1020.executeBundles([])
    texture102.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array5 = new Float32Array([0.0, 0.0, 0.0, -0.25, 0.5, -0.5, -1.0, 0.75, -0.25, 0.75, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, -0.5, -1.0, -0.25, 0.0, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, -1.0, 0.5, -0.25, 1.0, 0.25, 0.0, -0.25, -0.5, 0.75, 0.25, -0.25, 0.5, -0.75, 0.25, 1.0, -0.25, -1.0, 0.5, 0.25, 0.0, -1.0, -1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, 1.0, -0.25, -0.75, -0.75, -1.0, 0.0, 0.5, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 0.25, 1.0, 0.5, -1.0, 0.75, -0.25, 1.0, -0.25, 0.0, 0.75, 0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, 0.25, -0.5, ]);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_buffer104 = command_encoder104.finish();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1050.executeBundles([])
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query103.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const array6 = new Float32Array([-1.0, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, -1.0, 0.5, 0.75, 1.0, 0.0, 0.25, -0.25, 0.25, 0.0, -0.5, 0.75, -1.0, -0.75, 0.25, 0.5, 0.25, 0.75, 0.25, -0.25, 0.5, 0.0, 0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.75, -0.25, 1.0, 1.0, 0.75, -0.25, 0.75, 0.5, -0.25, -0.5, 1.0, 0.5, 1.0, -0.25, 0.0, -0.25, 1.0, 0.75, -1.0, -0.5, 1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, 0.75, -1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.25, 0.25, 0.75, -0.5, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, 0.75, -0.75, 1.0, -0.5, 0.75, 0.25, 0.0, 0.25, 1.0, -1.0, -0.25, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer103.destroy()
    
    texture100.destroy();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    device10.pushErrorScope("out-of-memory");
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    query100.destroy()
    buffer102.destroy()
    command_encoder106.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query104
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1050.setStencilReference(1);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1050.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1030.popDebugGroup()
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    buffer101.destroy()
    
    device40.destroy();
    query101.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const array7 = new Float32Array([0.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, 0.75, -1.0, -1.0, 0.25, 0.0, 0.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, 0.75, -0.75, 0.5, 0.25, 1.0, 1.0, -0.5, 0.75, -0.75, -0.75, 0.0, 1.0, -1.0, -0.25, 0.5, 1.0, -0.25, -1.0, -0.75, 0.5, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, 0.75, 0.0, 1.0, -0.75, -0.75, 0.0, -0.5, -0.25, 0.5, 0.0, 0.75, 0.25, -1.0, 1.0, 0.75, 1.0, 0.5, -0.25, 0.0, 1.0, 0.25, -1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 1.0, 0.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, 1.0, 0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 1.0, -0.75, 1.0, 0.5, ]);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    compute_pass_encoder1000.popDebugGroup()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    const array8 = new Float32Array([0.75, 0.5, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.75, -0.5, -0.75, -0.5, -0.75, -0.75, -0.5, -0.25, 1.0, -1.0, -0.5, 0.75, 0.5, 0.0, 0.75, -0.75, 0.5, -0.25, -0.25, -0.25, 0.5, -0.75, -0.5, 0.25, 0.0, 0.75, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, -0.25, 0.25, 0.25, -0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.5, 1.0, 0.25, 0.0, 0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, -1.0, 0.0, 0.0, -0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 1.0, 0.0, -0.5, 0.75, -0.5, -0.5, -0.75, -0.25, -1.0, 0.25, ]);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_pass_encoder1070.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
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
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1070.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.popDebugGroup()
    texture103.destroy();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1020.setStencilReference(1);
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder1030.popDebugGroup()
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1070.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    buffer500.destroy()
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device30.destroy();
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1080.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    buffer501.destroy()
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    
    render_pass_encoder1080.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1070.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1080.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    query104.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query501.destroy()
    
    render_pass_encoder1070.executeBundles([])
    render_pass_encoder1060.executeBundles([])
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
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    query103.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const array9 = new Float32Array([-0.75, -0.25, 0.5, 0.0, -0.5, -0.75, -1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 1.0, -0.25, -0.5, 0.5, -0.25, -0.75, 0.25, -1.0, -0.5, -1.0, 0.75, 0.25, 0.5, 0.5, 0.25, 1.0, -0.5, -0.75, -0.25, 0.75, 1.0, 0.5, -0.75, 1.0, -0.25, -1.0, -1.0, 0.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 0.75, 0.25, 0.5, 0.0, 0.25, 0.0, -0.75, -0.25, 0.25, 0.25, -0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 0.25, -0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 1.0, 1.0, -0.75, 0.25, 0.0, 0.25, 0.0, 1.0, -0.25, 0.5, -0.5, 0.5, 0.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, -0.25, 0.75, 1.0, -0.5, 0.5, ]);
    
    texture104.destroy();
    render_pass_encoder1070.pushDebugGroup("group_marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout108]
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1080.popDebugGroup();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1060.setStencilReference(1);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    buffer104.destroy()
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.executeBundles([])
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1080.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.executeBundles([])
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1070.setStencilReference(1);
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1090.setStencilReference(1);
    render_pass_encoder1090.executeBundles([])
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query106.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1070.insertDebugMarker("marker");
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder1090.executeBundles([])
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    query105.destroy()
    query104.destroy()
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query504.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.destroy();
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    render_pass_encoder1050.popDebugGroup();
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout107]
    });
    const command_encoder1010 = device10.createCommandEncoder({ label: "command_encoder1010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1070.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_pass_encoder1070.executeBundles([])
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.executeBundles([])
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer1010 = command_encoder1010.finish();
    render_pass_encoder1070.executeBundles([])
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout107]
    });
    device10.pushErrorScope("internal");
    device10.queue.writeTexture({ texture: texture105 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1019,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1090.setStencilReference(1);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}