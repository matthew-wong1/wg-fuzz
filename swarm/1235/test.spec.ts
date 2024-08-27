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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const array0 = new Float32Array([0.75, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, 0.0, 0.5, 0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.5, -1.0, 0.75, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, -0.75, -0.25, 0.25, -0.25, -0.75, 1.0, -0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, 0.0, 1.0, 1.0, 0.25, 0.0, 0.25, 0.25, 0.25, 0.25, 0.25, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, 0.75, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, 0.5, 0.75, 0.5, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, -0.5, -0.25, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, -0.25, 0.75, -0.75, 0.25, 0.25, -0.5, ]);
    
    
    
    
    
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
    
    
    texture300.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    device30.destroy();
    
    
    
    const array1 = new Float32Array([0.75, 0.0, 1.0, -0.5, 0.0, 0.0, -1.0, 1.0, 0.0, -0.25, 0.25, 0.0, -0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 1.0, 0.75, 0.75, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, 0.0, -1.0, -0.25, -0.25, -0.5, -0.75, 1.0, 0.25, -1.0, -0.5, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, 0.5, 0.75, 0.0, 1.0, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 0.75, -0.5, 0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, 0.25, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array2 = new Float32Array([-0.75, -0.75, 0.75, 0.0, -0.75, 1.0, -0.5, 0.75, 1.0, -0.25, 0.5, 0.25, 0.5, 0.75, 0.0, 0.0, 1.0, -0.75, 0.0, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.75, 0.75, 0.5, -0.25, 1.0, 1.0, -1.0, 0.25, 0.5, 0.75, -0.5, -1.0, -0.75, 0.5, -0.75, 0.0, -0.75, -1.0, -0.75, 1.0, -0.75, -0.25, 0.5, -0.25, 0.75, 0.0, -0.75, 0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 1.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.5, -0.5, 1.0, -0.25, -0.25, -0.25, -0.75, 1.0, -0.25, 1.0, -0.25, -0.5, 0.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.5, -0.25, 0.0, 0.5, 1.0, 0.0, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device20.destroy();
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.insertDebugMarker("mymarker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder402.pushDebugGroup("group_marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
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
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array3 = new Float32Array([-1.0, 0.75, -1.0, -1.0, 0.0, -0.5, -0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -0.5, -0.25, -1.0, -0.75, -1.0, -0.5, -0.5, -0.25, 0.25, -0.75, -1.0, 1.0, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, -0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -1.0, -0.75, 0.25, 0.25, 0.75, -0.5, 0.75, 0.0, -0.25, -0.75, 0.75, 0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 0.5, -0.25, 0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.0, 0.0, 1.0, -0.25, -0.75, 1.0, 0.5, -0.25, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    device40.pushErrorScope("out-of-memory");
    device60.pushErrorScope("out-of-memory");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    texture600.destroy();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    texture301.destroy();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    command_encoder100.insertDebugMarker("mymarker");
    const array4 = new Float32Array([1.0, 0.5, -0.5, -0.5, 0.25, -0.25, -0.5, -0.5, -0.75, 1.0, -0.25, -0.75, 0.0, 0.25, 0.25, 0.0, 0.25, 0.75, 0.25, -0.25, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 1.0, 1.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, 0.75, 1.0, 0.0, -0.75, -1.0, -0.75, 0.75, 0.75, 0.75, 0.5, -0.75, 0.25, 0.25, -0.25, 1.0, 0.25, 0.0, -1.0, -0.5, 0.0, 0.0, -1.0, 0.75, 0.75, -0.25, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, -0.5, -0.25, 0.25, 0.25, -0.25, 0.0, -0.5, 0.5, -1.0, 0.0, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 0.25, -0.25, 0.0, 0.5, -0.25, 0.5, -0.75, 0.0, 0.0, 0.25, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder402.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder400.popDebugGroup();
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    command_encoder400.popDebugGroup()
    
    compute_pass_encoder4000.popDebugGroup()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    
    command_encoder600.insertDebugMarker("mymarker");
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder601.insertDebugMarker("mymarker");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device30.pushErrorScope("validation");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    
    
    const array5 = new Float32Array([0.75, -0.75, 0.75, -0.25, -0.25, -1.0, 1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.25, -1.0, 0.0, -0.5, -1.0, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 1.0, 0.75, -0.75, 0.0, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, -0.25, 0.0, 0.5, 0.5, 0.0, 1.0, 0.75, -0.5, -0.25, ]);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    render_bundle_encoder401.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
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
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.popDebugGroup()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    device60.pushErrorScope("internal");
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    command_encoder403.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    compute_pass_encoder4010.popDebugGroup()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    
    
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder402.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    command_encoder400.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    compute_pass_encoder4000.popDebugGroup()
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
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder401.popDebugGroup();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder403.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    command_encoder403.copyTextureToBuffer(
        {
            texture: texture400
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    command_encoder600.popDebugGroup()
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
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
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array6 = new Float32Array([0.75, 0.0, -0.75, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, 1.0, -0.75, 0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, -0.25, 0.75, 0.5, -0.25, 0.0, 1.0, 0.25, 0.5, -1.0, 0.75, 0.25, 1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 1.0, -0.5, -0.5, -0.25, -0.25, -0.75, 1.0, -0.75, 0.5, -0.75, 0.75, -0.25, 0.25, -0.25, 0.0, 1.0, 1.0, -0.5, -0.25, -1.0, -0.25, 0.75, 0.25, 0.25, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 1.0, 0.75, -0.75, -0.5, -1.0, 0.0, 0.25, 0.0, -0.5, -0.5, -0.5, ]);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    render_bundle_encoder402.popDebugGroup();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder600.popDebugGroup();
    command_encoder403.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    compute_pass_encoder4020.popDebugGroup()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder403.copyBufferToBuffer(
        buffer402,
        0,
        buffer401,
        0,
        400
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    command_encoder404.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    
    
    
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer404,
        0
    )
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder601.pushDebugGroup("mygroupmarker")
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder404.insertDebugMarker("mymarker");
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    device10.pushErrorScope("validation");
    command_encoder404.pushDebugGroup("mygroupmarker")
    command_encoder405.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer402,
        0
    )
    texture601.destroy();
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture401.destroy();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    command_encoder403.copyBufferToBuffer(
        buffer400,
        0,
        buffer401,
        0,
        400
    );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer404,
        0
    )
    command_encoder404.resolveQuerySet(
        query402,
        0,
        32,
        buffer405,
        0
    )
    
    
    
    render_bundle_encoder402.popDebugGroup();
    command_encoder404.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    command_encoder404.popDebugGroup()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    command_encoder404.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pass_encoder4040 = command_encoder404.beginComputePass({ label: "compute_pass_encoder4040" });
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    compute_pass_encoder4020.popDebugGroup()
    command_encoder500.insertDebugMarker("mymarker");
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder405.resolveQuerySet(
        query401,
        0,
        32,
        buffer404,
        0
    )
    command_encoder405.insertDebugMarker("mymarker");
    render_bundle_encoder600.popDebugGroup();
    compute_pass_encoder6010.insertDebugMarker("marker")
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer404,
        0
    )
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
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder4000.insertDebugMarker("marker")
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder405.resolveQuerySet(
        query400,
        0,
        32,
        buffer405,
        0
    )
    {
        await buffer405.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer405.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer405.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device70.pushErrorScope("internal");
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder405.popDebugGroup()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    device40.queue.writeBuffer(buffer405, 0, array0, 0, array0.length);
    const array7 = new Float32Array([-0.75, 0.75, 0.5, 0.75, 0.25, -0.75, -0.5, 1.0, 0.5, -0.25, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.0, 0.0, -0.25, 0.5, -0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.0, -0.75, 0.0, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 0.0, 0.75, 0.5, -1.0, 0.5, 0.5, -0.75, 0.5, -0.5, -0.75, 0.5, 0.0, -1.0, -0.75, 1.0, 0.5, -0.5, 0.75, -0.75, 1.0, 0.0, -0.75, 0.75, 0.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.25, 0.25, 0.5, 0.5, 0.0, 1.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -0.5, -0.75, 0.25, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, -0.5, -0.75, 0.5, -0.25, -0.5, 0.0, 0.5, ]);
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.submit([]);
    device40.queue.submit([]);
    compute_pass_encoder4000.popDebugGroup()
    device70.queue.submit([]);
    command_encoder400.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder601.popDebugGroup()
    command_encoder401.popDebugGroup()
}