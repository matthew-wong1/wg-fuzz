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
    
    const array0 = new Float32Array([-0.25, 0.75, 0.0, 0.5, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -0.75, 0.0, 0.0, -0.75, -1.0, 1.0, -0.25, -1.0, 0.75, 0.75, 0.5, -1.0, -0.75, -0.25, -0.5, 0.5, 0.0, -1.0, 0.0, 1.0, -0.25, 1.0, -0.75, -0.75, -1.0, 0.5, 1.0, 0.75, 0.75, 0.5, 1.0, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -0.75, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, -1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.0, -0.5, -0.75, 0.25, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.0, 0.5, 1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, 0.0, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.75, -0.5, -0.25, 1.0, 0.25, 0.25, -1.0, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 0.5, 0.75, 0.75, -0.25, 0.75, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 1.0, 0.25, 0.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.0, 0.0, 0.5, 0.5, 0.0, 1.0, 0.75, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 0.0, 1.0, -0.5, 0.5, 0.0, -0.75, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, 0.5, 1.0, 1.0, -0.75, 1.0, -0.25, 0.0, 1.0, 0.0, 1.0, 0.5, 0.75, 0.25, 0.0, 0.5, -0.25, -0.75, 1.0, 0.0, -0.75, -0.75, -1.0, -0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("validation");
    device00.queue.submit([command_buffer000, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture001.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.submit([]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    
    
    query000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture000.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder001.popDebugGroup();
    
    device00.queue.submit([command_buffer000, ]);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.popDebugGroup();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture002.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    
    query000.destroy()
    query000.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder101.popDebugGroup();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    render_bundle_encoder001.popDebugGroup();
    const array2 = new Float32Array([1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, 0.0, 0.75, -1.0, 1.0, -0.25, 0.5, 0.5, -0.75, 0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.25, 1.0, 0.25, -0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, -1.0, 0.25, -0.5, -0.75, -0.75, 1.0, 0.75, 0.5, 1.0, 0.5, 0.5, 0.5, 0.0, 0.25, -0.25, 0.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.25, 0.5, -0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -1.0, -1.0, -0.25, 0.25, -0.75, -0.25, 0.0, -0.75, -1.0, 0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 0.75, 0.25, -0.75, -1.0, -0.5, -0.5, ]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.queue.submit([]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
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
    
    query001.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_buffer102 = command_encoder102.finish();
    
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const array3 = new Float32Array([-0.5, -0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 1.0, 0.75, 1.0, 0.75, -1.0, -0.25, -0.25, 0.75, -0.75, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -0.5, -1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -1.0, 0.75, -0.25, 0.0, -1.0, 0.5, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.25, 0.25, -0.5, 0.0, -0.25, -1.0, -0.25, 0.75, 0.25, 1.0, 0.75, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 1.0, 0.25, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 0.25, -0.75, -0.5, 1.0, -0.75, -0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.5, -0.5, 0.75, 0.0, 0.25, 0.0, -0.5, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    
    query000.destroy()
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    query001.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query001.destroy()
    
    query001.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    texture004.destroy();
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    texture003.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    texture005.destroy();
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query001.destroy()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder001.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture101.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query001.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_buffer001 = command_encoder001.finish();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder103.pushDebugGroup("group_marker");
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array4 = new Float32Array([-0.5, 0.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, 0.25, -0.25, 0.75, -0.5, 1.0, -0.25, -1.0, -0.25, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, -0.5, 1.0, -1.0, 1.0, 0.5, 1.0, 0.75, -0.5, -0.25, 0.5, -0.5, 0.5, 1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.5, 0.75, 0.0, -0.75, 1.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, -0.5, -0.5, 0.25, 1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout103]
    });
    query003.destroy()
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer002 = command_encoder002.finish();
    
    render_bundle_encoder103.popDebugGroup();
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    render_bundle_encoder000.popDebugGroup();
    
    query004.destroy()
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.submit([command_buffer001, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query003.destroy()
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout005]
    });
    query000.destroy()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture007 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.popDebugGroup();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("validation");
    
    
    compute_pass_encoder1000.popDebugGroup()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    device00.queue.writeTexture({ texture: texture007 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture006.destroy();
    
    query200.destroy()
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout104]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const command_buffer003 = command_encoder003.finish();
    render_bundle_encoder200.popDebugGroup();
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.submit([command_buffer003, ]);
    
    const array5 = new Float32Array([-0.5, -0.5, 0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 1.0, 0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -0.5, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, -0.75, 0.5, -0.75, -0.5, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.75, 0.75, 0.5, -0.5, 0.75, 0.25, -1.0, 1.0, -1.0, 0.75, 0.5, 0.0, -0.75, 1.0, -0.25, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, 0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, -0.75, -0.25, 0.25, -0.25, -1.0, 0.5, -1.0, ]);
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    texture007.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout104]
    });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout004]
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout006]
    });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture103.destroy();
    
    query005.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query201.destroy()
    query003.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_bundle_encoder201.popDebugGroup();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout004]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout104]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    texture200.destroy();
    render_bundle_encoder202.popDebugGroup();
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query202.destroy()
    
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout007]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query201.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder002.popDebugGroup();
    command_encoder004.copyTextureToTexture(
        {
            texture: texture006
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    texture103.destroy();
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.submit([command_buffer002, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout006]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    const command_buffer005 = command_encoder005.finish();
    query004.destroy()
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.popDebugGroup()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    texture101.destroy();
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder200.popDebugGroup();
    query004.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array6 = new Float32Array([-0.5, 0.75, -0.75, -0.5, 1.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.5, -0.5, -0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 0.0, -0.5, 0.0, -0.5, 1.0, -0.25, 0.75, 1.0, 0.5, 0.5, 0.75, 0.5, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 0.75, -0.25, 0.75, -0.75, 0.0, -0.5, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, -0.75, -0.25, 1.0, -0.75, 0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -1.0, -0.5, 0.5, 0.75, 0.25, -0.75, -1.0, 0.5, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 1.0, -0.25, ]);
    query301.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    query002.destroy()
    const array7 = new Float32Array([-1.0, 1.0, -0.5, 1.0, 0.0, -0.25, -1.0, -1.0, -1.0, 0.0, 0.25, -0.75, -0.75, -0.75, 0.0, -1.0, -0.5, -0.25, -0.5, 1.0, -1.0, -0.75, 1.0, 1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -1.0, 0.25, -0.5, 0.5, 0.0, -1.0, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, 0.75, -0.25, -0.25, 0.0, 0.75, 1.0, 0.75, -1.0, -0.75, 0.75, -0.5, -0.5, -0.5, 1.0, 0.0, -1.0, -0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -0.25, 0.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, 0.75, -0.5, 0.25, 0.75, -0.75, 1.0, 0.75, -1.0, 0.0, -0.5, -1.0, -0.25, 0.5, 0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, 0.5, -0.75, ]);
    const texture_view0080 = texture008.createView({ label: "texture_view0080" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const texture_view0081 = texture008.createView({ label: "texture_view0081" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query203.destroy()
    
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout002]
    });
    query300.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device00.queue.submit([command_buffer002, ]);
    const command_buffer201 = command_encoder201.finish();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    const command_buffer006 = command_encoder006.finish();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0040.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer003, ]);
    device30.queue.submit([]);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer202 = command_encoder202.finish();
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([command_buffer006, ]);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer004, ]);
}