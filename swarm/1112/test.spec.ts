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
    const array0 = new Float32Array([-0.75, 0.25, -0.5, 0.5, -0.5, 0.75, 0.25, 0.75, 0.75, 1.0, 0.0, 0.5, -0.25, -1.0, -0.5, 0.25, -1.0, 0.0, 0.75, 0.25, 0.75, -0.75, -0.25, -1.0, 0.75, 0.0, 1.0, -0.75, -0.75, 0.5, -0.75, -0.75, -1.0, -0.25, 1.0, -0.25, 0.5, 0.0, 0.75, -1.0, 0.5, 0.25, -1.0, -0.25, 0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 1.0, 0.5, -0.25, 1.0, 0.0, 1.0, -0.5, 1.0, -1.0, -0.5, 0.75, 0.75, 0.75, -0.25, 1.0, 1.0, 0.25, 0.75, 0.5, -0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.25, 1.0, 1.0, 0.25, -1.0, -0.75, 0.0, 1.0, -0.25, 0.25, 1.0, -0.75, 0.5, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, -0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([0.0, 0.75, -0.75, -0.25, -0.75, 0.0, 0.0, -0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 0.5, 1.0, 0.0, -1.0, 1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, -0.25, -0.25, 0.5, -0.75, 0.5, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, -0.75, 0.25, 0.0, -1.0, 0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 0.0, -1.0, 0.5, 1.0, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.75, -0.5, -0.25, 0.5, -0.25, 0.75, -0.25, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, 0.75, -0.75, 0.25, -1.0, 0.25, 0.75, 0.75, 0.5, 0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 0.0, -1.0, 0.0, -0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array2 = new Float32Array([-0.5, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.25, -0.25, -0.75, 0.25, 0.25, 0.75, -0.75, -0.5, -1.0, 0.0, 0.5, 0.25, 0.0, -0.25, -0.75, -0.5, -0.5, 1.0, -0.5, 0.0, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, 0.75, 0.0, -0.25, 0.75, 0.75, 0.0, 0.75, 0.25, 0.75, 0.75, -0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 1.0, 0.0, 0.25, 0.5, 0.75, 0.0, 1.0, -0.75, -0.25, -1.0, 0.5, 0.25, 0.75, -1.0, 0.5, -0.25, 0.75, -1.0, -1.0, -0.5, -0.5, 0.75, -1.0, -0.5, 1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.25, 0.0, -0.25, -1.0, -0.5, 0.25, 0.75, -0.75, -1.0, 0.0, 0.0, 0.5, 0.75, -0.25, -0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([1.0, -1.0, 0.5, 0.0, 0.5, 0.25, 0.0, 1.0, -0.75, -0.5, 1.0, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, -1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, -0.75, -0.25, -0.25, 0.0, 0.5, 0.0, -0.25, 0.0, -0.75, 1.0, -0.75, 1.0, 1.0, 0.0, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, 0.75, 0.5, 1.0, -1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.75, -0.75, 0.75, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.5, -0.25, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, -0.5, -1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, -1.0, -0.25, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.0, -0.25, -0.75, 1.0, -0.25, 0.75, 0.5, -1.0, 0.0, 0.5, 0.5, 0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 0.5, 0.5, 0.25, 0.75, 0.25, -0.25, -0.5, 0.75, 0.25, -0.25, 0.75, -0.75, 0.5, -0.75, -0.5, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.25, 0.5, 0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, -0.25, -1.0, -0.5, -1.0, 0.75, -0.25, 0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, 0.75, 0.0, -0.5, -1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const array5 = new Float32Array([1.0, 0.5, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, 0.25, -0.25, 0.5, 0.5, -1.0, 0.25, -0.75, 0.5, 0.5, 0.75, -0.25, 0.0, -1.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.5, -0.75, 0.0, -0.5, -1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, 0.5, 0.25, 0.5, 0.5, -1.0, -1.0, 0.25, 0.5, -1.0, 0.5, 0.0, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -0.25, 0.75, 0.5, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 0.0, -0.75, ]);
    render_bundle_encoder100.popDebugGroup();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device20.queue.submit([]);
    const array6 = new Float32Array([-0.25, 0.5, 0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.25, 0.75, -0.5, 0.0, 0.0, 0.25, 0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.5, -0.25, -0.75, 0.5, -0.75, -0.5, 1.0, 0.25, -0.5, -1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.75, -0.25, -0.75, 1.0, -0.75, 0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -0.75, -0.75, -1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.5, 0.0, -0.5, -0.25, -1.0, 0.0, 0.75, -1.0, 1.0, 1.0, 0.0, 0.0, 0.75, 0.0, 0.75, 0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 0.75, -0.75, -1.0, 0.5, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -1.0, 0.25, -0.5, -0.75, -0.25, 0.0, -1.0, 0.5, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    texture000.destroy();
    device00.queue.submit([]);
    
    
    
    
    
    
    
    device00.destroy();
    const array7 = new Float32Array([0.5, 1.0, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, -1.0, 1.0, -0.5, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.25, -0.5, -0.5, 1.0, 1.0, 0.5, -1.0, 0.25, 0.75, 0.5, 0.75, 0.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.5, 0.5, -0.25, -0.75, 0.5, -0.25, -1.0, -0.25, 0.0, -0.5, -0.5, 0.5, -0.75, 0.25, -0.25, -0.25, 1.0, 0.75, 1.0, 0.0, 0.25, 0.25, -1.0, 0.5, -0.75, -0.75, 0.25, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, -0.5, 0.25, -0.5, -0.5, 1.0, -0.25, -0.75, 0.75, 0.5, 0.75, 0.25, -1.0, 1.0, 0.75, -1.0, -0.75, 0.25, 0.0, ]);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.beginOcclusionQuery(0)
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture202.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setStencilReference(1);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_pass_encoder1000.popDebugGroup();
    
    device20.destroy();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture100.destroy();
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture101.destroy();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
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
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    const array8 = new Float32Array([1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 0.25, -0.25, 0.5, 0.75, -1.0, -0.75, -1.0, -0.75, 1.0, 0.0, -1.0, -0.25, -0.25, -0.75, -0.25, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.5, -0.25, -1.0, -1.0, 0.0, -1.0, -0.5, 0.5, 0.25, -0.25, -0.5, 0.25, -0.5, -1.0, -0.75, -1.0, -0.75, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.25, -0.75, 0.25, 0.5, -1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, 0.0, -0.75, 0.5, 0.0, -0.25, 0.0, -0.25, -0.5, -0.5, -0.5, 0.0, -0.75, 0.5, -1.0, -0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.25, -0.5, 0.25, ]);
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1000.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1021.insertDebugMarker("marker")
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1000.setStencilReference(1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
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
    texture103.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
        occlusionQuerySet: undefined
    });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const array9 = new Float32Array([1.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.0, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, 0.25, -0.5, 0.0, 0.0, -0.75, 1.0, -0.75, -0.5, 0.75, 0.5, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, 0.25, -0.75, 0.75, 1.0, 1.0, -1.0, -0.5, -1.0, 1.0, 1.0, 0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 0.75, 0.5, 0.0, -0.5, -1.0, -0.5, -0.25, -0.25, -0.75, 0.75, 0.5, -1.0, 0.0, 0.25, 0.0, 0.0, -0.5, -0.25, 0.25, -0.75, 0.75, 1.0, 0.5, -1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.75, 0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.25, 0.5, -0.5, 0.0, ]);
    
    texture300.destroy();
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder501.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    texture102.destroy();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    
    render_pass_encoder1030.beginOcclusionQuery(1)
    const array10 = new Float32Array([-0.25, -0.5, 0.5, -0.75, 0.25, -1.0, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, -0.75, 0.5, 0.75, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 0.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, -0.25, -0.5, 0.25, -0.75, 0.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.5, -0.5, 1.0, -0.5, -0.75, -0.5, -0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.0, -0.75, 0.0, 0.0, -0.25, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.25, 0.0, -0.5, 0.0, 0.75, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.75, 1.0, ]);
    texture101.destroy();
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const array11 = new Float32Array([-1.0, -0.75, 0.25, 1.0, -0.5, 0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.75, 1.0, 0.5, -1.0, 0.5, 0.5, -0.25, 0.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.0, 0.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.0, -1.0, 0.0, 0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, 0.5, -0.5, 0.5, 0.0, 0.75, 0.25, 1.0, -0.5, -1.0, 0.0, -0.75, 0.75, -0.75, 0.0, 1.0, 0.5, -0.5, 0.25, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, 1.0, 1.0, 0.0, 0.5, 0.5, -1.0, 0.0, 0.75, 0.0, 1.0, 0.75, 0.5, -0.75, 0.25, -0.75, 0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.75, 0.5, 0.75, 1.0, 0.5, 0.25, 0.75, 0.5, -0.25, 0.25, 0.0, ]);
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1031.beginOcclusionQuery(0)
    
    texture105.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    texture202.destroy();
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1031.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1001.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder3000.setStencilReference(1);
    texture500.destroy();
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder1021.insertDebugMarker("marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1021.insertDebugMarker("marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.setStencilReference(1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
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
        occlusionQuerySet: undefined
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device60.destroy();
    render_pass_encoder1030.setStencilReference(1);
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder303.insertDebugMarker("mymarker");
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const array12 = new Float32Array([-0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.0, 0.75, 0.5, 1.0, -0.25, 0.75, -0.75, 0.75, 0.75, -0.75, 0.25, 0.75, 0.75, -0.5, 0.75, -1.0, 1.0, 0.0, -0.5, 0.0, 0.25, 0.25, 0.75, 0.0, 1.0, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, -0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 0.5, -0.25, -0.75, 0.75, 0.75, 0.25, -0.5, 0.0, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 1.0, 1.0, -0.25, 0.25, 1.0, 0.75, -1.0, -0.75, -0.5, -1.0, 1.0, 0.0, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, -0.5, 1.0, -0.5, -1.0, -0.5, -0.5, -0.25, 0.0, 0.75, 0.75, 1.0, -1.0, 0.5, -0.75, -0.75, 0.25, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1031.setStencilReference(1);
    compute_pass_encoder5010.insertDebugMarker("marker")
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    render_pass_encoder1021.setStencilReference(1);
    
    device10.queue.writeTexture({ texture: texture104 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
        occlusionQuerySet: query300
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    compute_pass_encoder1021.insertDebugMarker("marker")
    render_pass_encoder3030.setStencilReference(1);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_pass_encoder1001.beginOcclusionQuery(0)
    texture106.destroy();
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture104.destroy();
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
        occlusionQuerySet: query001
    });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder3040.beginOcclusionQuery(0)
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1020.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setStencilReference(1);
    render_pass_encoder1031.beginOcclusionQuery(2)
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3000.popDebugGroup();
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_pass_encoder3030.beginOcclusionQuery(1)
    
    render_pass_encoder1010.popDebugGroup();
    
    render_pass_encoder1001.setStencilReference(1);
    device50.queue.writeTexture({ texture: texture500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    render_pass_encoder1021.beginOcclusionQuery(0)
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5030.insertDebugMarker("marker")
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setStencilReference(1);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3040.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder5030.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder5040.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    device10.queue.submit([]);
}