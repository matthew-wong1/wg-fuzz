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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query100.destroy()
    const array0 = new Float32Array([0.5, -1.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.5, 0.5, -0.5, 0.0, -0.25, 0.25, 1.0, 0.25, -0.25, -0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.5, -0.5, 0.0, -1.0, 0.5, 0.0, -0.75, -1.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.0, -1.0, 0.75, -0.75, 1.0, -1.0, -0.5, 0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, 0.75, 0.5, -0.75, 1.0, -0.25, -0.5, -1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.25, 0.25, 0.5, -0.75, -0.75, 0.25, -0.25, -0.75, 0.0, 0.0, 0.5, -1.0, 0.75, -0.5, -0.25, -0.5, 1.0, -0.75, 1.0, -0.5, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, 1.0, 0.75, -0.5, -0.75, 0.25, -0.25, -0.5, 0.75, ]);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    texture100.destroy();
    
    device10.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array1 = new Float32Array([-0.5, 0.5, -0.75, 1.0, -0.25, 0.75, 0.75, 0.5, -0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, 0.5, -1.0, -0.25, 0.0, 0.5, -0.5, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.5, 0.75, 0.5, 0.5, 0.0, 0.25, -1.0, 0.25, 0.75, -0.25, 0.5, 0.75, 1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.75, 0.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 0.25, 1.0, 0.0, ]);
    
    
    
    
    
    
    const array2 = new Float32Array([-0.25, 0.5, 0.5, -0.5, -0.5, -0.5, -0.25, -0.25, 0.75, 0.25, -0.25, -1.0, 0.75, 1.0, 0.25, 1.0, 0.5, 0.75, 1.0, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, 0.75, -0.75, -0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, -0.5, 0.75, -1.0, 0.75, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 0.5, 0.5, 0.25, 0.5, -0.75, 0.5, -0.75, -1.0, 1.0, 0.75, 1.0, -0.25, -0.5, 0.0, 0.5, 0.25, 0.5, 0.0, -0.75, -0.25, 0.75, -0.5, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.75, -0.5, -0.25, 1.0, 0.5, -0.5, 0.25, 0.5, 1.0, 0.0, -1.0, 0.0, 0.25, -0.75, ]);
    
    const array3 = new Float32Array([-0.5, -0.25, 1.0, -0.5, 0.75, 0.5, 0.0, -0.75, 1.0, -0.5, 0.75, -0.5, -0.25, 0.75, -0.5, 1.0, 0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, -1.0, -0.75, 0.75, -0.25, 0.25, 0.25, -0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.0, -0.75, 0.0, -0.75, 0.5, -0.75, 0.5, -0.25, 0.0, 1.0, -0.25, 0.25, 0.0, 0.75, 0.5, 0.25, 0.5, -0.25, 0.0, 0.75, -0.75, 0.25, 0.25, -1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.75, 0.25, -0.5, 0.0, -0.25, 0.5, -0.5, 0.25, 1.0, -0.25, 1.0, 0.75, -0.75, 1.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, -1.0, 1.0, -0.5, -1.0, ]);
    const array4 = new Float32Array([0.5, -0.5, 1.0, 0.0, 0.75, 0.0, 0.5, -0.5, 0.5, 0.75, 0.0, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.75, -0.5, -1.0, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -1.0, -0.5, 1.0, 1.0, 0.5, 0.25, -0.25, 0.0, 0.75, -0.75, -0.25, -1.0, -0.5, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 0.5, 0.25, -1.0, -0.75, 0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -1.0, 0.25, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 1.0, -0.75, -1.0, 1.0, 0.5, ]);
    
    const array5 = new Float32Array([0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.0, 0.0, -0.5, -0.5, -1.0, 0.75, 1.0, -0.5, 0.0, -0.5, 0.0, 0.5, 0.25, 1.0, -0.25, 0.5, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 1.0, -0.5, -1.0, 0.75, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.25, 0.25, -1.0, -1.0, -0.75, 0.0, -1.0, -0.5, -1.0, 0.5, 0.75, -0.25, -0.5, -0.75, 0.0, 0.25, 0.75, 0.0, 0.0, -0.25, -1.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.5, -1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.25, 0.25, 1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const array6 = new Float32Array([0.75, -0.5, -0.25, -0.25, -1.0, 0.25, 1.0, -1.0, 0.0, -0.25, 0.75, 0.75, -0.75, 0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 0.75, -0.5, 0.0, -1.0, 0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.5, 0.0, -0.75, 1.0, -0.75, 0.0, 0.25, 1.0, 0.25, -0.5, -1.0, 0.0, -0.5, 1.0, -0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 1.0, 0.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.0, -1.0, -0.25, 0.5, -1.0, -0.5, 0.75, 0.75, 0.5, 0.25, -0.75, 0.25, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, 0.25, -1.0, 0.75, 1.0, 0.0, -0.5, 1.0, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, 0.5, ]);
    const array7 = new Float32Array([1.0, 1.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.25, -0.5, -1.0, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, 1.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5, -0.75, -0.5, 0.75, -0.5, -1.0, 0.0, -0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.5, 1.0, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, 1.0, 0.5, -0.75, -0.75, 0.75, 0.0, -0.25, -0.25, -0.25, 1.0, 0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -0.25, 0.0, -0.5, -0.75, -0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder401.pushDebugGroup("mygroupmarker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
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
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder401.insertDebugMarker("mymarker");
    
    device40.pushErrorScope("out-of-memory");
    query401.destroy()
    
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    compute_pass_encoder4020.insertDebugMarker("marker")
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder401.popDebugGroup()
    
    command_encoder401.insertDebugMarker("mymarker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    query401.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const command_buffer401 = command_encoder401.finish();
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer401.destroy()
    device40.pushErrorScope("internal");
    
    
    query400.destroy()
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query401.destroy()
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
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.pushErrorScope("out-of-memory");
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.setStencilReference(1);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
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
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4040.pushDebugGroup("group_marker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_pass_encoder4040.insertDebugMarker("marker");
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group400);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device50.pushErrorScope("validation");
    
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query400.destroy()
    
    query401.destroy()
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer402.destroy()
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4030.setStencilReference(1);
    
    render_pass_encoder4040.setStencilReference(1);
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4030.executeBundles([])
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    device40.pushErrorScope("out-of-memory");
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder4030.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    query402.destroy()
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder4040.insertDebugMarker("marker");
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4030.insertDebugMarker("marker");
    buffer403.destroy()
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder401.setPipeline(render_pipeline401);
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder4040.setPipeline(render_pipeline401);
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
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

    render_pass_encoder4040.setBindGroup(0, bind_group401);
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query402
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query402.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4050.setStencilReference(1);
    render_pass_encoder4050.setPipeline(render_pipeline401);
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder4050.setStencilReference(1);
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
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

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    render_pass_encoder4040.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4050.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    query401.destroy()
    buffer404.destroy()
    
    render_pass_encoder4040.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
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
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group403);
    command_encoder500.pushDebugGroup("mygroupmarker")
    buffer405.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    render_pass_encoder4040.setStencilReference(1);
    const array8 = new Float32Array([-0.5, 0.75, 0.75, 0.0, -0.75, -0.5, -0.5, 1.0, -0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -1.0, 0.25, -0.5, 0.25, -0.25, -0.5, -0.75, 0.25, -0.75, 0.25, -0.75, 0.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -0.5, 0.0, 0.0, 0.75, -0.5, 0.5, 0.5, -1.0, 0.5, -0.5, 0.75, 0.5, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, -0.5, -0.5, 0.75, 0.75, 0.5, 1.0, -1.0, -1.0, 0.25, 0.0, -1.0, -0.75, -0.75, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 0.75, -0.75, 0.5, -0.5, 0.5, 0.25, 0.0, -0.75, -0.75, 0.25, -0.75, 0.25, -1.0, 1.0, 1.0, 1.0, -0.5, ]);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_pass_encoder4040.insertDebugMarker("marker");
    render_pass_encoder4030.executeBundles([])
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const array9 = new Float32Array([-0.25, -0.75, 0.5, -0.5, -1.0, -0.5, 0.0, -0.75, 0.0, 1.0, -0.75, 0.25, 0.75, -0.25, -0.5, 0.0, -0.5, 0.0, -0.75, -1.0, -1.0, 0.0, -1.0, -0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 0.5, -0.75, -1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, 0.75, 1.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 1.0, 0.75, -0.5, 0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 1.0, -0.25, 0.75, 0.0, -0.25, 0.25, 1.0, 0.0, -0.5, -0.25, -0.25, -1.0, -0.75, 0.25, 1.0, 0.5, 0.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.5, 0.5, -1.0, 0.25, 0.75, 0.25, 0.0, ]);
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.insertDebugMarker("marker");
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query400.destroy()
    render_pass_encoder4040.setStencilReference(1);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4040.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    texture300.destroy();
    command_encoder501.insertDebugMarker("mymarker");
    query400.destroy()
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4030.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query400.destroy()
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    render_pass_encoder4050.setBindGroup(0, bind_group404);
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4050.insertDebugMarker("marker");
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder4050.pushDebugGroup("group_marker");
    
    render_pass_encoder4040.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query401.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.insertDebugMarker("mymarker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4030.setPipeline(render_pipeline404);
    
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    command_encoder500.popDebugGroup()
    buffer407.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
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
        occlusionQuerySet: query301
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    compute_pass_encoder4000.popDebugGroup()
    
    const command_buffer501 = command_encoder501.finish();
    
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4040.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query404.destroy()
    
    
    render_pass_encoder4050.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder3000.executeBundles([])
    
    
    query400.destroy()
    query300.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer4011.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_bundle_encoder401.insertDebugMarker("marker");
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
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    
    query401.destroy()
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group405);
    render_pass_encoder3000.popDebugGroup();
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4050.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder4000.end();
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4020.end();
    const command_buffer400 = command_encoder400.finish();
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    command_encoder402.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
}