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
    const array0 = new Float32Array([0.25, -1.0, -1.0, 1.0, 0.25, -0.25, 0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, -1.0, -0.25, 1.0, 0.75, 0.75, 0.75, -0.5, -0.5, 0.0, 0.75, 1.0, 0.75, -0.75, -0.25, 0.75, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, 0.25, -0.25, -0.25, -0.25, 0.5, 0.5, -0.5, -1.0, -0.25, 0.75, 1.0, 0.5, -1.0, 0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, -0.75, -0.25, -0.75, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.25, 0.0, -0.25, 0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 1.0, 0.5, -1.0, 0.75, -1.0, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.25, 0.5, 0.75, 0.5, 0.25, 0.0, 1.0, -1.0, -0.25, 0.75, -1.0, -0.5, -1.0, ]);
    const array1 = new Float32Array([-0.25, -0.25, -1.0, 0.5, 0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, -0.75, -0.25, 0.5, -1.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.25, 0.75, -0.25, 0.75, 0.75, -0.5, -1.0, 0.75, -0.5, -0.75, -0.25, -0.5, -0.25, -0.25, -0.5, -1.0, 0.5, 1.0, -0.75, -0.75, 0.5, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, -1.0, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, 0.0, -0.5, 0.75, -0.5, -0.75, -1.0, 1.0, -1.0, 0.5, -1.0, 0.0, -1.0, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, -0.75, -0.75, -1.0, 0.5, -0.75, 0.5, 0.75, 1.0, 0.0, -1.0, -0.5, -0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device10.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    device30.pushErrorScope("out-of-memory");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_buffer300 = command_encoder300.finish();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("internal");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.popDebugGroup()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.insertDebugMarker("mymarker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-1.0, 0.75, 0.5, -0.5, -1.0, 0.0, -1.0, 0.5, -0.25, -0.5, -1.0, 0.5, -1.0, 0.25, -0.5, -1.0, -0.75, 0.5, 1.0, 0.5, 0.0, 0.75, -0.75, -0.25, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.5, 0.0, -0.25, -0.25, -1.0, 0.5, -0.25, 1.0, -0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.75, -0.25, 0.0, -1.0, 1.0, -0.75, -0.75, -0.75, 0.0, 0.25, -0.25, -0.25, -1.0, 0.75, 0.5, 1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, 0.25, -1.0, 0.0, 0.5, 1.0, 1.0, -1.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 1.0, 0.25, -1.0, 0.5, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        occlusionQuerySet: undefined
    });
    texture300.destroy();
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
        occlusionQuerySet: query301
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.insertDebugMarker("marker");
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device40.destroy();
    const array3 = new Float32Array([-0.25, 0.0, 0.25, 1.0, -0.75, -1.0, 0.75, 0.25, -0.5, -1.0, -1.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 0.5, -0.25, -0.5, 0.0, 0.75, -0.75, -0.5, 0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, 0.0, 0.5, 0.5, -0.5, 0.75, 0.25, 0.75, -0.75, -0.5, 1.0, 0.25, 0.0, 0.25, 0.0, 0.75, 0.0, -1.0, 0.25, -0.25, -0.25, 0.75, -0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -1.0, 0.75, -1.0, -0.5, 0.5, -1.0, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 1.0, -1.0, 0.0, 0.75, 0.25, -1.0, -1.0, 0.25, 0.0, 0.25, ]);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    query300.destroy()
    buffer300.destroy()
    query301.destroy()
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    
    
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3010.executeBundles([])
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device50.pushErrorScope("validation");
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer500.destroy()
    
    render_pass_encoder3020.executeBundles([])
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder3020.popDebugGroup();
    
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3021.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    render_pass_encoder3021.setStencilReference(1);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    query300.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    query302.destroy()
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.submit([command_buffer300, ]);
    
    
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query301
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_pass_encoder3010.executeBundles([])
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
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
    render_pass_encoder3021.setStencilReference(1);
    
    render_pass_encoder3010.executeBundles([])
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.submit([command_buffer300, ]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query500.destroy()
    
    
    texture301.destroy();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3011.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.setStencilReference(1);
    
    const array4 = new Float32Array([-0.5, 1.0, 1.0, -0.5, 0.25, 0.5, 0.25, 1.0, 1.0, -1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 0.5, 0.25, 1.0, 0.75, 1.0, 1.0, 0.25, 0.25, 1.0, 1.0, 0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.5, -0.5, 1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.75, 1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 0.25, -1.0, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, -0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.75, 0.75, 0.75, 1.0, -0.75, -0.25, -0.5, 1.0, -1.0, -0.75, -0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.0, 0.0, ]);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    
    
    query500.destroy()
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.executeBundles([])
    query301.destroy()
    render_pass_encoder5000.insertDebugMarker("marker");
    query300.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3010.executeBundles([])
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture500.destroy();
    query301.destroy()
    
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    query000.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3011.insertDebugMarker("marker");
    
    
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array5 = new Float32Array([-0.25, -0.75, 1.0, -0.75, -0.5, -0.5, 0.5, 0.5, -1.0, -0.5, 1.0, -0.25, -0.25, -1.0, -0.75, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, 0.25, 1.0, 0.75, -0.5, -1.0, -1.0, -1.0, -1.0, 0.75, 0.25, 0.25, 0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 1.0, -0.25, -1.0, -0.25, -1.0, -1.0, -0.75, 0.25, 0.5, 0.0, -0.75, -1.0, -0.75, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, -0.75, -1.0, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, -0.5, -0.5, 0.5, 1.0, -1.0, -0.25, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, -0.5, 0.25, -1.0, 1.0, 0.5, 1.0, 0.5, 0.25, 0.0, -0.25, -0.75, ]);
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    render_pass_encoder3021.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    render_pass_encoder3021.executeBundles([])
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    
    
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    query300.destroy()
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3011.setStencilReference(1);
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer502,
        0
    )
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device20.destroy();
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_bundle_encoder503 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder503",
        colorFormats: ["bgra8unorm"]
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder3010.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder501.setPipeline(render_pipeline500);
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
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
    render_bundle_encoder503.setPipeline(render_pipeline500);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder3030.setPipeline(compute_pipeline302);
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    buffer502.destroy()
    
    render_pass_encoder3040.executeBundles([])
    render_pass_encoder5000.setPipeline(render_pipeline500);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder503.setBindGroup(0, bind_group500);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    texture501.destroy();
    render_pass_encoder3020.setStencilReference(1);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3010.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3011.executeBundles([])
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.25, 0.25, 0.25, -0.5, -0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -0.25, -0.5, -0.75, 0.25, 0.75, -0.5, -0.5, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, -1.0, -0.75, 0.75, 0.5, 1.0, 0.75, -0.75, 1.0, 0.75, -1.0, 0.75, -0.5, -0.5, 0.75, 1.0, -1.0, -1.0, 0.25, -1.0, 0.0, -0.25, -0.5, -0.5, -0.75, -1.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.75, -1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -0.5, 0.5, 0.5, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, 1.0, 0.5, 0.75, 0.5, -1.0, 0.5, 0.5, -0.75, 0.5, 0.5, 0.25, -0.75, ]);
    
    render_pass_encoder3021.executeBundles([])
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const command_buffer600 = command_encoder600.finish();
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder5000.insertDebugMarker("marker");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3040.endOcclusionQuery()
    render_bundle_encoder503.popDebugGroup();
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_pass_encoder3041.pushDebugGroup("group_marker");
    render_pass_encoder3041.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3011.popDebugGroup();
    
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
    render_bundle_encoder503.insertDebugMarker("marker");
    render_pass_encoder3011.setStencilReference(1);
    
    
    render_pass_encoder3020.executeBundles([])
    
    render_pass_encoder5000.setStencilReference(1);
    
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    render_pass_encoder3041.popDebugGroup();
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder3040.setStencilReference(1);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
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
    
    
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder5000.popDebugGroup();
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3041.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3041.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder3041.setPipeline(render_pipeline301);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder3040.executeBundles([])
    render_pass_encoder5010.pushDebugGroup("group_marker");
    render_pass_encoder3010.setPipeline(render_pipeline301);
    render_pass_encoder3040.insertDebugMarker("marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.setPipeline(render_pipeline301);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder501.popDebugGroup();
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder3040.setPipeline(render_pipeline301);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_pass_encoder5011 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder5000.setStencilReference(1);
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder3010.popDebugGroup()
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder502.copyTextureToBuffer(
        {
            texture: texture500
        },
        {
            buffer: buffer503
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    const command_buffer601 = command_encoder601.finish();
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder3020.executeBundles([render_bundle_encoder302, ])
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    render_bundle_encoder302.popDebugGroup();
    buffer504.destroy()
    
    query602.destroy()
    const array7 = new Float32Array([1.0, 0.25, 1.0, -0.25, -0.25, -0.25, 1.0, -0.5, 0.5, 0.75, -0.5, -1.0, -1.0, 1.0, -0.25, 0.5, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, -0.25, -0.25, 0.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 0.0, 0.0, -0.75, -0.75, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, -0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -1.0, -0.25, 1.0, 0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.0, -0.75, 0.25, -0.5, 0.0, -0.5, -0.5, -0.5, -1.0, -0.75, 1.0, -0.75, -0.75, 0.0, 0.0, 1.0, 0.5, 0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.75, 0.0, 1.0, -0.5, 0.5, -0.25, -0.5, ]);
    render_bundle_encoder500.popDebugGroup();
    texture501.destroy();
    device50.queue.submit([command_buffer500, ]);
    buffer506.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3011.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder3020.executeBundles([])
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3011.setPipeline(render_pipeline300);
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder5010.setPipeline(compute_pipeline501);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    render_pass_encoder3020.setPipeline(render_pipeline301);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_pass_encoder3041.setBindGroup(0, bind_group301);
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group503);
    render_pass_encoder5020.setPipeline(render_pipeline500);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    render_pass_encoder3010.setVertexBuffer(0, buffer303);
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3041.setVertexBuffer(0, buffer302);
    render_pass_encoder5010.setPipeline(render_pipeline500);
    render_pass_encoder3041.popDebugGroup();
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder5010.popDebugGroup();
    command_encoder503.popDebugGroup()
    render_pass_encoder3011.popDebugGroup();
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group504);
    render_pass_encoder3020.setVertexBuffer(0, buffer303);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group304);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3040.setVertexBuffer(0, buffer309);
    render_pass_encoder3041.draw(3);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder5011.setPipeline(render_pipeline501);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5013, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5013, 0);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder3040.draw(3);
    compute_pass_encoder5010.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    render_pass_encoder3040.end();
    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5015,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group505);
    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5017,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group506);
    render_pass_encoder5010.setVertexBuffer(0, buffer5015);
    render_pass_encoder5010.draw(3);
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group305);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder3041.end();
    render_pass_encoder3010.popDebugGroup();
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group306);
    render_pass_encoder5020.setVertexBuffer(0, buffer500);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder5020.draw(3);
    render_pass_encoder3021.setVertexBuffer(0, buffer3011);
    render_pass_encoder3020.end();
    render_pass_encoder3021.drawIndirect(buffer306, 0);
    render_pass_encoder3010.end();
    render_pass_encoder5000.setVertexBuffer(0, buffer507);
    render_pass_encoder3021.end();
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder3040.drawIndirect(buffer301, 0);
    render_pass_encoder3011.setVertexBuffer(0, buffer3012);
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder5010.end();
    render_pass_encoder5010.end();
    render_pass_encoder3040.drawIndirect(buffer301, 0);
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder5020.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.draw(3);
    render_pass_encoder3041.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3011.end();
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3041.drawIndexedIndirect(buffer301, 0);
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    render_pass_encoder5011.setBindGroup(0, bind_group507);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder5010.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3040.draw(3);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder5000.endOcclusionQuery()
    render_pass_encoder5011.setVertexBuffer(0, buffer503);
    render_pass_encoder5011.drawIndirect(buffer5011, 0);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    render_pass_encoder5011.end();
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3040.drawIndirect(buffer301, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder5011.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5010.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3010.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3020.end();
    compute_pass_encoder3030.end();
    render_pass_encoder5000.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5010.drawIndirect(buffer506, 0);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3010.popDebugGroup();
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3021.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5020.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder5000.end();
    render_pass_encoder3021.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer3018, 0);
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3020, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3020, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer500, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder5011.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder3040.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3020, 0);
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder5010.drawIndirect(buffer508, 0);
    render_pass_encoder3041.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder5000.end();
    render_pass_encoder5020.drawIndexed(3);
    compute_pass_encoder3010.end();
    render_pass_encoder3040.end();
    render_pass_encoder3040.draw(3);
    render_pass_encoder3011.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3040.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3011.drawIndirect(buffer3017, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3041.popDebugGroup();
    compute_pass_encoder3030.end();
    device50.queue.submit([command_buffer502, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder5000.drawIndexedIndirect(buffer5012, 0);
    render_pass_encoder5011.drawIndexedIndirect(buffer503, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3011.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder5011.end();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5010.end();
    render_pass_encoder3021.popDebugGroup();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder3041.drawIndirect(buffer3020, 0);
    render_pass_encoder3041.drawIndirect(buffer306, 0);
    render_pass_encoder3041.draw(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3041.end();
    render_pass_encoder3041.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3040.drawIndirect(buffer3018, 0);
    render_pass_encoder5000.drawIndirect(buffer5013, 0);
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5020.drawIndirect(buffer5013, 0);
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5000.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5000.drawIndirect(buffer504, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3010, 0);
    render_pass_encoder3041.drawIndexed(3);
    render_pass_encoder3021.drawIndirect(buffer3020, 0);
    render_pass_encoder3020.drawIndirect(buffer301, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder5010.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5011.popDebugGroup();
    render_pass_encoder5010.drawIndexedIndirect(buffer5018, 0);
    render_pass_encoder5011.end();
    render_pass_encoder3041.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer504, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3021.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5020, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5020, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer5020, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3041.setIndexBuffer(buffer3013, "uint16");
    compute_pass_encoder5010.end();
    render_pass_encoder5011.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer502, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3018, "uint16");
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3021, 0);
    render_pass_encoder3041.drawIndirect(buffer3020, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
}