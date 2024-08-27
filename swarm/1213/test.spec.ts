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
    
    const array0 = new Float32Array([-0.25, -1.0, -0.75, 0.75, 0.75, -1.0, 0.25, -0.5, 0.5, 0.0, -0.75, 0.0, -0.5, 0.0, 0.0, -0.5, 0.5, 1.0, 0.75, 0.5, 0.75, -0.5, 0.0, -0.75, 0.0, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, 1.0, 0.0, -0.25, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.0, 1.0, 0.0, 0.0, -0.75, 0.5, 1.0, 0.0, 0.0, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.5, -0.5, -0.25, -0.25, 0.0, 0.25, 0.0, -0.5, -0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 0.0, -0.25, 0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 0.5, 0.5, 0.75, 0.0, 0.75, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.5, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.25, 0.5, 0.5, -0.75, 0.75, 0.0, 0.75, 0.0, -1.0, -0.5, -0.5, 0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -0.5, -0.25, -0.25, -1.0, -0.25, -0.5, 0.25, 0.25, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, -0.75, -0.25, 0.25, 0.5, -0.75, -0.75, 0.5, 0.75, 1.0, 0.25, -0.25, -0.5, 0.0, -0.5, -0.25, 0.75, 0.5, -1.0, -0.75, 0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, 0.0, -0.25, 1.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.25, -0.5, -0.75, 0.25, -0.25, -0.5, -0.75, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, -0.25, 0.75, 0.75, -0.5, 0.5, 0.5, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    
    
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
    
    const array2 = new Float32Array([0.0, -0.25, 0.0, 0.0, -0.5, 0.5, -1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, 0.75, 0.5, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, 0.25, -0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.75, 1.0, 0.0, -0.75, 0.25, -0.25, -1.0, 1.0, 0.25, 0.0, -0.25, 0.25, -0.25, 0.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.75, 0.5, 0.0, -0.5, -0.75, -0.75, -0.5, -0.75, -0.5, -1.0, 0.0, -0.5, -0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.75, 0.25, 0.25, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, 0.25, -0.25, 0.0, 0.0, 0.5, -1.0, -0.25, 0.0, -1.0, 0.5, 0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 1.0, -0.75, ]);
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer001.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("validation");
    
    const array3 = new Float32Array([1.0, 0.25, 0.25, 1.0, 0.25, 0.0, 0.0, 0.0, 0.25, -0.25, 0.5, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, -1.0, -0.75, 0.0, 0.75, 1.0, 0.25, 0.0, -1.0, 0.5, 1.0, -0.25, 0.25, 0.75, -0.5, 0.75, 0.75, -0.5, 0.0, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, 1.0, 1.0, -0.5, -0.25, 1.0, 0.75, -1.0, -1.0, 0.5, 0.5, -0.5, -0.75, 0.75, 0.0, -0.25, -0.25, -0.5, 0.25, -1.0, -1.0, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -1.0, -0.25, -1.0, 0.25, -0.5, -0.75, -0.75, -0.5, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 0.5, 1.0, -0.5, -0.75, -0.75, -0.5, -1.0, -0.25, 0.0, 0.75, 0.0, -0.25, 0.5, ]);
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer300.destroy()
    device20.pushErrorScope("out-of-memory");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array4 = new Float32Array([-0.75, 0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, -1.0, 0.5, -1.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, 0.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, -0.25, 0.75, 0.0, -0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 0.5, -1.0, 0.5, -0.25, 0.25, -0.25, -0.25, 0.5, -0.5, 0.0, 0.75, 1.0, -0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 1.0, -0.5, -0.75, 1.0, 1.0, 0.75, -0.75, 0.5, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, -0.5, 0.25, -0.5, -0.25, 1.0, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder000.popDebugGroup()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device50.pushErrorScope("validation");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device30.pushErrorScope("out-of-memory");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.pushErrorScope("validation");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.insertDebugMarker("mymarker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    command_encoder000.clearBuffer(buffer002);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.clearBuffer(buffer002);
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array5 = new Float32Array([0.5, 0.25, -0.5, 0.5, 0.5, -0.75, 0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, -0.75, -1.0, 0.75, 0.5, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -0.5, -0.5, 0.25, 0.25, 0.0, 0.5, -0.25, -0.5, 0.5, 1.0, 0.25, 0.0, 0.25, 0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -0.75, 0.25, 0.5, 0.0, -0.75, -0.25, -0.25, 0.25, -1.0, 0.0, 0.5, 0.75, 0.0, -0.75, 0.75, -0.5, 0.0, 1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, -0.5, 0.75, -0.75, 0.5, -0.5, 1.0, -0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 0.5, 0.75, -0.75, -0.5, 0.0, -0.5, 1.0, 0.25, 0.75, 0.25, -1.0, 1.0, -1.0, 0.25, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query500.destroy()
    
    query201.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device30.queue.submit([]);
    command_encoder002.clearBuffer(buffer002);
    const array6 = new Float32Array([0.75, -0.5, 0.0, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, 1.0, 0.5, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, -0.25, 0.75, 0.5, -0.5, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 1.0, 0.5, 0.75, -0.75, 0.25, 0.25, 0.5, -0.75, 0.5, -1.0, 1.0, -0.5, 1.0, 0.5, -0.25, 0.5, -1.0, 0.25, 0.75, 0.0, 1.0, 1.0, -0.25, -0.25, 0.25, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 0.0, 0.0, -0.25, 0.25, 0.25, 0.25, 1.0, 0.75, -1.0, 0.0, -0.25, -0.75, -0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.0, 0.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -0.5, 1.0, 0.25, 0.25, -0.75, -0.5, -0.5, -0.75, -1.0, 0.75, 0.5, 0.5, -1.0, 0.5, 0.5, ]);
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.popDebugGroup();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.pushErrorScope("internal");
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer301.destroy()
    query301.destroy()
    
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    command_encoder002.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder002.clearBuffer(buffer002);
    device10.pushErrorScope("validation");
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder002.insertDebugMarker("mymarker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder003.clearBuffer(buffer002);
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    device20.pushErrorScope("internal");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    query200.destroy()
    const array7 = new Float32Array([-0.5, -0.25, -0.5, 0.0, -0.5, -0.25, -1.0, 0.0, -0.25, 0.5, 1.0, 0.5, 0.75, 1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, 1.0, 1.0, -0.5, 0.5, 0.75, 0.25, 0.0, 0.25, 0.75, -0.25, 0.0, 0.5, 0.5, 0.25, 0.0, 0.75, 0.75, 0.75, -0.75, 0.75, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, 0.75, -0.75, 0.75, 0.75, 0.75, 0.75, 0.25, -0.75, -0.25, 0.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.25, -0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, 1.0, 0.75, 0.0, 0.25, 0.0, 0.5, -0.75, 0.25, 0.75, -0.5, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, ]);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    device10.queue.submit([]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query501.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    query502.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query502.destroy()
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    device30.pushErrorScope("internal");
    command_encoder003.clearBuffer(buffer002);
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    command_encoder303.insertDebugMarker("mymarker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder304.pushDebugGroup("mygroupmarker")
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    device40.pushErrorScope("validation");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.popDebugGroup()
    command_encoder303.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.insertDebugMarker("mymarker");
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    device10.pushErrorScope("out-of-memory");
    const array8 = new Float32Array([0.75, -0.5, -0.5, 0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.0, 1.0, -0.5, -1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, -0.5, -0.25, 0.0, 0.75, 0.0, -0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -0.25, 0.5, 1.0, 0.5, 1.0, -1.0, -1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, -0.25, -0.75, -0.25, -0.25, -0.25, -0.25, 1.0, 0.25, 0.5, 0.0, 0.0, 0.5, -1.0, -0.75, -0.5, -0.25, -0.75, -1.0, 0.0, 1.0, 1.0, 0.5, 0.75, 0.5, -0.75, -0.5, 0.0, 0.75, 0.25, 0.5, 0.75, 1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.75, 0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, 0.75, 0.0, -0.75, 0.0, ]);
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3011.popDebugGroup()
    command_encoder002.clearBuffer(buffer002);
    
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    command_encoder002.clearBuffer(buffer002);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder302.clearBuffer(buffer301);
    query100.destroy()
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    compute_pass_encoder3011.insertDebugMarker("marker")
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder001.popDebugGroup();
    query301.destroy()
    query100.destroy()
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder003.insertDebugMarker("mymarker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder003.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    command_encoder002.clearBuffer(buffer003);
    compute_pass_encoder3011.insertDebugMarker("marker")
    device10.pushErrorScope("out-of-memory");
    const array9 = new Float32Array([-0.75, 0.75, -1.0, 0.25, -0.25, -0.25, -0.5, -0.25, 0.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.0, 0.0, 0.75, 0.75, -0.75, -0.5, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, 0.0, -0.5, -0.75, 0.0, 1.0, 1.0, -0.75, -0.25, 0.75, 0.75, 0.25, 0.25, 0.0, 0.5, 0.0, -0.75, 1.0, 1.0, -0.75, -0.75, -1.0, 0.0, -0.25, -0.5, -0.75, -0.25, 1.0, -0.25, -0.5, -0.75, 0.5, 0.75, -1.0, -0.25, -0.5, 1.0, -0.75, -0.5, -0.75, -1.0, -0.25, -0.25, 0.5, -0.75, -0.75, 1.0, -0.25, -0.5, 0.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, 1.0, 0.0, -1.0, -0.25, -0.5, 0.5, -0.25, 1.0, 0.5, 0.5, ]);
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    buffer201.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const array10 = new Float32Array([1.0, 0.5, 0.5, 0.25, 0.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, -0.75, 0.75, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.5, -0.5, 0.5, 0.0, 0.0, -1.0, -0.75, 0.5, 0.5, 0.5, -0.5, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, -1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 1.0, 0.75, -1.0, 0.0, -1.0, 1.0, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, 0.75, -0.75, 0.0, -0.75, 0.5, -0.75, 0.75, 0.5, -1.0, 1.0, 0.75, 1.0, 0.25, 0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 1.0, 0.5, 0.75, -0.25, 0.25, -1.0, -0.25, -1.0, ]);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    buffer203.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    device50.pushErrorScope("validation");
    
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer305, 0, array7, 0, array7.length);
    render_bundle_encoder202.popDebugGroup();
    query101.destroy()
    query201.destroy()
    compute_pass_encoder3040.insertDebugMarker("marker")
    command_encoder501.insertDebugMarker("mymarker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder303.clearBuffer(buffer300);
    device00.queue.writeBuffer(buffer000, 0, array10, 0, array10.length);
    command_encoder201.popDebugGroup()
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer100.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder200.popDebugGroup();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder501.pushDebugGroup("mygroupmarker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    command_encoder304.insertDebugMarker("mymarker");
    
    buffer305.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    
    command_encoder303.popDebugGroup()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    query000.destroy()
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    buffer303.destroy()
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array9, 0, array9.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder101.clearBuffer(buffer101);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device00.queue.submit([]);
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder3011.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    query203.destroy()
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    device00.pushErrorScope("validation");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder002.clearBuffer(buffer001);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
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
    compute_pass_encoder2010.setPipeline(compute_pipeline208);
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    
    
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    command_encoder502.popDebugGroup()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([]);
    command_encoder002.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    command_encoder000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    command_encoder101.popDebugGroup()
    command_encoder001.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    command_encoder300.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
    command_encoder304.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
}