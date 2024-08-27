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
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.pushErrorScope("out-of-memory");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device00.pushErrorScope("out-of-memory");
    
    query001.destroy()
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
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array0 = new Float32Array([0.75, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, -1.0, -0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 0.75, 0.5, -0.75, -0.75, 0.5, -0.25, -0.5, 0.75, 0.75, -0.5, 0.5, 0.25, 0.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.25, -0.25, 0.5, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, 0.25, -1.0, -0.75, -0.75, 0.0, 1.0, -0.5, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, 0.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, 0.0, -0.25, 0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -0.5, 0.0, -0.5, -0.75, 0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.75, ]);
    command_encoder000.pushDebugGroup("mygroupmarker")
    query000.destroy()
    buffer000.destroy()
    buffer000.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder000.insertDebugMarker("mymarker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("validation");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    
    
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query003.destroy()
    
    
    compute_pass_encoder0000.popDebugGroup()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture000.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array1 = new Float32Array([-0.5, 0.75, 0.75, -0.25, 0.25, -0.75, 1.0, -1.0, -0.75, -0.5, 0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -0.5, 0.5, 0.5, 0.5, 0.25, 0.25, -0.5, 1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.5, 0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.5, 0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, 0.25, -0.25, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 1.0, -1.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.25, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 1.0, 1.0, -1.0, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, 1.0, -1.0, -1.0, -0.75, 0.75, -0.5, 0.75, -0.5, ]);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array2 = new Float32Array([0.75, -0.75, 0.5, 1.0, 0.5, 1.0, 0.0, 0.25, 1.0, 0.0, -0.5, 0.5, 0.5, 0.25, -0.5, 0.25, -0.25, 0.5, 1.0, 1.0, 0.0, 0.0, 0.75, 0.75, -0.75, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, 0.75, 0.0, -0.25, 1.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 0.0, -0.25, 1.0, 0.25, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, -0.75, -0.25, -0.25, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.25, 0.0, -0.75, 0.5, 0.25, 0.75, -0.5, 0.75, 0.0, 0.75, -1.0, 0.25, -0.5, 1.0, -0.75, 1.0, -0.25, -0.75, -0.5, 0.75, -0.25, 0.0, ]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query002.destroy()
    query001.destroy()
    const command_buffer001 = command_encoder001.finish();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query001.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: query001
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.pushErrorScope("validation");
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    
    query003.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    const array3 = new Float32Array([-0.75, 0.75, -1.0, 0.0, -1.0, 0.5, 0.25, -0.25, -0.75, 0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 1.0, -0.75, 0.25, 0.75, 0.75, 0.5, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, 0.25, 0.5, -0.25, 0.0, -0.25, -0.25, 0.0, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, -0.5, 0.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 1.0, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 0.0, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, -0.5, 1.0, 0.0, 0.25, -1.0, -1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, -0.5, 0.0, -0.25, 0.75, 1.0, -0.25, -0.25, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
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
        occlusionQuerySet: query002
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    query001.destroy()
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_buffer002 = command_encoder002.finish();
    const array4 = new Float32Array([-1.0, -0.75, -0.25, 0.75, -0.5, 0.75, 0.0, 0.0, -0.25, 1.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.0, -0.75, 0.0, 0.0, -1.0, 1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 0.25, -1.0, -0.25, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, 0.25, 0.0, -0.75, 0.75, 0.5, -1.0, 0.25, 0.25, -1.0, 0.75, 0.5, -1.0, 0.5, -0.5, 0.75, 0.25, 1.0, 0.5, 0.25, 0.0, 1.0, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, -0.25, 0.5, -0.5, -1.0, -1.0, -1.0, 0.0, -0.25, -0.5, 0.5, 0.25, 1.0, -0.75, -0.25, 1.0, 0.5, -0.5, -0.5, -0.25, 0.25, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, -1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.25, 0.5, -0.75, 0.25, 0.5, -1.0, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query100.destroy()
    query003.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query003.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    query003.destroy()
    device30.pushErrorScope("validation");
    render_pass_encoder0021.executeBundles([])
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device00.queue.submit([command_buffer001, ]);
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    render_pass_encoder0020.executeBundles([])
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device20.pushErrorScope("out-of-memory");
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    texture103.destroy();
    render_pass_encoder1000.endOcclusionQuery()
    texture102.destroy();
    query000.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder0021.executeBundles([])
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder0030.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    compute_pass_encoder0000.popDebugGroup()
    
    render_pass_encoder0021.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0001.setStencilReference(1);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query003
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query100.destroy()
    const command_buffer202 = command_encoder202.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture200.destroy();
    query000.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer100.destroy()
    
    render_pass_encoder0030.executeBundles([])
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.popDebugGroup()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder1000.setStencilReference(1);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    command_encoder300.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer204);
    render_pass_encoder0020.popDebugGroup();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder0031.setPipeline(render_pipeline000);
    compute_pass_encoder1000.insertDebugMarker("marker")
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder0001.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    query004.destroy()
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
    
    render_pass_encoder0021.setStencilReference(1);
    compute_pass_encoder0000.popDebugGroup()
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query003.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0020.endOcclusionQuery()
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder0001.setStencilReference(1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.clearBuffer(buffer205);
    
    
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer203.destroy()
    render_pass_encoder0000.endOcclusionQuery()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder0021.setPipeline(render_pipeline000);
    render_pass_encoder0001.executeBundles([])
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0001.executeBundles([])
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.pushErrorScope("internal");
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder0021.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.executeBundles([])
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder0001.pushDebugGroup("group_marker");
    buffer002.destroy()
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder203.insertDebugMarker("mymarker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_pass_encoder0030.setBindGroup(0, bind_group001);
    render_bundle_encoder200.setIndexBuffer(buffer202, "uint16");
    
    
    render_pass_encoder1002.pushDebugGroup("group_marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder0030.setVertexBuffer(0, buffer002);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1001.popDebugGroup();
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    buffer004.destroy()
    render_pass_encoder1000.setStencilReference(1);
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0031.insertDebugMarker("marker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer000,
        0
    )
    query000.destroy()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
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
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder203.insertDebugMarker("mymarker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_pass_encoder0001.executeBundles([])
    query000.destroy()
    query004.destroy()
    render_pass_encoder2030.setStencilReference(1);
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
    render_pass_encoder0001.executeBundles([])
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1000.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder000.copyBufferToBuffer(
        buffer006,
        0,
        buffer007,
        0,
        400
    );
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0021.setStencilReference(1);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder2000.setPipeline(compute_pipeline203);
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2050.setPipeline(render_pipeline201);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
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

    render_pass_encoder0021.setBindGroup(0, bind_group003);
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0031.setBindGroup(0, bind_group004);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.setVertexBuffer(0, buffer000);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer001, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline201);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0001.setBindGroup(0, bind_group005);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    render_pass_encoder1001.setPipeline(render_pipeline100);
    compute_pass_encoder1000.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0031.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.popDebugGroup();
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

    render_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0014, 0);
    render_pass_encoder0021.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder0001.setVertexBuffer(0, buffer002);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer100 = command_encoder100.finish();
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group006);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.end();
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group204);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder1002.setPipeline(render_pipeline100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.setVertexBuffer(0, buffer102);
    render_pass_encoder1001.draw(3);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder2040.setVertexBuffer(0, buffer200);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer101);
    device20.queue.submit([command_buffer202, ]);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    render_pass_encoder0020.drawIndirect(buffer0012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0001.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group102);
    device30.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0020.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setVertexBuffer(0, buffer207);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    render_pass_encoder0000.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder0000.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    render_pass_encoder1002.setVertexBuffer(0, buffer104);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    compute_pass_encoder2010.end();
    render_pass_encoder0000.end();
    render_pass_encoder2040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder2030.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.end();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group207);
    render_pass_encoder2030.end();
    render_pass_encoder0021.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2050.setVertexBuffer(0, buffer206);
    render_pass_encoder1002.end();
    render_pass_encoder2050.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer205, ]);
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder1010.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2017, 0);
    command_encoder203.popDebugGroup()
    render_pass_encoder0031.draw(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1001.end();
    const command_buffer203 = command_encoder203.finish();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2020, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0021.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    compute_pass_encoder2010.popDebugGroup()
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0001.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    device10.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0001.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    command_encoder000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    device10.queue.submit([command_buffer101, ]);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder1000.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer005, 0);
    render_pass_encoder2030.end();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder2050.drawIndirect(buffer206, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0031.end();
    render_pass_encoder1010.end();
    render_pass_encoder1002.draw(3);
    render_pass_encoder0031.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0001.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2027, 0);
    render_pass_encoder0001.drawIndirect(buffer0013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0001.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder1001.end();
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder2050.end();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder0031.draw(3);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1000.draw(3);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0018, 0);
    device20.queue.submit([command_buffer205, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndirect(buffer0021, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder0000.end();
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0023, 0);
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder0031.end();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer004, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1002.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1002.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.end();
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2025, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder2030.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder0000.popDebugGroup()
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
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    device20.queue.submit([command_buffer204, ]);
    device30.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2030.drawIndirect(buffer2018, 0);
    render_pass_encoder1002.end();
    render_pass_encoder0000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2011, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1002.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1002.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2024, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder1002.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.end();
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1002.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder0031.drawIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0021.drawIndirect(buffer0011, 0);
    render_pass_encoder1001.draw(3);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0020, 0);
    device20.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0031.end();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder1002.end();
    render_pass_encoder0030.drawIndirect(buffer0017, 0);
    render_pass_encoder1002.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1002.draw(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2030, 0);
    render_pass_encoder2050.end();
    render_pass_encoder1010.end();
    render_pass_encoder1010.end();
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0012);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2040.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0028, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.drawIndirect(buffer0016, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2020, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder2040.end();
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2012);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.drawIndirect(buffer005, 0);
    render_pass_encoder1002.endOcclusionQuery()
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2033, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndirect(buffer009, 0);
    render_pass_encoder1002.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    render_pass_encoder1002.endOcclusionQuery()
    render_pass_encoder1001.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1002.drawIndirect(buffer102, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.end();
    render_pass_encoder1002.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1001.drawIndexed(3);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder1002.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1002.end();
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder2050.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder0001.drawIndirect(buffer009, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder0000.drawIndirect(buffer000, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0001.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer2010, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2050.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2020, 0);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2000.end();
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    render_pass_encoder0031.drawIndexedIndirect(buffer0019, 0);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1010.end();
    render_pass_encoder2030.end();
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.end();
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.draw(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0001.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0031.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0030.draw(3);
    device00.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder0031.drawIndirect(buffer0028, 0);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.drawIndexed(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0027, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0030.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder1000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndirect(buffer2011, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0001.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder2050.drawIndirect(buffer2037, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder2040.end();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder1002.drawIndirect(buffer104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2040.drawIndirect(buffer2033, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2030.draw(3);
    device20.queue.submit([]);
    render_pass_encoder0001.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0029, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2050.drawIndirect(buffer2019, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.end();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2040.draw(3);
    render_pass_encoder0020.drawIndirect(buffer005, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2040.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2039, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.end();
    compute_pass_encoder2000.end();
    render_pass_encoder0030.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder1010.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0033, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0033, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2050.end();
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndirect(buffer205, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0001.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2040.drawIndirect(buffer2030, 0);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0000.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2040, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2040, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder1001.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0031.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder0001.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder1001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2042,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder1001.end();
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2016);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2020, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder0031.draw(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1002.draw(3);
    compute_pass_encoder2010.end();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2047, 0);
    device10.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    compute_pass_encoder2000.end();
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    render_pass_encoder2050.drawIndirect(buffer2018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2050.drawIndirect(buffer2012, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0031.end();
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.end();
    render_pass_encoder2050.drawIndirect(buffer2031, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0020.drawIndexed(3);
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder2050.drawIndirect(buffer2036, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2050.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder0001.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder2050.drawIndirect(buffer2022, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1002.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder0031.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1002.drawIndirect(buffer104, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2050, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder1002.draw(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2040.end();
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0031.drawIndirect(buffer0033, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder0031.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer000, 0);
    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2052,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder1002.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0020.drawIndirect(buffer0028, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2030.drawIndirect(buffer2014, 0);
    render_pass_encoder2050.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2050.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0031.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2050.drawIndirect(buffer2050, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0036, 0);
    device30.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2050, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0031.drawIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0031.setIndexBuffer(buffer003, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0021.drawIndirect(buffer0017, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0001.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder2050.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2040.drawIndirect(buffer2053, 0);
    render_pass_encoder0021.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0001.draw(3);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0033, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2020, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1000.end();
    render_pass_encoder2040.drawIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.end();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2050.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1002.drawIndirect(buffer102, 0);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0001.setIndexBuffer(buffer002, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0031.end();
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1002.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1000.end();
    compute_pass_encoder2010.end();
    render_pass_encoder0031.setIndexBuffer(buffer0034, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0033, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2047, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndirect(buffer0036, 0);
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder2050.drawIndirect(buffer2050, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0025, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2050, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder2040.drawIndirect(buffer2039, 0);
    render_pass_encoder2040.drawIndirect(buffer2049, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0031, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2030.drawIndirect(buffer2010, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2050.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2021);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2059, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0021.drawIndirect(buffer0033, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder2000.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder0001.drawIndirect(buffer0021, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2039, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    render_pass_encoder1001.end();
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2040.drawIndirect(buffer2059, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2040.drawIndirect(buffer2027, 0);
    render_pass_encoder0020.end();
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder0031.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer109, 0);
    device00.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder1002.popDebugGroup();
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder0030.end();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexed(3);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2040.drawIndirect(buffer2047, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder2040.drawIndirect(buffer2054, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder2050.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndirect(buffer0015, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2050.drawIndirect(buffer2040, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder0000.drawIndirect(buffer0040, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder0021.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0001.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.end();
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2023);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder2050.drawIndirect(buffer2054, 0);
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2052, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0023, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1002.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1002.drawIndirect(buffer107, 0);
    render_pass_encoder0020.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder1002.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2050.end();
    device00.queue.submit([command_buffer000, ]);
}