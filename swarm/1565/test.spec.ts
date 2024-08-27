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
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    device10.pushErrorScope("validation");
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.pushErrorScope("internal");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder100.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const array0 = new Float32Array([1.0, 1.0, 1.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -1.0, -0.5, -0.75, 0.5, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 0.25, -0.5, 1.0, 0.5, 0.75, -1.0, -1.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.5, -0.75, -0.25, 1.0, -1.0, 0.0, -0.5, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.25, 0.5, 0.0, -0.5, 1.0, 0.25, -1.0, -0.75, 0.0, 0.0, 0.5, 0.25, 1.0, 0.0, 0.25, -0.75, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.75, 1.0, 0.75, -0.75, 0.75, -0.25, ]);
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
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    
    
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    const array1 = new Float32Array([-0.5, 0.25, -0.25, 0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 0.25, 0.0, 0.25, 0.5, 0.5, -0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -0.75, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.75, 0.75, -0.75, -0.5, 0.75, -0.25, 0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -0.25, 1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.75, 0.5, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, 0.5, 0.75, -0.25, -0.75, -0.5, -0.25, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 1.0, -0.25, 0.75, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 0.75, -0.25, 1.0, -0.5, 0.5, 0.75, 0.0, -0.25, ]);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    device10.pushErrorScope("validation");
    command_encoder300.insertDebugMarker("mymarker");
    
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
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device30.destroy();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder102.popDebugGroup();
    
    const command_buffer200 = command_encoder200.finish();
    const command_buffer201 = command_encoder201.finish();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder200.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.submit([command_buffer200, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device40.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    device20.pushErrorScope("validation");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const array2 = new Float32Array([0.0, 1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.5, 0.5, -1.0, 0.25, 0.5, 0.75, 0.25, 0.5, 1.0, -0.25, 0.0, 0.75, 0.0, 0.75, 0.5, 0.25, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, 0.25, 0.0, 0.25, -0.5, 0.5, 0.5, 0.75, 1.0, 0.0, 0.5, 0.0, 0.75, -0.5, 1.0, -0.5, 0.25, 1.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.75, -0.5, -0.25, 0.75, -0.5, 0.5, 1.0, 1.0, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -0.5, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, -1.0, -1.0, -0.5, 0.5, 0.5, ]);
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
    
    
    
    device40.pushErrorScope("out-of-memory");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
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
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder205.insertDebugMarker("mymarker");
    
    const command_buffer206 = command_encoder206.finish();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder102.popDebugGroup();
    const array3 = new Float32Array([0.0, -1.0, 0.5, -0.5, 0.5, 0.75, -0.5, -0.5, -1.0, 0.0, 1.0, 0.25, 0.5, -0.75, -0.75, -1.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.75, 1.0, 1.0, -0.25, 1.0, -1.0, -1.0, -1.0, 1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -1.0, 0.25, -0.25, 0.25, 0.0, -0.25, -0.25, 0.25, 0.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.0, -0.5, -0.25, 0.5, 0.75, 1.0, 1.0, 0.25, ]);
    const command_buffer205 = command_encoder205.finish();
    command_encoder101.popDebugGroup()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
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
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array4 = new Float32Array([0.5, 0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, -0.5, 0.5, 0.5, 0.5, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, 1.0, 1.0, 0.75, -0.75, 0.5, 0.75, 0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.75, -0.25, 0.75, 1.0, -1.0, 0.25, -1.0, 0.0, 0.5, -0.25, 0.25, 1.0, 0.25, 1.0, 1.0, 0.5, -0.5, 1.0, 0.75, 0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.25, 0.25, -1.0, -1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.5, 1.0, 0.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.25, -1.0, -0.25, -0.25, -0.5, 0.0, -0.75, 1.0, -0.5, 0.0, 0.25, -0.75, 0.5, ]);
    command_encoder103.pushDebugGroup("mygroupmarker")
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout104]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    device10.queue.submit([]);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    device10.pushErrorScope("out-of-memory");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    command_encoder204.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const command_buffer500 = command_encoder500.finish();
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
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder502.insertDebugMarker("mymarker");
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
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
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout205]
    });
    
    const command_buffer104 = command_encoder104.finish();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
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
    
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.submit([command_buffer104, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout206]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout105]
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder103.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.popDebugGroup();
    
    const command_buffer203 = command_encoder203.finish();
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("internal");
    command_encoder501.insertDebugMarker("mymarker");
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout203]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("out-of-memory");
    command_encoder501.insertDebugMarker("mymarker");
    
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder201.popDebugGroup();
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder000.insertDebugMarker("mymarker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.popDebugGroup();
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    const pipeline_layout2021 = device20.createPipelineLayout({ 
        label: "pipeline_layout2021",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_buffer503 = command_encoder503.finish();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.popDebugGroup();
    command_encoder502.popDebugGroup()
    render_bundle_encoder600.popDebugGroup();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout2022 = device20.createPipelineLayout({ 
        label: "pipeline_layout2022",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    device50.pushErrorScope("validation");
    render_bundle_encoder600.popDebugGroup();
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    render_bundle_encoder102.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder202.popDebugGroup();
    
    const array5 = new Float32Array([0.25, -1.0, -0.75, -0.75, 0.5, -0.25, -0.25, -0.75, 0.5, 0.0, 0.0, 0.0, 0.75, -1.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.75, 0.5, 0.5, 0.25, 0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, -0.75, 1.0, -0.75, 0.75, -1.0, 0.25, 0.25, 0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 0.0, 0.25, -1.0, 0.25, 0.0, 0.5, 0.5, -0.5, -0.5, -0.5, -0.25, -0.75, -0.75, 1.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.5, -1.0, -0.75, -1.0, 0.25, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, 1.0, 0.5, -0.5, -1.0, -1.0, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, 0.75, 1.0, -0.5, ]);
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    command_encoder501.popDebugGroup()
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
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
    command_encoder300.insertDebugMarker("mymarker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("internal");
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    device50.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder103.popDebugGroup();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
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
    render_bundle_encoder501.popDebugGroup();
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    const array6 = new Float32Array([-0.5, 0.0, 0.5, 0.5, -0.25, -0.25, 0.5, 0.25, 0.5, -0.25, 1.0, -1.0, -0.5, 0.75, 0.75, -0.75, 1.0, 0.0, 0.5, 0.0, -0.25, 0.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, -0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 0.75, -0.5, -0.5, 0.0, 0.25, 1.0, 0.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.5, 1.0, -1.0, -0.75, 0.0, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, 0.75, 0.75, -1.0, 0.0, -0.75, -0.75, 0.25, 1.0, 1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.25, 0.75, -0.5, 0.75, -0.5, 0.0, -0.25, -1.0, -1.0, -0.25, 0.0, 0.5, 0.75, -1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    
    
    
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
    device10.pushErrorScope("validation");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder101.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    
    const compute_pass_encoder5011 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5011" });
    command_encoder504.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device00.destroy();
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    device50.queue.submit([command_buffer500, ]);
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    device10.queue.submit([command_buffer104, ]);
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    render_bundle_encoder601.popDebugGroup();
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout100]
    });
    device60.pushErrorScope("out-of-memory");
    command_encoder504.popDebugGroup()
    command_encoder103.popDebugGroup()
    command_encoder502.popDebugGroup()
    const command_buffer505 = command_encoder505.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer504 = command_encoder504.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    device50.queue.submit([command_buffer505, ]);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([]);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder6000.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    compute_pass_encoder1000.popDebugGroup()
    device60.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer203, command_buffer206, ]);
    compute_pass_encoder1001.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer501, ]);
    device50.queue.submit([command_buffer500, ]);
}