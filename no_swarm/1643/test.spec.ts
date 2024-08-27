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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-1.0, 0.5, 1.0, 0.5, 1.0, 0.75, -0.25, -0.5, 0.0, -1.0, -1.0, -0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -1.0, 0.75, 0.75, 0.75, -0.25, -0.25, 0.5, -0.5, 0.0, 0.5, 0.25, 0.75, 1.0, 0.0, 0.25, 1.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.75, 0.0, 0.0, 1.0, 0.75, -0.5, -1.0, -0.75, 0.75, 0.0, -0.5, 1.0, -0.75, -0.25, 0.25, -1.0, 0.0, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.25, 1.0, 0.25, -0.75, -0.75, 1.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.0, -0.5, -0.25, -0.75, -0.5, 0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -0.5, -0.25, 0.25, ]);
    const array1 = new Float32Array([-0.25, -0.75, -0.75, -0.75, 0.0, 0.25, 0.75, 1.0, 0.25, -0.5, 0.75, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.5, -1.0, -1.0, -0.75, 0.75, -0.25, 1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 1.0, -0.5, -0.5, 0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.5, -0.5, 0.25, -0.5, -0.5, 0.25, -0.75, -1.0, -0.75, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.25, -0.75, -0.5, 0.0, 1.0, -0.25, -0.5, 1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -1.0, 0.5, -0.75, 0.25, -0.75, 0.5, -0.75, ]);
    
    
    
    
    const array2 = new Float32Array([-0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -0.25, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 0.25, -0.5, 0.0, -1.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.25, -0.75, -0.25, -0.25, -1.0, -1.0, 0.75, -0.25, 0.25, -0.75, 0.75, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.0, 0.5, -0.5, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, -0.25, 0.0, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 0.25, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, -0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -0.75, -1.0, 0.25, -0.5, 0.25, 0.25, 0.0, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer100.destroy()
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    
    const array3 = new Float32Array([-0.75, 0.5, -1.0, 0.0, -0.5, -1.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 1.0, 0.0, 0.5, -0.5, -1.0, -1.0, -0.75, 1.0, 1.0, -0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -0.75, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, -0.5, 0.75, 1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.5, 0.5, 0.5, -0.25, 0.5, -1.0, -1.0, 1.0, 0.5, 0.0, 0.5, 0.75, 0.0, -0.75, -1.0, 0.25, 0.75, 1.0, 1.0, -0.5, -1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.75, -0.5, 1.0, -1.0, 0.0, -0.75, 0.0, -0.25, ]);
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    command_encoder100.clearBuffer(buffer100);
    const command_buffer100 = command_encoder100.finish();
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([0.25, -0.75, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 1.0, 0.75, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.5, 0.0, -1.0, -1.0, -0.5, -0.25, -0.75, 0.5, -0.5, -0.25, -1.0, -0.25, 0.25, -1.0, -1.0, -1.0, 0.5, -0.75, -1.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -0.5, 0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.25, -0.5, -0.25, -0.75, 1.0, 0.25, 1.0, -0.75, 0.0, -0.75, 0.5, 0.75, -0.25, 0.75, 0.5, 0.75, -0.75, 0.0, 0.0, -1.0, -0.75, -1.0, -0.5, -0.75, -0.25, 0.0, -0.75, 0.0, 0.0, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, 0.25, -1.0, 0.0, -1.0, 0.25, -0.75, 0.5, -0.5, -0.25, 0.0, 0.75, -0.5, 0.75, 1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder300.insertDebugMarker("mymarker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    texture300.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query301.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder101.popDebugGroup();
    device50.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture101.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    buffer102.destroy()
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, ]);
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query302.destroy()
    device40.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device10.queue.submit([command_buffer100, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query300.destroy()
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    texture301.destroy();
    buffer101.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3010.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder3010.setStencilReference(1);
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder3010.executeBundles([])
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query302
    });
    buffer102.destroy()
    query300.destroy()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    render_pass_encoder3011.setStencilReference(1);
    query100.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder3011.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_buffer103 = command_encoder103.finish();
    
    render_pass_encoder1020.setStencilReference(1);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture401.destroy();
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    render_pass_encoder1020.executeBundles([])
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query101.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
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
    render_pass_encoder3010.executeBundles([])
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device40.pushErrorScope("internal");
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder102.popDebugGroup();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.executeBundles([])
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query302
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    query300.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    query700.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    
    
    texture104.destroy();
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    texture100.destroy();
    render_pass_encoder3011.setPipeline(render_pipeline301);
    
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    device100.pushErrorScope("validation");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer302.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    device70.pushErrorScope("out-of-memory");
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    texture401.destroy();
    render_pass_encoder3011.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    query100.destroy()
    
    buffer400.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline302);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    
    render_pass_encoder3020.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3010.popDebugGroup();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group300);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    device30.pushErrorScope("validation");
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    const array5 = new Float32Array([0.5, -0.5, -0.25, -0.25, 0.0, -0.25, -0.5, 0.5, 0.0, 0.75, 0.75, 0.25, -0.75, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, -1.0, -1.0, -1.0, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.5, 0.75, 0.75, 0.0, 0.0, -1.0, -0.75, -0.5, -0.75, -0.5, -1.0, 0.5, -0.5, 0.75, 0.75, 0.0, 0.0, 0.5, 0.25, 1.0, 1.0, 0.5, 0.75, -0.5, -1.0, -0.25, 1.0, -0.25, 0.25, 0.0, -1.0, 0.25, 1.0, -1.0, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.0, -0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -0.5, 0.25, 0.75, 0.5, 0.5, -0.25, 0.5, 0.0, 0.0, -0.25, 0.0, 0.5, 0.75, -0.5, -1.0, 1.0, -0.75, 0.0, -1.0, -0.25, -0.5, 0.75, 0.75, -0.25, 0.5, ]);
    
    
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    render_bundle_encoder100.popDebugGroup();
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    
    texture103.destroy();
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.popDebugGroup();
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder3020.executeBundles([])
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline301);
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    texture102.destroy();
    
    
    device100.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device60.destroy();
    
    query103.destroy()
    device70.queue.submit([]);
    render_pass_encoder3020.setStencilReference(1);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer300.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3011.popDebugGroup();
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder302.setPipeline(render_pipeline302);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setStencilReference(1);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    buffer305.destroy()
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    render_pass_encoder3011.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query300.destroy()
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
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
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query102
    });
    query105.destroy()
    
    render_pass_encoder3010.setStencilReference(1);
    
    buffer1000.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query104.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder400.setPipeline(render_pipeline402);
    
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    buffer104.destroy()
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    buffer305.destroy()
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder302.insertDebugMarker("mymarker");
    query700.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3011.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query105
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    render_pass_encoder1021.setPipeline(render_pipeline101);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    render_pass_encoder3010.setVertexBuffer(0, buffer307);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder1041.setPipeline(render_pipeline100);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    buffer401.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder700.insertDebugMarker("marker");
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    query100.destroy()
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1040.setPipeline(render_pipeline100);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group100);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3011.setBindGroup(0, bind_group303);
    compute_pass_encoder1010.popDebugGroup()
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    render_pass_encoder3021.setPipeline(render_pipeline301);
    render_pass_encoder1020.setPipeline(render_pipeline100);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    render_pass_encoder3011.setVertexBuffer(0, buffer303);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder1040.setVertexBuffer(0, buffer101);
    render_pass_encoder1020.popDebugGroup();
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    device100.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3020.setVertexBuffer(0, buffer304);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.setPipeline(render_pipeline101);
    render_pass_encoder3020.draw(3);
    render_pass_encoder3011.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3011.drawIndirect(buffer307, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder3010.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndirect(buffer101, 0);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
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

    render_pass_encoder3021.setBindGroup(0, bind_group305);
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer100, ]);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group104);
    render_pass_encoder1050.setVertexBuffer(0, buffer107);
    render_pass_encoder3020.end();
    render_pass_encoder1020.end();
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder3021.setVertexBuffer(0, buffer302);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder3021.drawIndirect(buffer302, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer105, ]);
    const command_buffer102 = command_encoder102.finish();
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_pass_encoder1041.setBindGroup(0, bind_group105);
    render_pass_encoder1020.end();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3011.end();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder3021.end();
    device00.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.setVertexBuffer(0, buffer1014);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder1041.end();
    render_pass_encoder3011.end();
    render_pass_encoder3021.setIndexBuffer(buffer307, "uint16");
    const command_buffer400 = command_encoder400.finish();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder3021.drawIndirect(buffer301, 0);
    render_pass_encoder1021.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder7000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3020.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3011.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder4010.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1017, 0);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder3021.draw(3);
    render_pass_encoder3020.end();
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    device30.queue.submit([command_buffer300, ]);
    device70.queue.submit([command_buffer700, ]);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1041.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, ]);
    device100.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1050.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder3011.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder1020.draw(3);
    device20.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder3021.popDebugGroup();
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder3011.drawIndirect(buffer306, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1021.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1041.end();
    render_pass_encoder1040.end();
    device30.queue.submit([]);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder3010.draw(3);
    device40.queue.submit([command_buffer401, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1040.end();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder3020.drawIndirect(buffer3012, 0);
    render_pass_encoder1021.end();
    render_pass_encoder3020.end();
    render_pass_encoder3010.drawIndirect(buffer301, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3011.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([command_buffer103, ]);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder3011.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder3020.draw(3);
    device40.queue.submit([]);
    render_pass_encoder3021.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3010.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer3014, 0);
    render_pass_encoder1050.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1023, 0);
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3011.end();
    render_pass_encoder3020.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3021.end();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    device100.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([]);
    render_pass_encoder3010.end();
    render_pass_encoder3010.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder3010.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    device70.queue.submit([]);
    render_pass_encoder3021.end();
    device40.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3010.end();
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder3020.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1041.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    render_pass_encoder3011.drawIndirect(buffer3013, 0);
    render_pass_encoder3010.drawIndexedIndirect(buffer3010, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder3010.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    device100.queue.submit([]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.drawIndexedIndirect(buffer306, 0);
    compute_pass_encoder1010.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1021.end();
    render_pass_encoder3021.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder3010.drawIndirect(buffer308, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.end();
    render_pass_encoder3011.popDebugGroup();
    device100.queue.submit([]);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3020.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3010.popDebugGroup();
}