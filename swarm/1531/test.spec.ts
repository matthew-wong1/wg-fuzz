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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-1.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.0, 0.5, 1.0, 0.25, 1.0, -1.0, -0.25, 1.0, 0.0, 0.0, -0.5, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, 0.5, -0.75, -1.0, 0.0, -0.5, -1.0, -0.25, 0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.75, -0.75, -0.75, -0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 0.5, 0.5, 1.0, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, 0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 1.0, -0.25, -0.5, -0.75, 0.75, 0.5, 1.0, -0.5, -1.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.25, 1.0, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    const array1 = new Float32Array([-0.75, 0.25, 1.0, -1.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.75, 0.0, 0.0, -0.25, 0.5, -0.5, -0.25, -0.5, -0.75, 0.75, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, -1.0, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, -0.25, -1.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.25, -0.5, 0.5, 0.75, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, 0.75, -0.25, -0.75, 0.0, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -1.0, -1.0, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, -1.0, -0.5, -0.5, 0.75, -0.5, 1.0, 0.0, -0.75, 0.75, -0.25, -0.5, -1.0, 1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.5, -0.75, 0.75, -1.0, 0.25, -1.0, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.5, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, 0.0, 0.75, -1.0, 0.25, -0.75, 0.5, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, 0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.75, -1.0, 0.0, 0.0, -1.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, 0.5, -0.5, 0.75, -1.0, -0.25, -0.25, 1.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, -0.5, -0.75, 0.0, -1.0, -0.5, 0.5, 0.25, -0.5, 0.75, 0.5, 0.0, ]);
    
    const array3 = new Float32Array([-0.75, -0.5, -0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 0.75, 0.0, -0.5, -0.5, 1.0, -0.75, -0.25, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -0.5, 0.25, 0.75, -0.5, -0.75, -0.25, -1.0, 1.0, -1.0, -0.5, 1.0, 0.25, 0.5, 0.0, -0.75, -0.5, 0.0, -0.5, 0.0, 0.0, -0.75, -0.5, 0.25, -1.0, -0.75, 0.0, 0.5, -0.25, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, 0.0, 0.5, 0.25, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -0.25, -0.75, 0.25, -0.75, 0.5, 0.0, 0.75, 0.5, 0.75, 0.0, -0.5, -1.0, -0.75, 0.0, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, 1.0, 0.25, 0.75, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("validation");
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array4 = new Float32Array([-0.75, 0.75, 0.5, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, 0.5, -1.0, 0.75, 0.25, -0.75, -0.5, 0.25, 0.5, 0.75, 0.25, 1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.75, -0.25, 0.5, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.25, 0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, -0.5, -0.25, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, ]);
    
    
    device20.pushErrorScope("internal");
    
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder200.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("out-of-memory");
    device50.pushErrorScope("internal");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder200.popDebugGroup()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device50.destroy();
    
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_buffer700 = command_encoder700.finish();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
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
    const array5 = new Float32Array([0.75, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, -0.25, -0.75, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.75, 0.0, 0.0, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.0, 0.5, 0.0, 0.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.25, -1.0, 1.0, -0.25, -0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.75, -1.0, 0.5, 0.5, 0.25, 0.75, 1.0, 0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, -0.25, -0.75, 0.75, 1.0, 0.25, -0.25, 0.75, 0.75, 0.0, 1.0, -1.0, 1.0, -1.0, 0.25, -1.0, -0.75, 0.5, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, -1.0, -0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device20.pushErrorScope("internal");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder202.insertDebugMarker("mymarker");
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    device30.destroy();
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
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    
    
    
    device70.queue.submit([command_buffer700, ]);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device60.pushErrorScope("internal");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
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
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    buffer200.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const array6 = new Float32Array([-0.75, 0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.5, -1.0, 0.0, 0.5, 0.25, -0.75, -0.5, 0.5, -0.5, 0.25, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -0.75, 0.5, 0.0, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, 0.75, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, -0.25, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, -0.25, 0.75, 0.0, 0.25, -0.5, 0.75, 0.25, -0.75, -0.75, 0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, -0.75, 0.25, -0.5, -1.0, 0.0, 0.5, -0.75, -0.25, 0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, 0.25, -1.0, -0.25, ]);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device20.pushErrorScope("validation");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    device70.queue.submit([]);
    
    
    
    const array7 = new Float32Array([-0.75, 0.75, 0.25, 0.75, 0.25, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.5, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -0.75, -0.5, -1.0, -0.5, -1.0, -1.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.25, 0.0, 0.75, -1.0, -0.25, 0.25, 0.5, -0.5, -0.75, -1.0, -0.5, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.0, 1.0, -0.25, 0.25, 0.25, 1.0, -0.5, 0.75, 0.5, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, -0.5, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.75, 0.25, 0.75, -0.25, 0.25, ]);
    const command_buffer201 = command_encoder201.finish();
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder701.popDebugGroup();
    query200.destroy()
    
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
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
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
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const command_buffer800 = command_encoder800.finish();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    device20.queue.submit([command_buffer201, ]);
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder801.clearBuffer(buffer801);
    command_encoder801.copyBufferToBuffer(
        buffer800,
        0,
        buffer800,
        0,
        400
    );
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder801.insertDebugMarker("mymarker");
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder801.clearBuffer(buffer800);
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer801.destroy()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
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
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_bundle_encoder703 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder703",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout704]
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2011.pushDebugGroup("group_marker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder701.popDebugGroup();
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder8011 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8011" });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    device80.destroy();
    
    
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    compute_pass_encoder2011.popDebugGroup()
    query700.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query201.destroy()
    command_encoder702.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    query700.destroy()
    
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
    
    query601.destroy()
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    command_encoder603.pushDebugGroup("mygroupmarker")
    const pipeline_layout7010 = device70.createPipelineLayout({ 
        label: "pipeline_layout7010",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder2020.popDebugGroup()
    command_encoder204.pushDebugGroup("mygroupmarker")
    const command_buffer602 = command_encoder602.finish();
    
    
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout603]
    });
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    buffer202.destroy()
    
    command_encoder603.insertDebugMarker("mymarker");
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout7011 = device70.createPipelineLayout({ 
        label: "pipeline_layout7011",
        bindGroupLayouts: [bind_group_layout701]
    });
    const bind_group_layout606 = device60.createBindGroupLayout({ 
        label: "bind_group_layout606",
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
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder702.insertDebugMarker("mymarker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    command_encoder702.popDebugGroup()
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    
    command_encoder202.insertDebugMarker("mymarker");
    
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    
    command_encoder802.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    device80.pushErrorScope("validation");
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    compute_pass_encoder8010.popDebugGroup()
    
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    device30.destroy();
    compute_pass_encoder6010.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout602]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout604]
    });
    const command_buffer605 = command_encoder605.finish();
    
    
    
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    const pipeline_layout7012 = device70.createPipelineLayout({ 
        label: "pipeline_layout7012",
        bindGroupLayouts: [bind_group_layout703]
    });
    query600.destroy()
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout605]
    });
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout7013 = device70.createPipelineLayout({ 
        label: "pipeline_layout7013",
        bindGroupLayouts: [bind_group_layout702]
    });
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    render_bundle_encoder600.popDebugGroup();
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout604]
    });
    compute_pass_encoder2011.pushDebugGroup("group_marker")
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
    
    
    device60.queue.submit([command_buffer602, command_buffer605, ]);
    command_encoder802.clearBuffer(buffer801);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
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
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    command_encoder702.clearBuffer(buffer700);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const pipeline_layout6013 = device60.createPipelineLayout({ 
        label: "pipeline_layout6013",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    command_encoder603.popDebugGroup()
    const pipeline_layout6014 = device60.createPipelineLayout({ 
        label: "pipeline_layout6014",
        bindGroupLayouts: [bind_group_layout606]
    });
    device80.queue.submit([]);
    
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder606.pushDebugGroup("mygroupmarker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const command_buffer603 = command_encoder603.finish();
    const command_buffer200 = command_encoder200.finish();
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    const pipeline_layout6015 = device60.createPipelineLayout({ 
        label: "pipeline_layout6015",
        bindGroupLayouts: [bind_group_layout603]
    });
    const bind_group_layout607 = device60.createBindGroupLayout({ 
        label: "bind_group_layout607",
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
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    compute_pass_encoder7010.popDebugGroup()
    query600.destroy()
    
    command_encoder204.popDebugGroup()
    
    const bind_group_layout608 = device60.createBindGroupLayout({ 
        label: "bind_group_layout608",
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
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const command_buffer802 = command_encoder802.finish();
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    command_encoder606.popDebugGroup()
    query601.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const command_buffer205 = command_encoder205.finish();
    
    query000.destroy()
    
    
    compute_pass_encoder2000.popDebugGroup()
    
    
    
    
    render_bundle_encoder601.popDebugGroup();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout7014 = device70.createPipelineLayout({ 
        label: "pipeline_layout7014",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout7015 = device70.createPipelineLayout({ 
        label: "pipeline_layout7015",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer203.destroy()
    const pipeline_layout6016 = device60.createPipelineLayout({ 
        label: "pipeline_layout6016",
        bindGroupLayouts: [bind_group_layout604]
    });
    query702.destroy()
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout6017 = device60.createPipelineLayout({ 
        label: "pipeline_layout6017",
        bindGroupLayouts: [bind_group_layout600]
    });
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device70.queue.submit([command_buffer700, ]);
    const command_buffer203 = command_encoder203.finish();
    query700.destroy()
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    query703.destroy()
    
    
    command_encoder606.insertDebugMarker("mymarker");
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout7016 = device70.createPipelineLayout({ 
        label: "pipeline_layout7016",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const array8 = new Float32Array([0.25, 0.75, -0.25, -1.0, 1.0, 0.0, 0.75, 0.25, -0.5, -1.0, 0.75, -1.0, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 0.75, -0.5, 1.0, 0.25, 0.5, 0.5, -0.5, -0.5, -0.75, -0.5, 0.25, 1.0, -0.25, -1.0, -1.0, -0.75, 0.0, -0.25, -0.25, 1.0, 0.75, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 1.0, 0.0, -1.0, 0.5, -0.75, -0.5, -0.75, 0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.75, 0.0, -0.5, 1.0, 0.75, -1.0, -1.0, 1.0, -1.0, -0.5, -1.0, -1.0, 0.25, 0.25, -0.5, -0.5, -1.0, -0.25, 1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, 0.0, -0.5, -1.0, -0.75, -0.5, -0.25, -0.75, 0.25, -0.5, 1.0, -0.25, ]);
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer600.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    compute_pass_encoder6000.popDebugGroup()
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const command_buffer606 = command_encoder606.finish();
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    const pipeline_layout7017 = device70.createPipelineLayout({ 
        label: "pipeline_layout7017",
        bindGroupLayouts: [bind_group_layout700]
    });
    query701.destroy()
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout6018 = device60.createPipelineLayout({ 
        label: "pipeline_layout6018",
        bindGroupLayouts: [bind_group_layout605]
    });
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder6010.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2001.popDebugGroup()
    device60.queue.submit([command_buffer603, command_buffer606, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    compute_pass_encoder2030.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder2011.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer605, ]);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer205, ]);
    command_encoder600.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2001.popDebugGroup()
    device70.queue.submit([]);
    const command_buffer701 = command_encoder701.finish();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([]);
    device70.queue.submit([command_buffer701, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([]);
    device60.queue.submit([command_buffer605, ]);
    compute_pass_encoder7010.popDebugGroup()
    device60.queue.submit([command_buffer605, ]);
    device60.queue.submit([command_buffer601, ]);
    device60.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    device70.queue.submit([]);
    compute_pass_encoder6010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    device60.queue.submit([command_buffer606, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    compute_pass_encoder2011.popDebugGroup()
    const command_buffer604 = command_encoder604.finish();
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder2010.popDebugGroup()
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer701, ]);
    device20.queue.submit([command_buffer201, ]);
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    device00.queue.submit([]);
    device70.queue.submit([command_buffer702, ]);
    device20.queue.submit([command_buffer204, ]);
    device70.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([command_buffer701, ]);
    device60.queue.submit([]);
    device60.queue.submit([command_buffer601, command_buffer606, ]);
    device70.queue.submit([command_buffer702, ]);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device60.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    device60.queue.submit([command_buffer605, ]);
    device80.queue.submit([command_buffer802, ]);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    device60.queue.submit([command_buffer606, ]);
    compute_pass_encoder6040.popDebugGroup()
    device60.queue.submit([command_buffer605, ]);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2010.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder6040.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
}