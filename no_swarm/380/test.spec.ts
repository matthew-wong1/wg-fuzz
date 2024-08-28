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
    const array0 = new Float32Array([-0.75, 1.0, -0.25, 1.0, 0.0, 1.0, 0.25, 0.75, 0.75, 0.25, 0.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 0.0, 0.0, -0.25, 0.5, -0.5, -0.25, 1.0, -0.5, -0.75, -0.5, 0.5, 0.25, 0.75, 0.75, -1.0, -0.75, -0.5, 1.0, 0.0, -0.5, 0.75, 1.0, -0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.0, -0.25, 0.75, 1.0, 0.25, 0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 0.5, 0.75, 0.75, 0.0, 1.0, -0.25, 1.0, -0.75, 1.0, 0.25, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, 0.75, 0.5, -0.25, -0.25, 0.5, 0.5, -0.25, -0.25, 0.75, 0.5, 0.25, -0.75, 0.0, 0.25, 0.75, -1.0, -0.75, 0.5, 0.25, 0.5, -0.75, -0.5, -0.75, 0.5, 1.0, 0.5, ]);
    
    
    
    
    const array1 = new Float32Array([0.0, -0.5, -0.25, 0.5, -0.5, 0.5, 1.0, -1.0, 0.25, 1.0, 0.5, -0.25, 0.25, -0.25, -0.75, -0.75, -0.25, -0.25, 0.5, 0.5, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, -0.25, -0.5, 0.0, 1.0, 0.5, 1.0, 0.75, -1.0, 1.0, -0.25, 0.0, 0.25, 0.0, 0.5, 0.25, -0.5, 0.25, -0.5, 0.75, 0.75, 0.25, -0.75, -0.25, 0.5, -1.0, 1.0, -0.25, 0.5, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, -0.75, -1.0, 0.25, 0.75, -0.5, -1.0, -1.0, 0.75, -0.25, 0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.25, 0.5, 0.75, 0.75, 0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, ]);
    const array2 = new Float32Array([0.25, 0.25, -1.0, 1.0, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, 0.0, 0.0, 1.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.25, -0.25, -0.75, -0.5, -1.0, -1.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.0, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, 0.25, 1.0, -1.0, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, 0.75, -0.25, 1.0, -1.0, 0.5, -1.0, 0.0, -1.0, 0.0, -0.75, -0.5, -0.5, -0.25, -0.5, 0.5, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, -0.75, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 0.0, 1.0, 0.75, -0.5, 0.5, 0.5, 0.25, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const array3 = new Float32Array([0.75, 0.75, 0.75, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, 0.75, 0.0, -0.75, -0.25, 1.0, -0.25, -1.0, 0.25, 0.25, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, -1.0, -0.75, 0.5, -0.75, 0.0, 0.25, 1.0, 0.5, 0.0, 0.5, 1.0, 0.0, -0.5, 0.5, 1.0, -0.5, -0.25, -1.0, -0.75, -1.0, -0.5, -1.0, 0.25, 0.5, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.0, -0.5, -1.0, 0.25, 1.0, -0.75, 0.0, -0.25, -0.25, -0.25, -0.25, -0.5, -0.25, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, 0.75, 1.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.5, -0.5, 0.0, -0.5, 0.0, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device10.pushErrorScope("internal");
    query100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    device00.pushErrorScope("out-of-memory");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array4 = new Float32Array([-0.75, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, 0.0, 0.75, 1.0, 0.0, -1.0, 1.0, 0.5, -0.25, 1.0, 0.75, -1.0, 0.5, 0.75, 1.0, -0.5, -0.25, -1.0, 0.25, -0.25, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, -0.5, 0.5, -0.5, 0.75, -1.0, -0.25, 0.25, 0.5, -0.5, 0.75, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, -0.75, -0.75, -1.0, -1.0, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.75, 0.5, -0.25, -0.25, 1.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.5, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, 0.0, 0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 0.25, -1.0, ]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    command_encoder102.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    buffer000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([-0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.0, 0.25, 0.0, -0.25, 0.0, 1.0, 0.0, 0.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, 0.75, 0.5, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.75, -1.0, -0.5, 0.25, 0.5, 0.25, 0.5, 0.5, -0.75, -1.0, 1.0, 0.75, 0.5, 0.75, 0.25, 0.75, -1.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, -0.75, -0.75, 0.25, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.5, -0.25, 0.25, 0.0, -1.0, 0.5, 0.0, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.5, -0.75, 0.0, 0.75, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([0.5, -0.5, 0.5, 0.25, 0.25, -0.75, 0.75, 0.0, 0.25, 0.5, -0.25, -1.0, 0.0, 1.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.5, 1.0, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, -0.5, -0.5, -0.25, 0.0, -1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 0.75, 0.75, 0.0, -0.25, 0.0, 0.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.5, 0.0, 0.0, -0.5, 0.0, 0.25, 0.75, -1.0, -0.75, 1.0, -0.75, 0.75, 0.0, -0.5, -0.5, -0.75, -1.0, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, -0.25, 0.75, 0.25, 0.5, 0.75, -0.75, 0.75, 0.25, 0.5, -1.0, -1.0, -0.75, -0.75, 0.0, -1.0, 0.75, -1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -1.0, -0.75, ]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_buffer104 = command_encoder104.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    buffer001.destroy()
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
        occlusionQuerySet: query100
    });
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array7 = new Float32Array([0.5, 0.25, -0.5, -0.25, -0.25, 1.0, -0.5, -0.5, 0.0, -0.5, 0.25, -0.5, -0.75, -0.5, 0.0, -1.0, 0.0, -1.0, -0.25, 0.0, -1.0, 0.75, -0.25, 1.0, 0.25, 0.5, 0.75, 0.25, -0.75, -1.0, -0.5, 0.75, 0.0, 0.0, 0.0, 0.75, 0.25, -1.0, 1.0, -0.25, 0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, -0.25, -1.0, 1.0, 0.0, 0.5, -0.5, 0.0, -0.25, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -0.5, 0.0, 0.0, 0.0, 0.75, 0.0, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 0.5, 0.0, -0.25, -0.5, 1.0, 0.5, 1.0, -0.25, 1.0, -0.25, 0.5, ]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const command_buffer000 = command_encoder000.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query003.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query100.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query000.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    texture200.destroy();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    device10.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query002.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    texture101.destroy();
    texture202.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture103.destroy();
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group100);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    device10.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture201.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    buffer002.destroy()
    query101.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query104.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("validation");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
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
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer104, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer104, 0);
    query001.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.insertDebugMarker("mymarker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    texture104.destroy();
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    buffer104.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.submit([command_buffer104, ]);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder102.setPipeline(render_pipeline102);
    query100.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const array8 = new Float32Array([0.75, 0.5, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.25, -0.75, -0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 0.5, -1.0, 0.5, 0.0, -1.0, 1.0, -1.0, 0.5, 0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 1.0, 0.0, 0.0, -1.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 0.25, 0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.75, 1.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, 1.0, -0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 1.0, -0.25, 1.0, 0.0, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.75, 0.5, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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
    device10.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    query103.destroy()
    render_pass_encoder1020.setStencilReference(1);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    render_bundle_encoder102.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
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
    
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    compute_pass_encoder1030.popDebugGroup()
    texture003.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer107.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline201);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture105.destroy();
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_pass_encoder2000.popDebugGroup();
    
    buffer108.destroy()
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    render_pass_encoder2000.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    query101.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    buffer106.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    compute_pass_encoder1030.end();
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    compute_pass_encoder2020.insertDebugMarker("marker")
    query003.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.popDebugGroup()
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    device20.queue.writeTexture({ texture: texture203 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
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
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    device20.pushErrorScope("internal");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    texture004.destroy();
    query104.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query106.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer101.destroy()
    
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder2000.insertDebugMarker("marker");
    texture002.destroy();
    device10.queue.writeBuffer(buffer109, 0, array8, 0, array8.length);
    buffer105.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query105.destroy()
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    device10.queue.writeTexture({ texture: texture106 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    query105.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    compute_pass_encoder1050.setPipeline(compute_pipeline1010);
    render_pass_encoder0020.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    compute_pass_encoder1000.popDebugGroup()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group107);
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    compute_pass_encoder0010.end();
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const command_buffer001 = command_encoder001.finish();
    command_encoder101.popDebugGroup()
    compute_pass_encoder1000.end();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1050.end();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer105, ]);
    device00.queue.submit([command_buffer001, ]);
}