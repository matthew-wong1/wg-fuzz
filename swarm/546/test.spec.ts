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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([-1.0, 0.5, 0.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.75, 1.0, -1.0, 0.25, -1.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.5, 0.5, 1.0, -0.25, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -1.0, -0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -0.25, 0.25, -0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -0.75, -0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, -1.0, 0.25, -0.75, -1.0, -0.25, -0.75, 1.0, 0.25, -0.5, -0.75, -0.5, -0.5, -0.75, 0.5, 0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 0.25, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -1.0, 0.25, -0.25, 0.75, -0.5, 0.0, -0.25, -0.5, 1.0, 1.0, 0.25, -1.0, 1.0, -1.0, -1.0, -0.5, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("validation");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query202.destroy()
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
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
    query200.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    query200.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer300.destroy()
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_buffer201 = command_encoder201.finish();
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer300 = command_encoder300.finish();
    
    const command_buffer200 = command_encoder200.finish();
    query300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    buffer200.destroy()
    
    render_bundle_encoder201.popDebugGroup();
    
    
    
    
    const array1 = new Float32Array([0.5, 0.5, 0.5, 0.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.75, -0.25, -1.0, 0.5, 0.75, -0.25, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.25, 0.0, -0.25, -0.5, 0.25, -0.5, 0.25, 0.75, 0.75, 0.25, 0.5, -1.0, -0.25, -0.5, -0.5, 0.25, -0.5, 0.25, 1.0, -0.75, -0.75, 0.75, 0.75, -0.5, -1.0, 0.25, -0.5, -0.75, -0.25, -1.0, 0.25, -0.75, -1.0, -0.75, 0.25, 1.0, -1.0, 0.5, 1.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.75, -0.75, 0.25, 0.25, 0.75, 0.5, -0.5, 0.5, 0.25, -1.0, 0.5, 0.25, -0.25, 0.5, 0.0, 1.0, -1.0, ]);
    
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query303.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.insertDebugMarker("mymarker");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query303.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    query204.destroy()
    query202.destroy()
    
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
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query203.destroy()
    query301.destroy()
    query204.destroy()
    const array2 = new Float32Array([-1.0, -1.0, 0.0, -0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.25, 1.0, 0.25, 0.5, 0.0, -0.25, -0.75, -0.5, -0.5, 0.25, -0.75, 0.0, 1.0, -0.25, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, -1.0, -0.5, 0.0, 0.25, 0.0, -0.75, -0.5, -0.25, -0.25, 0.75, 0.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 1.0, -0.75, -0.5, -0.5, -1.0, 0.5, -1.0, -0.25, 0.5, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.25, 0.5, 0.5, 0.25, -1.0, -1.0, -0.75, 0.5, 0.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.75, 0.75, -0.5, 0.75, -1.0, 0.25, 0.0, 0.0, 0.0, -0.75, ]);
    query204.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    query204.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    
    
    query201.destroy()
    compute_pass_encoder3010.popDebugGroup()
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query300.destroy()
    const command_buffer400 = command_encoder400.finish();
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    query201.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.popDebugGroup();
    const array3 = new Float32Array([1.0, -0.75, -1.0, -1.0, 0.5, -1.0, 0.0, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.0, -0.75, 0.5, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 0.25, 0.25, 0.0, 0.0, -0.75, 0.0, 1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.25, 0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, -0.5, 1.0, -0.25, -0.75, 1.0, 1.0, 0.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.5, -0.5, 0.5, -0.5, -0.25, 0.25, -0.25, 0.5, -0.5, -0.5, 1.0, 0.0, 1.0, 0.75, -0.75, 0.0, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 1.0, 0.0, -0.25, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query301.destroy()
    
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query205.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer204 = command_encoder204.finish();
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
    render_bundle_encoder302.insertDebugMarker("marker");
    const array4 = new Float32Array([0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 1.0, 1.0, 0.5, -0.5, -0.25, 1.0, -0.5, 1.0, 0.0, 1.0, 0.5, 1.0, 1.0, -0.5, 0.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.5, 0.0, 0.75, 0.5, -0.25, -0.5, 0.0, -0.25, -0.5, 0.25, 0.0, -0.25, -1.0, -1.0, -0.25, 0.25, 0.0, -0.25, 0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 0.25, -1.0, -0.75, -0.75, 0.25, 0.75, -0.75, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.25, -0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -0.25, 1.0, 0.75, -0.75, 0.0, -0.5, -1.0, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.25, 0.0, -0.25, 0.0, -0.5, 0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    query300.destroy()
    
    buffer400.destroy()
    query202.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    query200.destroy()
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    query202.destroy()
    buffer402.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer301.destroy()
    device00.pushErrorScope("internal");
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
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    
    query304.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array5 = new Float32Array([0.75, 0.25, 0.0, -0.5, 1.0, 1.0, 1.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.75, -0.75, -0.25, -0.5, 0.75, -0.25, -0.25, 1.0, -1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -0.5, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, 0.25, 0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 1.0, 1.0, -0.5, -0.25, -0.5, -0.5, -0.75, 0.0, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, 0.25, 0.5, -0.5, -0.25, 1.0, -1.0, 0.0, 0.25, 0.75, -0.5, -1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.75, 1.0, -0.25, -1.0, 0.75, -0.5, -0.25, -0.5, 0.75, 1.0, 0.5, -0.25, -0.25, 1.0, 0.0, -0.25, 0.25, -0.75, -0.25, -0.5, -0.75, -1.0, -0.75, 0.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.5, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    query201.destroy()
    buffer302.destroy()
    const array6 = new Float32Array([0.5, 0.5, -0.5, -1.0, -0.75, 0.25, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 0.0, -0.75, 0.25, 0.0, 0.5, -0.75, 0.5, -1.0, -0.75, -0.5, 0.75, 0.5, 1.0, 0.5, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.75, 1.0, -1.0, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -1.0, -1.0, -0.5, 0.75, -0.5, -0.25, -0.25, -1.0, 0.0, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 0.75, -0.25, 1.0, -0.25, -0.5, -0.25, 0.0, 0.0, -0.5, 0.0, 1.0, 0.0, -0.25, -0.5, 0.75, 1.0, 1.0, 0.0, 0.25, 0.25, 0.0, -1.0, -0.75, 0.25, 0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 1.0, ]);
    buffer203.destroy()
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query305.destroy()
    
    query205.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder401.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query301.destroy()
    query305.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query200.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    query304.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    query204.destroy()
    query200.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    query000.destroy()
    query305.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query303.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    query203.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query302.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    query203.destroy()
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    query301.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_buffer205 = command_encoder205.finish();
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    query301.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    query300.destroy()
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    query203.destroy()
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer401.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
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
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    query300.destroy()
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder200.popDebugGroup();
    
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    query207.destroy()
    query400.destroy()
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder302.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer202.destroy()
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query300.destroy()
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    query302.destroy()
    buffer000.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query202.destroy()
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
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    query305.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder3010.popDebugGroup()
    query303.destroy()
    const command_buffer000 = command_encoder000.finish();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const array7 = new Float32Array([1.0, -0.75, 0.25, -0.25, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, -0.5, 0.5, 0.0, -0.5, 0.75, -1.0, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 0.75, -0.75, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 1.0, -0.75, 1.0, 0.0, -0.75, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 0.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.5, -0.25, 0.75, 0.5, 0.25, 0.0, 1.0, -0.25, 0.0, -0.75, -1.0, -1.0, 0.5, -0.5, 0.25, -0.5, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, 0.25, ]);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer404.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer403.destroy()
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query303.destroy()
    
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    query201.destroy()
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query302.destroy()
    query201.destroy()
    query401.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    query206.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query302.destroy()
    query207.destroy()
    query204.destroy()
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer204.destroy()
    query205.destroy()
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    query205.destroy()
    query402.destroy()
    query303.destroy()
    command_encoder206.resolveQuerySet(
        query208,
        0,
        32,
        buffer205,
        0
    )
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    query401.destroy()
    buffer303.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    query202.destroy()
    query302.destroy()
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query201.destroy()
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    
    query204.destroy()
    query208.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder206.resolveQuerySet(
        query207,
        0,
        32,
        buffer205,
        0
    )
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    command_encoder207.insertDebugMarker("mymarker");
    query206.destroy()
    command_encoder207.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    query404.destroy()
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query208.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    command_encoder207.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    command_encoder207.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder206.resolveQuerySet(
        query207,
        0,
        32,
        buffer205,
        0
    )
    
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
    command_encoder206.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    query204.destroy()
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder207.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    device60.destroy();
    render_bundle_encoder201.popDebugGroup();
    query209.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    render_bundle_encoder000.popDebugGroup();
    query203.destroy()
    const compute_pass_encoder2070 = command_encoder207.beginComputePass({ label: "compute_pass_encoder2070" });
    
    
    query200.destroy()
    buffer206.destroy()
    command_encoder206.resolveQuerySet(
        query208,
        0,
        32,
        buffer205,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer206 = command_encoder206.finish();
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder4010.popDebugGroup()
}