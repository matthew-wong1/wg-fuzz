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
    const array0 = new Float32Array([-0.75, 0.75, -0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.25, -0.75, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, 0.75, 0.5, 0.0, 0.75, 0.5, 1.0, -1.0, 0.0, 0.0, -0.5, 0.5, 0.0, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -0.75, 0.25, 0.75, 0.5, 0.5, -0.25, -0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -0.5, 1.0, -1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.0, -0.25, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, 0.5, -0.5, 0.5, 0.5, -0.75, 0.75, -0.75, ]);
    const array1 = new Float32Array([-0.75, -0.75, -0.75, -0.25, 1.0, -0.5, -1.0, -0.75, -0.75, -0.25, 1.0, 0.5, 0.5, -1.0, -0.5, 1.0, 1.0, 1.0, 1.0, 0.25, -1.0, 0.0, -0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.75, -1.0, -0.75, -0.5, 1.0, -1.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.5, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 0.25, 0.25, 0.25, 0.25, -0.5, 0.75, -0.5, 0.75, 0.0, -0.25, 0.5, -1.0, 0.0, -1.0, -0.25, 0.25, 0.5, 0.0, -0.75, -0.75, -0.5, 1.0, -0.25, 0.25, -0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.75, -1.0, 0.75, -0.25, 1.0, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, -1.0, 0.25, -1.0, 0.5, -0.25, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.0, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -0.5, 0.25, -0.75, 0.25, 0.75, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, -0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 1.0, -1.0, -0.5, -0.25, 0.75, -0.25, -1.0, 1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 0.0, 0.0, 0.25, 0.0, -0.25, 0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -0.75, -0.25, -0.75, 1.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.5, -0.5, -0.25, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.0, 1.0, 0.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.25, 0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    const array3 = new Float32Array([0.0, 1.0, -0.25, -1.0, 0.25, -1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, 0.0, -1.0, 0.75, 0.75, 1.0, 0.25, -0.75, 0.75, 0.0, 0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 0.0, -1.0, 0.25, 1.0, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.0, -0.75, 0.5, 0.25, 0.5, 0.25, 0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.5, -0.75, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -0.25, -1.0, 0.0, 1.0, -0.75, 1.0, 0.5, -0.5, 0.5, 1.0, 0.5, -0.5, 0.0, 0.75, 0.0, 0.0, -0.75, -1.0, -0.25, -0.5, -0.25, 0.5, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture000.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.destroy();
    
    
    
    const array4 = new Float32Array([0.75, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, 0.75, 0.75, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, 0.75, -1.0, 0.75, -1.0, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, -0.75, 1.0, -0.25, -0.25, -0.5, 1.0, -0.25, 0.75, -0.25, 1.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.75, -0.75, -0.25, -0.5, -1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -0.5, 0.75, -0.5, 0.75, 0.5, 0.25, -0.5, -0.5, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, 0.75, 0.5, 0.5, 0.5, 0.75, 0.25, -0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -1.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.0, 1.0, 0.5, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([1.0, 1.0, -0.25, 0.25, 0.0, 0.75, -1.0, -0.75, 0.0, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 0.25, -0.25, -0.75, 0.5, 0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.75, 0.0, -0.25, 1.0, 0.0, 0.75, 0.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, 1.0, 1.0, 1.0, -0.75, -0.25, -0.25, 0.25, -0.5, -0.25, 0.5, -0.5, 0.5, -1.0, 0.0, 0.0, 0.25, -0.25, -0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 1.0, 1.0, 0.75, 0.75, -0.25, -0.5, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.25, 0.75, 0.0, -0.5, -0.25, 0.25, -0.5, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    device10.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const array6 = new Float32Array([-0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.25, -0.25, 1.0, -0.25, -0.75, -1.0, -1.0, -0.25, 0.5, 0.0, 1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 0.75, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, -1.0, 0.25, -0.25, 0.75, -1.0, 0.75, 0.75, -0.5, 0.75, 0.0, 1.0, 0.25, -0.75, 0.5, -0.25, -1.0, -0.75, 0.75, -1.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 0.75, -0.25, 0.25, -1.0, 0.75, 0.25, -0.75, -0.25, 0.5, -1.0, 1.0, 1.0, -0.5, 0.0, 0.5, 1.0, 0.75, -0.5, 0.75, -0.25, 0.0, -0.75, 0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 0.5, 0.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -0.75, 0.0, 1.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.pushErrorScope("validation");
    command_encoder301.pushDebugGroup("mygroupmarker")
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
    command_encoder300.popDebugGroup()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    command_encoder301.popDebugGroup()
    command_encoder301.insertDebugMarker("mymarker");
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder301.popDebugGroup()
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_bundle_encoder300.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder302.pushDebugGroup("mygroupmarker")
    device60.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer300 = command_encoder300.finish();
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.popDebugGroup()
    command_encoder302.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("internal");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    device50.destroy();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture400.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder303.insertDebugMarker("mymarker");
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
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    const command_buffer303 = command_encoder303.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([-1.0, 0.75, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -1.0, -0.75, 1.0, -0.75, -0.25, -0.75, 1.0, -1.0, -0.5, 1.0, -0.5, -0.5, -0.75, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, 0.5, 0.75, -0.75, -0.75, 0.25, 0.5, 0.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.75, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.5, -1.0, 0.5, 0.5, -0.25, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, -0.25, 0.75, 0.75, 1.0, 0.5, 0.5, -1.0, 0.0, -0.75, -0.25, 0.5, -0.5, 0.25, 0.75, -0.5, 1.0, 0.5, -0.5, 1.0, -0.5, 0.25, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, ]);
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array8 = new Float32Array([0.75, -1.0, -1.0, 0.25, 1.0, 0.25, -0.25, 0.0, -0.75, 0.5, 0.75, -0.5, 0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.75, 1.0, -1.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.5, -0.25, -1.0, -1.0, 0.75, 0.75, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -1.0, 0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.75, -0.75, 0.5, -0.75, 0.25, -0.5, -0.25, -0.25, -0.25, 1.0, -0.75, -0.75, 0.5, 0.0, 0.25, 0.25, -0.75, -0.25, 1.0, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, -0.5, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, -1.0, ]);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder301.popDebugGroup();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    device30.pushErrorScope("out-of-memory");
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const command_buffer400 = command_encoder400.finish();
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
        occlusionQuerySet: query302
    });
    
    
    
    
    
    
    device70.pushErrorScope("internal");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
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
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3040.executeBundles([])
    
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder301.popDebugGroup();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    
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
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    
    render_pass_encoder3050.insertDebugMarker("marker");
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
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
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3060.beginOcclusionQuery(0)
    compute_pass_encoder3010.popDebugGroup()
    
    
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.insertDebugMarker("marker");
    texture300.destroy();
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_bundle_encoder300.popDebugGroup();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    render_pass_encoder3040.executeBundles([])
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.0, 0.25, 0.5, 1.0, 1.0, 0.0, -0.25, 0.75, -0.75, 0.0, 1.0, -0.75, 0.75, -0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 0.25, 0.5, 0.0, 0.0, 0.25, -1.0, 1.0, 0.5, 0.25, -0.25, -1.0, 1.0, 0.75, -0.75, -1.0, -1.0, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, -0.5, 0.75, 0.75, 0.5, -1.0, -0.75, -0.5, 0.5, -1.0, 1.0, 0.75, -0.5, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, -0.25, -0.75, 0.25, 1.0, -0.5, 0.25, 0.25, -0.75, 0.0, -1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, -0.5, -0.5, 0.0, -0.5, -1.0, 0.0, -1.0, ]);
    render_pass_encoder3060.insertDebugMarker("marker");
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    render_bundle_encoder702.insertDebugMarker("marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3060.endOcclusionQuery()
    
    
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder3050.beginOcclusionQuery(0)
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.popDebugGroup();
    
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder3050.endOcclusionQuery()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder3060.executeBundles([])
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    render_pass_encoder3050.executeBundles([])
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder3050.beginOcclusionQuery(0)
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    render_bundle_encoder300.popDebugGroup();
    
    render_pass_encoder3060.executeBundles([])
    
    
    texture301.destroy();
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device90.pushErrorScope("validation");
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device80.destroy();
    compute_pass_encoder3020.popDebugGroup()
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.popDebugGroup();
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3050.endOcclusionQuery()
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3050.insertDebugMarker("marker");
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    compute_pass_encoder7010.setPipeline(compute_pipeline701);
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture901.destroy();
    render_bundle_encoder401.insertDebugMarker("marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_bundle_encoder702.insertDebugMarker("marker");
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3060.insertDebugMarker("marker");
    
    render_pass_encoder3040.beginOcclusionQuery(0)
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device100.pushErrorScope("out-of-memory");
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3070.executeBundles([])
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3060.pushDebugGroup("group_marker");
    compute_pass_encoder7000.dispatchWorkgroups(100);
    render_pass_encoder3050.executeBundles([])
    render_pass_encoder3040.endOcclusionQuery()
    render_bundle_encoder902.insertDebugMarker("marker");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder3070.pushDebugGroup("group_marker");
    render_bundle_encoder701.popDebugGroup();
    render_pass_encoder3070.popDebugGroup();
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder3050.pushDebugGroup("group_marker");
    
    
    
    
    compute_pass_encoder3010.popDebugGroup()
    render_bundle_encoder900.insertDebugMarker("marker");
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder3050.insertDebugMarker("marker");
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder7010.popDebugGroup()
    
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    
    texture900.destroy();
    
    render_pass_encoder3080.executeBundles([])
    render_pass_encoder3040.executeBundles([])
    
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3040.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer702 = command_encoder702.finish();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer705, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer705, 0);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3050.popDebugGroup();
}