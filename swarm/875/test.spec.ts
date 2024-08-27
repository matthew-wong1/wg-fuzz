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
    
    
    const array0 = new Float32Array([1.0, -0.25, 0.5, 1.0, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -0.5, -1.0, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -1.0, -1.0, -1.0, 1.0, -0.75, -1.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, -0.75, -0.75, 0.0, -0.5, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, 0.75, -1.0, -0.75, -0.5, -1.0, 0.75, -0.5, 1.0, -0.75, -0.5, 0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -0.75, 0.0, 0.5, 0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 0.5, 0.75, -0.5, -0.25, 0.75, 0.5, -0.75, -0.75, 0.25, 1.0, 0.0, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([0.75, -0.75, -0.25, -0.25, 0.75, -0.75, 0.75, -1.0, 1.0, 0.0, -0.75, 0.25, 0.5, -0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -1.0, -0.5, 0.5, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, 0.5, -1.0, -0.5, 0.75, -0.75, -0.25, 0.75, 0.75, 0.5, 0.0, -0.5, 0.5, -0.25, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, 1.0, -0.25, 0.75, 1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.75, 0.5, -0.25, 0.75, 0.25, 0.5, -1.0, 0.5, 0.0, 0.0, 0.0, 0.0, -0.5, 0.25, -1.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.0, -0.5, 0.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.25, 0.75, -0.25, -1.0, -0.25, -1.0, 0.25, -1.0, 0.0, 0.25, -0.25, 1.0, 0.0, 0.5, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.popDebugGroup();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder001.popDebugGroup()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.0, 0.25, 0.75, -0.75, -0.25, -0.75, 0.5, 0.25, -1.0, 0.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.75, -0.75, 0.75, -1.0, 0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 0.5, -0.25, 1.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.5, 0.5, -1.0, 0.75, -1.0, 1.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.25, -0.25, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, 0.25, 0.75, -0.75, 0.5, -0.5, -1.0, -0.75, 0.25, -0.25, 1.0, 0.5, 1.0, 0.75, -0.75, 0.75, -0.75, -0.5, 0.0, 0.25, 0.75, 0.0, 0.25, 0.25, -1.0, 0.5, 0.5, 1.0, 0.5, -0.75, 0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.25, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    texture000.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.insertDebugMarker("mymarker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
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
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    buffer000.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query000.destroy()
    const array3 = new Float32Array([0.25, 1.0, 0.25, 1.0, 0.5, -0.5, -0.25, 0.0, 0.75, -1.0, -1.0, 0.25, -1.0, 1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 1.0, 1.0, -0.5, 0.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.5, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, -0.75, -1.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.5, 0.0, 0.25, 0.25, 0.5, 0.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.25, 1.0, 0.0, -0.25, -1.0, 0.0, 0.5, -0.25, 0.0, -0.75, 0.5, 0.0, 0.25, -1.0, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.75, 0.5, 0.0, -0.75, -1.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, -0.25, 0.75, -0.75, 1.0, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
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
    device20.destroy();
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    query000.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer001.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query000.destroy()
    texture100.destroy();
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.insertDebugMarker("mymarker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const array4 = new Float32Array([-0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 0.5, -0.25, -0.5, 1.0, 0.5, -0.5, -0.25, 0.0, -0.75, -0.5, -0.75, 0.75, -0.25, 0.25, 0.25, -0.25, 0.25, 0.25, 0.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, -0.5, 0.0, -0.5, -1.0, 0.75, 0.0, -0.5, -0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.75, -0.75, -1.0, 0.25, -0.75, -1.0, -0.5, 0.5, -0.5, -1.0, -0.5, 0.75, 0.5, 0.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 1.0, -0.25, 0.0, 0.0, -0.75, -1.0, -0.5, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, 0.0, 0.25, ]);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    device10.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query100.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.25, 0.5, -0.25, -0.25, 0.75, 0.0, -1.0, 0.25, 1.0, -1.0, -0.75, -0.75, -0.25, -0.5, 1.0, 1.0, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, 0.75, -0.25, 0.25, -0.25, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.25, 0.0, -1.0, -0.25, 0.0, -0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.5, 0.5, -0.25, 0.5, -0.25, 0.5, 0.75, 0.75, 0.5, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.0, 0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.25, 1.0, 0.5, 0.5, -0.5, -0.75, 0.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.5, ]);
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    render_bundle_encoder002.popDebugGroup();
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout002]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    buffer002.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder001.popDebugGroup();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer101.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("validation");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
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
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    compute_pass_encoder0020.popDebugGroup()
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device40.destroy();
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const array6 = new Float32Array([-0.5, 0.75, -1.0, 0.5, -1.0, -0.5, -0.75, 1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.75, 0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, -1.0, 1.0, -1.0, -0.25, 0.75, -0.5, 0.0, 0.75, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, 0.25, 1.0, -0.5, -1.0, -0.5, -0.25, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, -0.75, 1.0, 0.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 0.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.25, -0.5, 0.25, 0.0, -0.5, 0.5, 0.25, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, -0.5, 0.75, 1.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, -0.5, -0.25, 0.0, ]);
    buffer100.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0028 = device00.createPipelineLayout({ 
        label: "pipeline_layout0028",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.popDebugGroup();
    
    texture101.destroy();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    query103.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.popDebugGroup();
    device50.pushErrorScope("internal");
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout0029 = device00.createPipelineLayout({ 
        label: "pipeline_layout0029",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0030 = device00.createPipelineLayout({ 
        label: "pipeline_layout0030",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    texture500.destroy();
    
    compute_pass_encoder1000.insertDebugMarker("marker")
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
    query102.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    query100.destroy()
    
    query101.destroy()
    const array7 = new Float32Array([0.5, 0.0, 0.75, 0.0, -0.25, 1.0, 0.0, -1.0, 0.0, -1.0, 0.5, 0.5, -0.5, 1.0, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.5, -0.25, 0.75, 0.5, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, 0.75, -0.5, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 0.5, 0.5, 0.75, 0.0, 0.0, 0.75, 0.5, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, -0.25, 1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 0.75, -0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 1.0, -0.5, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout0031 = device00.createPipelineLayout({ 
        label: "pipeline_layout0031",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0032 = device00.createPipelineLayout({ 
        label: "pipeline_layout0032",
        bindGroupLayouts: [bind_group_layout003]
    });
    query500.destroy()
    
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const pipeline_layout0033 = device00.createPipelineLayout({ 
        label: "pipeline_layout0033",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1020.setStencilReference(1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout0034 = device00.createPipelineLayout({ 
        label: "pipeline_layout0034",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0035 = device00.createPipelineLayout({ 
        label: "pipeline_layout0035",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    render_bundle_encoder000.popDebugGroup();
    const pipeline_layout0036 = device00.createPipelineLayout({ 
        label: "pipeline_layout0036",
        bindGroupLayouts: [bind_group_layout002]
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
        occlusionQuerySet: query103
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    query004.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const pipeline_layout0037 = device00.createPipelineLayout({ 
        label: "pipeline_layout0037",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query001.destroy()
    query001.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder002.popDebugGroup();
    query001.destroy()
    device10.pushErrorScope("out-of-memory");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
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
        occlusionQuerySet: query104
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder004.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query002.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    query103.destroy()
    render_bundle_encoder001.popDebugGroup();
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    
    const pipeline_layout0038 = device00.createPipelineLayout({ 
        label: "pipeline_layout0038",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0039 = device00.createPipelineLayout({ 
        label: "pipeline_layout0039",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer500.destroy()
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_pass_encoder1040.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_pass_encoder1020.executeBundles([])
    texture102.destroy();
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.executeBundles([])
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
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout0040 = device00.createPipelineLayout({ 
        label: "pipeline_layout0040",
        bindGroupLayouts: [bind_group_layout004]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_pass_encoder5000.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder1040.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const pipeline_layout0041 = device00.createPipelineLayout({ 
        label: "pipeline_layout0041",
        bindGroupLayouts: [bind_group_layout002]
    });
    texture501.destroy();
    
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    
    render_pass_encoder5010.setStencilReference(1);
    compute_pass_encoder1000.popDebugGroup()
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    buffer005.destroy()
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer007 = command_encoder007.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder0020.popDebugGroup()
}