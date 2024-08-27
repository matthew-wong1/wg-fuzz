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
    
    
    
    const array0 = new Float32Array([0.25, -0.75, 0.5, 1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.0, 0.5, -0.25, -0.5, -0.25, 1.0, 0.5, -0.25, 0.75, -0.25, 0.5, 0.5, 1.0, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.0, -1.0, 1.0, -0.5, -0.75, -1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.5, 0.0, -0.75, -1.0, -0.75, 1.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.25, -0.25, 1.0, 0.0, 1.0, -0.75, 1.0, 0.5, 0.5, 0.5, 0.0, -1.0, 1.0, 1.0, 0.25, 0.75, 0.75, 1.0, -0.5, 0.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.25, -0.5, -0.75, -0.25, -0.5, -0.75, -1.0, ]);
    
    
    const array1 = new Float32Array([-1.0, 0.0, 1.0, -0.75, 0.5, 0.75, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.0, 0.75, 0.75, -0.75, 0.5, 0.75, -1.0, -0.25, -0.25, 0.25, -0.75, -0.5, -0.75, 0.0, 1.0, -0.25, -0.75, -0.25, 0.0, 0.0, 0.75, 0.75, 0.25, 0.25, -1.0, -0.5, -1.0, 0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.25, 0.5, 1.0, 0.25, -0.5, 0.75, 0.0, 1.0, -0.5, 0.25, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -1.0, -0.75, -0.5, -1.0, -0.75, -0.25, 0.75, -1.0, 0.25, 0.75, 1.0, 0.0, 0.5, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 1.0, ]);
    const array2 = new Float32Array([0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 0.25, -0.5, -0.75, -0.25, -0.5, 1.0, 0.75, -1.0, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.0, 1.0, 0.0, -0.5, 0.75, -0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 0.25, -0.5, 1.0, -1.0, 1.0, -1.0, 0.75, 0.25, -1.0, 0.75, 1.0, -0.5, 0.0, 0.75, -1.0, -0.75, 0.0, 0.25, 1.0, -0.5, -0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, 0.75, 0.75, 0.0, 1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.5, 0.0, -0.5, 0.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.25, -0.75, 0.25, -1.0, 0.5, 1.0, 0.0, 0.0, -0.25, -0.5, -0.75, -0.5, -0.75, 0.5, -0.5, 0.5, 0.75, -1.0, 0.75, -0.75, -0.75, -0.5, 0.0, -0.25, -0.25, 1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, -0.75, 0.25, -0.5, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 1.0, -1.0, 0.5, 0.5, 0.0, -0.25, -0.75, 0.5, 0.75, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.75, -1.0, 0.0, 1.0, 1.0, 0.25, 0.25, 0.75, 0.75, -0.5, 0.25, 0.75, -1.0, -0.5, -0.5, -0.5, 0.5, -0.5, -1.0, -0.5, -0.75, 0.25, 0.25, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array4 = new Float32Array([0.0, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, -0.75, -0.75, 1.0, -0.5, -0.75, 0.5, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 1.0, 0.0, 0.75, 0.5, 0.0, 0.0, -0.5, 0.75, 0.0, 0.25, -0.25, -1.0, 1.0, 0.25, -0.5, 0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 0.75, -0.5, 0.75, 1.0, -0.25, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, 0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 0.5, 1.0, 0.25, 1.0, 0.75, -0.75, 0.75, -0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.0, -0.5, 0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.25, 0.5, -1.0, 1.0, -0.75, 0.0, -0.5, 0.0, -0.75, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.pushErrorScope("out-of-memory");
    query101.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query100.destroy()
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query102.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.submit([]);
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    query104.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query102.destroy()
    
    const array5 = new Float32Array([-1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.75, -1.0, 0.75, 0.0, 0.5, 1.0, 0.75, -0.75, 0.75, 0.25, 0.25, 0.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.0, -0.5, -0.75, 0.5, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 0.0, -0.25, 1.0, -0.25, 0.75, -1.0, 0.75, 1.0, 0.25, 0.75, 0.5, -1.0, -0.75, -0.5, -0.5, -0.25, -0.25, 0.75, 0.25, 1.0, 0.25, -0.25, -0.5, -0.75, -0.5, -0.75, 0.0, 0.75, 0.5, 1.0, -0.5, -0.5, -1.0, -1.0, -0.5, -1.0, -0.75, -1.0, -0.5, 0.0, 0.75, 0.25, 0.5, -0.75, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, ]);
    query103.destroy()
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
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    query104.destroy()
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_bundle_encoder000.insertDebugMarker("marker");
    query103.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    query100.destroy()
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    query105.destroy()
    
    query104.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([-0.25, 0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 1.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.75, 0.75, 0.75, 1.0, -1.0, -0.25, -0.75, 0.0, -0.25, -1.0, -0.5, -0.5, -1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 1.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.25, 0.25, 0.25, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, 0.0, 0.5, -1.0, -1.0, 0.5, -0.75, -0.25, -1.0, 0.0, 1.0, -0.5, -0.25, 0.5, 1.0, 0.25, 0.5, 0.25, 0.25, -0.25, -0.75, -0.75, -1.0, 0.75, ]);
    
    query105.destroy()
    query102.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder103.insertDebugMarker("marker");
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder104.insertDebugMarker("marker");
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.pushErrorScope("internal");
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
    
    render_bundle_encoder104.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const array7 = new Float32Array([0.75, -0.25, 0.5, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, 0.25, 0.5, 0.75, -0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.0, -0.75, -0.5, 0.0, -0.25, 0.25, 0.5, 0.25, -0.5, -0.75, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, 0.25, 0.75, 0.75, 0.0, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.75, 0.75, 0.5, 0.5, 0.25, 1.0, 1.0, 0.75, 0.0, -0.5, 1.0, -0.5, -0.5, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, 0.0, 0.75, 0.75, -1.0, 0.25, -0.75, -1.0, -0.25, 0.25, 0.5, -0.75, -1.0, -0.75, -1.0, -0.25, 0.0, 0.75, -1.0, 0.0, 0.25, -0.75, 0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.5, -0.5, 0.5, 0.75, ]);
    
    device10.pushErrorScope("out-of-memory");
    query100.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    render_bundle_encoder104.popDebugGroup();
    
    query105.destroy()
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    
    
    const array8 = new Float32Array([0.75, -1.0, 1.0, 0.0, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, 0.5, -0.75, -0.5, 0.75, 0.5, -0.25, -0.5, -0.75, -0.75, -0.5, 0.0, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, 1.0, -0.5, 0.25, -0.25, -0.75, -0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -0.5, 0.0, 0.0, -1.0, 0.75, -0.25, 0.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, -0.25, -1.0, 0.5, -0.5, 0.0, 1.0, 1.0, -1.0, 0.0, -0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.75, 1.0, 0.0, 1.0, -0.5, 0.25, -0.25, 0.0, 1.0, -0.75, ]);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder104.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder103.insertDebugMarker("marker");
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query103.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query105.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("out-of-memory");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query103.destroy()
    
    render_bundle_encoder103.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    
    device30.pushErrorScope("out-of-memory");
    query103.destroy()
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
    query100.destroy()
    
    const array9 = new Float32Array([-1.0, -1.0, 0.5, -0.75, 0.5, 0.0, -0.25, -0.75, 0.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.5, 0.0, 0.0, -0.5, 1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -0.5, 0.0, 0.75, -0.75, -0.25, 1.0, -0.75, -1.0, 0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.5, -0.25, 1.0, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 1.0, 0.75, -1.0, 0.5, 0.0, 0.5, 0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.5, -0.25, -0.75, 0.0, -0.25, -0.75, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, -0.75, -1.0, 0.75, -0.5, -0.5, 1.0, -0.75, ]);
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    
    query102.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    query105.destroy()
    
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    query002.destroy()
    
    
    query001.destroy()
    
    render_bundle_encoder104.insertDebugMarker("marker");
    const array10 = new Float32Array([0.75, 0.75, -0.75, 0.75, 0.25, 0.75, 0.0, 0.5, -0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.75, 0.5, 0.25, -0.5, -0.5, 0.75, 0.75, 1.0, 0.0, 1.0, 1.0, 0.5, -1.0, 0.0, 0.25, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.5, -0.75, 0.25, -0.75, -1.0, 0.0, -0.25, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 0.75, 1.0, 0.5, -0.75, 0.25, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, 1.0, -0.25, -0.25, -0.75, -1.0, -0.5, -0.75, -0.5, 0.75, 1.0, 1.0, -0.75, 0.25, -0.75, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, -0.5, 0.5, -0.5, -0.75, 0.0, -0.5, -1.0, -0.5, -0.5, -0.5, 0.5, -1.0, ]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder100.popDebugGroup();
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
    query102.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query103.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const array11 = new Float32Array([-0.75, -0.5, 0.75, -0.5, -0.5, 1.0, -0.75, -0.25, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, -1.0, -0.75, 0.5, 1.0, -0.5, 0.5, -0.75, -0.5, 0.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.5, 0.25, 0.25, -1.0, -0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, -1.0, 0.0, 0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 1.0, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, 0.75, -0.5, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.25, 0.5, 0.0, -1.0, 0.75, -0.5, 1.0, 0.5, -0.75, -0.75, 0.25, -1.0, ]);
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    query003.destroy()
    device20.pushErrorScope("internal");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const array12 = new Float32Array([-0.75, 0.5, 0.5, 0.75, 0.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 0.0, -0.75, 0.25, -1.0, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, 1.0, -0.5, -0.5, 1.0, -1.0, -0.5, -0.25, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.5, 0.5, 0.25, -0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.5, 1.0, 0.5, -0.25, 0.25, 0.5, 0.75, -1.0, -0.75, 0.0, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder103.popDebugGroup();
    
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query000.destroy()
    device30.pushErrorScope("internal");
    
    query102.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    query104.destroy()
    query001.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    query103.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query107.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query108.destroy()
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder103.popDebugGroup();
    query001.destroy()
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
    device10.queue.submit([]);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder104.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    query104.destroy()
    
    
    query102.destroy()
    const array13 = new Float32Array([-1.0, -1.0, 1.0, 0.5, 0.5, 0.0, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, -1.0, 0.75, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, -1.0, -0.5, -1.0, 1.0, -0.25, 0.0, 1.0, 0.75, 1.0, -0.5, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, -0.75, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, 0.25, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, -1.0, -1.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.5, -0.5, -0.5, 0.25, 0.0, -0.5, 0.5, -0.75, 0.25, 1.0, 0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.0, 0.75, 0.5, -0.75, -1.0, 0.0, 0.0, 1.0, 0.5, 0.5, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, 1.0, 0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    query104.destroy()
    
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    query108.destroy()
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
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
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
    device00.pushErrorScope("validation");
    query108.destroy()
    query1010.destroy()
    query002.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    query102.destroy()
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    query300.destroy()
    query300.destroy()
    const array14 = new Float32Array([-1.0, -0.75, 0.0, 0.75, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 1.0, 0.0, -0.75, 0.75, 0.75, -0.5, 0.25, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -0.75, -0.25, -0.25, -0.5, -0.25, -1.0, -1.0, 0.75, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, -0.5, 0.0, -0.25, 1.0, -0.25, -0.25, -1.0, -0.75, 1.0, -1.0, -0.5, -0.75, 0.75, 0.0, 0.25, 0.0, -0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.25, 0.75, -0.75, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.5, -1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.0, -0.25, -0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 1.0, 1.0, 1.0, 0.75, 0.25, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query102.destroy()
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query105.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    query103.destroy()
    render_bundle_encoder103.insertDebugMarker("marker");
    
    render_bundle_encoder103.popDebugGroup();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const sampler1011 = device10.createSampler( { label: "sampler1011" } );
    
    
    
    
    query000.destroy()
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query103.destroy()
    render_bundle_encoder103.insertDebugMarker("marker");
    
    render_bundle_encoder104.popDebugGroup();
    
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
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const sampler1012 = device10.createSampler( { label: "sampler1012" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    query101.destroy()
    query109.destroy()
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    device40.pushErrorScope("internal");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query107.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query003.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query106.destroy()
    const sampler1013 = device10.createSampler( { label: "sampler1013" } );
    
    
    
    query300.destroy()
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    query1010.destroy()
    device20.pushErrorScope("out-of-memory");
    
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
    
    device40.pushErrorScope("out-of-memory");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout005]
    });
    render_bundle_encoder103.popDebugGroup();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    query1010.destroy()
    const query1013 = device10.createQuerySet({
        label: "query1013",
        type: "occlusion",
        count: 32,
    });
    query1011.destroy()
    
    render_bundle_encoder104.insertDebugMarker("marker");
    
    
    query005.destroy()
    query003.destroy()
    query400.destroy()
    query103.destroy()
    query107.destroy()
    const sampler1014 = device10.createSampler( { label: "sampler1014" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query107.destroy()
    query301.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    query006.destroy()
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
    query004.destroy()
    query1011.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder104.insertDebugMarker("marker");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    query400.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder104.insertDebugMarker("marker");
    query106.destroy()
    query004.destroy()
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query1012.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    
    query100.destroy()
    query1011.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}