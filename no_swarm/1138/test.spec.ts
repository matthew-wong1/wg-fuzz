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
    const array0 = new Float32Array([-0.75, -0.75, -1.0, 0.5, 0.25, 1.0, 0.25, 0.75, -1.0, 0.5, 0.5, 0.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 0.75, 1.0, 0.0, -0.75, 0.75, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, -0.5, -0.5, 0.25, 0.75, -0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 0.25, 0.75, 0.75, 0.0, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, -0.25, -1.0, -0.25, 0.5, -0.25, 1.0, 1.0, 1.0, 0.5, -0.5, -0.5, -0.5, -0.25, 0.75, 0.0, -1.0, 0.75, 0.75, -1.0, -1.0, -0.5, -1.0, -1.0, 0.75, -0.5, -0.25, 0.0, 1.0, -0.25, 0.5, 0.25, 0.75, 0.75, 1.0, -0.75, -1.0, 0.75, 1.0, ]);
    
    
    const array1 = new Float32Array([-0.5, -0.75, -1.0, 0.0, 1.0, 0.25, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, -0.75, -0.25, 1.0, 1.0, 0.0, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, 0.5, 0.5, 1.0, -1.0, 0.25, -1.0, -1.0, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 0.25, -0.5, -1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -0.25, -0.25, 0.0, -0.5, 1.0, 1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 0.25, 0.5, -0.5, 0.5, 0.5, 0.0, 0.25, 0.0, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.75, 1.0, 0.25, 1.0, 1.0, 1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.5, 1.0, 0.0, ]);
    
    const array2 = new Float32Array([1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, -0.25, -0.5, -0.75, -0.25, 0.5, 0.75, 0.75, -0.25, 0.25, 0.0, 0.5, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.75, -0.5, -0.75, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, -0.25, 0.25, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.75, -1.0, -0.75, 1.0, -1.0, 0.25, 0.75, -0.5, 0.75, -0.75, 1.0, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 1.0, 0.0, 0.25, 0.25, 0.25, -0.25, -1.0, 1.0, 0.25, 0.5, -0.75, 0.5, 0.5, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, 1.0, 0.5, 0.25, -0.5, 0.75, 1.0, -0.75, 0.25, -0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([-0.25, -0.5, -1.0, -1.0, 0.5, -0.25, -0.75, 0.5, 0.5, -0.75, 0.25, -1.0, 0.0, 0.5, 0.25, -0.25, -1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 0.25, 0.25, 0.0, 0.25, -0.5, 0.75, 0.0, -1.0, 0.0, 1.0, 0.0, 0.75, -0.75, 0.5, 0.5, 0.25, 0.0, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, -0.75, -0.5, 1.0, 0.25, -0.5, 1.0, -0.25, 0.25, 1.0, -0.5, -0.5, 1.0, -0.75, -0.25, -1.0, -0.75, 0.0, -0.75, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, 0.5, -0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, 0.0, 0.5, -0.75, -0.25, 0.5, -0.25, 0.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.25, 0.75, -1.0, -0.5, 0.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.0, -0.25, 0.0, -0.75, -1.0, -0.25, -0.5, 1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -1.0, 0.75, 0.0, 0.75, 0.25, 0.0, 0.75, -0.75, 0.75, -0.25, -0.25, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, 0.25, 0.0, -0.75, -0.25, -1.0, 0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -0.75, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, 0.5, 1.0, 0.5, 0.0, 0.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.0, -0.25, 0.25, -1.0, 0.75, 0.25, -0.5, -0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.75, 0.25, -0.5, -0.75, -0.25, -0.5, -1.0, 0.25, -0.5, 0.0, 1.0, 0.25, -0.5, 0.25, -0.75, 0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer100 = command_encoder100.finish();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture100.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    buffer100.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device10.pushErrorScope("internal");
    device10.queue.submit([command_buffer100, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer100.destroy()
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    device10.pushErrorScope("internal");
    texture101.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.5, 0.5, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.75, 0.5, -1.0, -1.0, 0.25, 0.5, 0.5, -0.5, 0.0, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, -1.0, 0.5, 0.0, 0.5, -0.75, -1.0, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.0, 0.75, 0.0, -1.0, -1.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, -0.75, -0.5, 1.0, -1.0, 1.0, -0.75, 1.0, 1.0, 0.0, 1.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, 0.5, 1.0, -0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 0.5, -0.75, -0.25, 1.0, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device40.pushErrorScope("validation");
    
    device30.destroy();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    buffer101.destroy()
    
    
    query101.destroy()
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([]);
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    query101.destroy()
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device40.destroy();
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_pass_encoder1010.setStencilReference(1);
    
    query101.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1010.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array6 = new Float32Array([1.0, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, 0.5, -1.0, -0.25, -0.5, -0.75, 0.75, 0.0, -0.5, 0.25, 0.75, 0.5, -0.5, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, -1.0, 0.25, -0.5, 0.75, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, 0.5, -0.75, -0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.5, -0.5, 0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 0.75, -1.0, -0.75, -0.5, 0.75, 0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 0.75, 0.5, -0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 1.0, -0.75, -1.0, 1.0, -1.0, 0.75, -0.5, 0.25, 0.75, ]);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    
    
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
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
        occlusionQuerySet: query101
    });
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.insertDebugMarker("marker");
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
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder1020.executeBundles([])
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const array7 = new Float32Array([-0.25, -0.25, 0.0, -1.0, 0.5, 0.0, 0.25, 0.25, 1.0, 0.5, 0.0, 0.5, 1.0, 0.25, 0.25, 0.0, -0.75, 0.75, 0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.75, 0.0, -0.75, 0.25, -0.5, 0.25, 0.25, 0.25, 0.25, 1.0, 0.0, 0.25, 0.75, -1.0, -0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 0.25, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.5, 1.0, -1.0, -0.75, 0.5, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, -1.0, 0.5, -1.0, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 1.0, 0.5, 0.75, 0.5, 0.75, -0.25, -0.25, -0.75, 0.0, -0.75, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, 0.0, 1.0, 1.0, ]);
    texture200.destroy();
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1010.popDebugGroup();
    const array8 = new Float32Array([0.0, 0.0, 1.0, -0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, 1.0, 0.75, 0.0, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.5, 0.75, -0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 1.0, -1.0, -0.75, -1.0, -0.25, -0.5, 1.0, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, 0.25, 0.5, 0.0, -0.75, 0.0, 0.75, -1.0, 0.0, 0.75, 1.0, -0.75, 0.25, 0.0, -0.25, -0.25, 0.75, -0.5, -0.25, -0.5, 0.0, -0.5, 0.5, -0.75, 0.75, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 1.0, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    buffer200.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device50.destroy();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query200.destroy()
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([0.0, 0.25, 0.25, 0.25, -0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 1.0, 0.5, -1.0, 0.5, 1.0, 0.5, 1.0, 0.25, -0.75, 0.25, 0.5, 0.75, 0.5, -0.75, -0.25, 0.25, -0.75, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 1.0, 0.0, -1.0, 0.5, 0.0, 0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.75, -0.5, 1.0, 0.75, -0.5, -0.5, 0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -0.25, 0.5, 1.0, -0.75, 1.0, -0.25, 0.75, 0.0, 0.5, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, -0.5, 0.5, 0.25, 0.75, 1.0, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, -1.0, -0.75, 0.25, -0.5, -0.25, 1.0, -0.75, 1.0, ]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.submit([]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    query201.destroy()
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    texture204.destroy();
    
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1021.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture202.destroy();
    
    render_bundle_encoder201.insertDebugMarker("marker");
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
    command_encoder200.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    query202.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
        occlusionQuerySet: query202
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("validation");
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device20.queue.writeTexture({ texture: texture203 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    const array10 = new Float32Array([-0.5, 0.0, -1.0, -1.0, 0.25, 0.5, -0.75, 0.25, -0.5, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, 0.5, 0.5, 0.0, 1.0, 0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.5, -0.75, 0.5, -0.75, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, 0.75, -0.75, -0.25, -0.75, -0.75, -0.25, -0.75, -0.5, 0.0, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, 0.0, -1.0, 0.25, -0.75, 0.0, -0.25, -1.0, -0.75, -1.0, -0.75, -0.75, 1.0, -0.25, 1.0, -0.75, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 0.0, 0.0, 0.25, 0.25, 0.0, 1.0, -0.25, -1.0, 0.5, 0.0, 0.25, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, 1.0, ]);
    
    query101.destroy()
    query202.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    texture201.destroy();
    device30.queue.submit([]);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query102.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device00.destroy();
    
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder200.popDebugGroup();
    query202.destroy()
    query202.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    query202.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.queue.submit([command_buffer200, ]);
    
    query203.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder200.setPipeline(render_pipeline202);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    render_pass_encoder1021.popDebugGroup();
    query202.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setStencilReference(1);
    query203.destroy()
    query200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    query204.destroy()
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query202.destroy()
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query202.destroy()
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    
    query201.destroy()
    device20.queue.writeTexture({ texture: texture205 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer205.destroy()
    
    
    query202.destroy()
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.popDebugGroup();
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
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
    buffer203.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const array11 = new Float32Array([0.25, -1.0, -1.0, -0.75, 0.25, -1.0, 0.5, -0.5, 0.75, -1.0, 0.0, 1.0, 0.75, 0.0, 0.75, -1.0, 0.75, -0.25, -0.75, 0.75, 0.75, 0.0, -1.0, 0.75, -1.0, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, 0.0, 1.0, -0.75, -1.0, 0.5, 0.5, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.25, -0.75, -1.0, 0.75, -0.5, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, 1.0, 1.0, -0.75, 1.0, 0.5, 1.0, -0.25, 0.75, -0.25, -1.0, -1.0, 0.75, 0.75, -1.0, -0.25, -0.25, -0.75, -0.5, 0.5, -0.5, 0.5, -0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.5, -1.0, -0.25, -0.25, -1.0, ]);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query200.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_bundle_encoder200.setVertexBuffer(0, buffer203);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture205.destroy();
    
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer201.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    device20.queue.writeTexture({ texture: texture206 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_bundle_encoder200.setIndexBuffer(buffer207, "uint16");
    render_bundle_encoder200.draw(3);
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
    render_bundle_encoder200.finish();
    query207.destroy()
    query205.destroy()
    
    device20.queue.writeTexture({ texture: texture206 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture206 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer206, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder1021.insertDebugMarker("marker");
    
    render_bundle_encoder201.setVertexBuffer(0, buffer207);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query204.destroy()
    device40.pushErrorScope("out-of-memory");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder201.draw(3);
    buffer202.destroy()
    query204.destroy()
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device20.queue.writeTexture({ texture: texture206 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    texture206.destroy();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
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
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.end();
    render_pass_encoder2000.setVertexBuffer(0, buffer206);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.draw(3);
    device60.queue.submit([]);
    render_pass_encoder2000.end();
    const command_buffer301 = command_encoder301.finish();
}