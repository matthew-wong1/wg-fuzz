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
    const array0 = new Float32Array([0.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, 0.75, 0.75, -0.25, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, 0.25, 0.5, -0.25, -0.75, 0.25, 0.0, -1.0, 1.0, 0.75, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 0.25, -1.0, 1.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -0.25, 0.5, 0.25, -0.25, 0.25, 1.0, 0.5, 0.0, -0.75, 0.25, 0.0, 1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 1.0, -0.25, 0.25, -0.75, 0.5, 0.75, -0.25, -0.25, -0.5, -0.75, -0.75, -0.5, -0.75, -0.75, 0.0, 0.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.0, -0.5, -0.25, 0.25, ]);
    
    const array1 = new Float32Array([0.5, 1.0, 1.0, 0.75, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, -1.0, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 1.0, -0.75, 0.25, 0.5, 0.25, 0.25, 1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, 0.75, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.5, -0.25, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, -1.0, 0.5, -0.75, 0.5, -0.5, -1.0, -0.25, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 1.0, -0.25, -0.75, 1.0, 0.5, 0.0, 0.5, 0.0, 0.0, 0.5, 0.25, -0.25, 0.25, 0.25, 0.75, -0.25, -0.5, 0.0, 0.0, -0.25, -0.25, 0.25, 0.0, 0.75, -0.25, 0.25, -0.5, -0.5, 0.25, ]);
    
    const array2 = new Float32Array([-1.0, 1.0, -1.0, 1.0, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, -1.0, -0.75, -1.0, -1.0, -0.5, 1.0, -0.75, -1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.5, -0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.5, -0.75, 0.25, -1.0, 0.25, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 0.0, 0.75, 0.5, -0.25, 0.25, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, -0.25, 0.5, 0.25, 0.25, 0.0, 0.75, -0.25, 0.5, 0.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 0.0, -0.75, -0.25, 0.25, 0.5, 1.0, ]);
    
    const array3 = new Float32Array([0.75, 1.0, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.25, -0.25, -0.75, 1.0, 0.75, 0.5, -0.75, 0.5, -0.25, -1.0, -0.5, 1.0, -0.75, 0.5, 0.5, 0.0, -1.0, 0.0, -0.5, -0.5, -0.75, 0.0, -0.5, 0.0, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.75, 0.0, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, 0.0, 0.25, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, 0.75, 1.0, 0.25, -0.25, 0.75, 0.0, -1.0, 0.25, -0.5, -1.0, 1.0, 0.0, -0.75, 0.25, 0.75, 0.25, 0.25, -0.5, 1.0, 0.5, 1.0, 0.25, 0.5, -0.5, -1.0, 0.5, 1.0, 1.0, -0.75, -0.75, 1.0, 1.0, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.5, 0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 0.75, 1.0, 0.25, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.5, 0.25, -0.5, 0.25, 0.25, 0.5, 0.25, 0.5, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, -1.0, -0.5, -0.25, 0.25, 0.0, 1.0, 0.0, 0.0, 0.75, 0.75, 0.25, -0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 0.75, -1.0, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, 0.75, 0.5, 0.25, 0.5, 1.0, -1.0, -1.0, 0.75, -0.75, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 1.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture000.destroy();
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    query000.destroy()
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    query000.destroy()
    const array5 = new Float32Array([-0.75, 0.25, -0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 1.0, 0.5, -0.75, 0.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 1.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -0.75, 0.5, 0.5, 0.75, -0.25, 0.75, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, -1.0, 1.0, -0.25, -0.5, -1.0, 0.5, -0.75, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.75, 0.25, -1.0, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, 0.5, 0.0, 0.75, -0.25, -0.25, -0.5, -0.75, -0.25, 0.75, 0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, -1.0, -0.25, 1.0, 0.5, ]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder0000.executeBundles([])
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const array6 = new Float32Array([0.25, 1.0, -0.75, 0.75, 0.75, 0.25, -0.75, 0.75, 0.5, 0.25, 1.0, -0.5, -1.0, -0.25, -0.75, -0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 1.0, -0.75, 0.5, -0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 0.5, 0.0, -0.25, 0.75, -0.25, 1.0, 0.0, 0.0, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.75, -0.25, 0.0, 0.0, -0.25, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, -0.25, 0.5, 0.75, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, 0.25, -0.75, -0.75, -0.25, -0.5, -0.75, -0.5, 0.75, 0.75, 0.5, -0.5, 0.0, -0.75, -0.5, -0.5, -0.25, 1.0, -0.5, 0.25, -1.0, -0.25, 0.75, -1.0, -1.0, 0.75, -0.25, 0.25, ]);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    texture200.destroy();
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.insertDebugMarker("mymarker");
    render_pass_encoder0010.executeBundles([])
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
        occlusionQuerySet: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const array7 = new Float32Array([0.0, -0.25, 0.75, -0.25, -1.0, 0.75, -0.5, -0.75, -0.75, -1.0, -0.5, 1.0, 1.0, 0.75, 0.5, 1.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.5, -1.0, -0.75, 1.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.25, 0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.5, -0.5, -0.75, -0.5, 0.0, -1.0, 0.5, 1.0, 0.5, 1.0, -1.0, 0.5, 0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 0.75, 0.25, -0.75, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, -0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.25, -0.25, 0.25, 1.0, 0.0, -0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 0.5, 0.0, 0.25, -0.25, 0.0, 0.25, -1.0, 0.75, -0.5, 0.25, ]);
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    query100.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([-0.25, 0.75, 0.75, 1.0, -0.75, -0.75, -1.0, -1.0, -0.25, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, -1.0, 1.0, 0.75, -1.0, 0.5, 0.75, -1.0, 0.75, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.5, -1.0, 1.0, 0.75, 1.0, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, -1.0, -0.5, 0.5, 0.0, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, 0.75, 1.0, 0.0, -0.25, -0.75, -1.0, -0.25, -1.0, -0.25, -0.25, 0.0, -0.25, -1.0, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, -0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 0.0, 1.0, -0.25, ]);
    
    const array9 = new Float32Array([1.0, -0.25, 0.5, -1.0, 0.5, 0.25, 0.5, -0.5, -0.25, -0.5, 0.5, -0.75, 0.25, -0.25, 0.5, -0.75, 0.75, -0.75, 0.5, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, -0.75, 1.0, 0.5, 0.25, -0.25, 0.0, 0.25, -0.25, -0.5, 1.0, -1.0, -1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, 0.0, -0.5, -0.25, -0.75, -0.25, 1.0, 0.75, 0.75, 0.5, -0.75, 0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.5, -1.0, 0.25, -1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.0, -1.0, -0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, 0.5, -1.0, -0.75, 1.0, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([0.0, 0.5, -0.75, -0.75, -1.0, -0.75, 0.25, -0.75, 0.0, 0.5, -0.5, 0.0, 0.0, 1.0, 0.0, 0.5, -0.5, 0.0, 0.75, 0.75, -0.25, 0.75, -0.75, 1.0, 1.0, 0.5, 1.0, 0.0, -0.75, 1.0, -0.75, -1.0, -0.5, -0.75, 0.25, 1.0, -0.75, 1.0, -0.75, -0.25, 0.5, -0.75, 1.0, 0.25, 0.75, 0.5, 1.0, 0.25, 0.5, 1.0, -0.5, 0.75, -1.0, -0.75, 1.0, -0.5, 0.0, -1.0, 0.5, -0.25, 0.75, -0.75, 0.25, 0.75, 0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, 1.0, 1.0, -0.5, 1.0, 0.5, -0.5, -1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -1.0, -0.5, 0.0, ]);
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
        occlusionQuerySet: query000
    });
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device00.pushErrorScope("internal");
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    query000.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder0040.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder100.insertDebugMarker("mymarker");
    texture001.destroy();
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    texture002.destroy();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0010.executeBundles([])
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query100.destroy()
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.executeBundles([])
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
        occlusionQuerySet: query100
    });
    render_pass_encoder0030.executeBundles([])
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    query101.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0010.executeBundles([])
    query002.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    query003.destroy()
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array11 = new Float32Array([0.25, -0.5, 0.0, 0.5, 0.0, -1.0, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, 0.5, -1.0, 1.0, 0.5, -0.25, -1.0, 0.75, 0.5, -1.0, 0.5, -0.5, 0.0, -0.75, -0.25, -0.75, 0.0, 0.25, 0.75, 0.25, -0.75, 1.0, 0.75, 0.0, 0.75, 1.0, -0.75, -0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.5, 0.75, 0.0, -1.0, -0.75, 0.75, 0.0, -0.5, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 0.75, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, 0.5, -0.25, 0.5, -1.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.75, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, -0.25, ]);
    render_pass_encoder0010.executeBundles([])
    
    device00.pushErrorScope("internal");
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    query001.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query005
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([-0.5, 0.25, -0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -0.5, 0.75, 0.0, 0.75, 0.75, 0.25, -0.75, -0.75, 0.0, 1.0, 0.0, -0.5, 0.25, -1.0, 0.75, 0.25, -0.5, -1.0, -1.0, -1.0, -1.0, 0.25, -1.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.5, 0.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.0, 0.0, -1.0, 0.75, -1.0, 1.0, -0.5, -0.5, 0.75, -1.0, 1.0, 0.5, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, -0.25, -0.25, -0.5, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.5, -0.75, -1.0, 0.25, -0.25, ]);
    query101.destroy()
    query000.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query001.destroy()
    const array13 = new Float32Array([-0.5, 0.0, 0.25, -0.5, 0.0, -0.5, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 0.25, 1.0, 0.5, 0.5, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.25, -0.75, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, 1.0, 0.25, -0.25, 1.0, -0.25, 0.75, 0.5, -0.75, 0.5, 0.0, -0.25, 0.75, 0.25, 0.75, -0.25, 0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 0.5, -0.5, -0.5, -0.5, 0.0, 0.75, 0.25, 0.0, 0.25, -0.5, 0.5, -1.0, -0.25, -1.0, -0.25, -0.25, -0.75, 0.5, 0.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.5, -0.75, -1.0, 0.25, -0.25, -0.5, -1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    texture100.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder0020.executeBundles([])
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
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
        occlusionQuerySet: query005
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query005.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    query003.destroy()
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device00.pushErrorScope("validation");
    const array14 = new Float32Array([-0.25, 0.25, -0.75, -1.0, -0.25, 0.0, -0.25, 0.25, 0.75, -1.0, 0.0, 1.0, -0.25, -0.25, 0.75, -0.25, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, 0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 0.25, -1.0, 0.5, -1.0, -1.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, -0.25, 0.75, -0.75, 0.0, -0.25, -0.5, 0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.25, -0.25, 1.0, -0.75, 0.5, 0.75, 1.0, 1.0, 0.75, 0.25, -0.5, -0.75, -0.5, 0.0, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, ]);
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder002.insertDebugMarker("marker");
    query000.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0040.executeBundles([])
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query006.destroy()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.executeBundles([])
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array15 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.25, 1.0, 0.5, -0.75, 0.75, 0.5, -1.0, 0.0, -0.25, 0.0, -0.25, 0.0, 1.0, -0.5, -0.5, -0.75, 1.0, 0.25, 0.0, -1.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, 0.25, 0.25, 0.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, 1.0, 0.5, 0.75, -0.5, 0.5, 0.75, -1.0, 1.0, 0.5, 0.0, 0.75, -1.0, -1.0, -0.75, -1.0, 1.0, -0.5, 0.25, 1.0, 0.25, -0.5, -0.25, 1.0, 0.5, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.75, 0.75, 1.0, -0.5, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, -0.25, 0.25, ]);
    query000.destroy()
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture003.destroy();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1000.executeBundles([])
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture500.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.executeBundles([])
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const array16 = new Float32Array([0.75, 0.5, -0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.5, -0.75, -0.5, -0.75, 0.75, 0.25, 1.0, 0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, -0.5, -1.0, 0.25, 0.5, 0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 0.25, -0.75, 0.25, 0.75, -1.0, 0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.25, -0.25, 0.25, 0.25, 0.25, 0.0, 0.25, 0.5, 0.0, -1.0, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, 0.75, -0.25, -0.5, -0.25, -0.5, -1.0, 0.25, 0.0, -1.0, -0.5, 0.25, -0.5, -0.75, ]);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query001.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder300.insertDebugMarker("mymarker");
    query007.destroy()
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device30.pushErrorScope("internal");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder0010.executeBundles([])
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query005.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0070.executeBundles([])
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0080.executeBundles([])
    render_pass_encoder1030.executeBundles([])
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query006
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query102.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    query103.destroy()
    
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}