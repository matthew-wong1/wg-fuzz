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
    const array0 = new Float32Array([-0.25, 0.5, 0.25, 0.75, 0.0, 0.0, 0.5, 0.5, 0.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.25, 1.0, -0.5, -0.5, -0.5, 0.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 1.0, -0.25, -0.75, 1.0, -1.0, -1.0, -0.75, 0.0, -0.25, -1.0, 0.0, 1.0, 0.0, 0.75, 0.25, 0.0, 1.0, -0.5, 1.0, 0.5, 0.0, 0.5, -0.5, 0.25, 0.0, 1.0, 1.0, -0.25, -0.75, 0.75, 0.5, 0.75, -0.25, 0.5, -0.25, 1.0, 0.5, 0.75, -0.75, -0.5, -0.5, 0.75, -0.25, -0.25, 0.0, 0.5, 1.0, -0.75, -1.0, -0.5, -0.25, -0.75, -0.25, 1.0, 0.25, -0.75, 0.25, 0.5, 0.75, 0.5, 0.25, 1.0, -0.5, -1.0, -0.25, 0.75, 0.0, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.75, -1.0, -0.25, -0.5, 1.0, -0.25, -0.5, 1.0, 0.75, -0.75, 0.75, -0.25, 0.0, -1.0, 1.0, 0.25, -0.5, 0.5, -1.0, -0.75, 1.0, -0.75, 0.0, -0.25, 0.75, 0.75, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, 0.75, 0.0, 0.0, 0.25, 0.25, 0.0, 0.75, -0.5, -0.25, -0.25, 0.5, 0.5, 0.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 1.0, 1.0, 0.75, 0.5, -0.75, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, -0.75, -0.75, 0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.25, 0.25, -1.0, -0.25, -1.0, 1.0, 1.0, 0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.25, 0.75, 1.0, 0.0, -0.25, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer200.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer200 = command_encoder200.finish();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array2 = new Float32Array([1.0, 0.25, -0.5, -0.25, 0.25, 0.5, 0.0, -0.75, 0.75, -0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.5, 0.0, -0.25, -0.25, -1.0, -0.25, 0.75, 0.0, 0.5, -1.0, -0.5, -0.5, -0.5, 0.25, -0.5, -1.0, 0.0, -0.5, -0.5, 1.0, 0.25, 1.0, 0.0, 0.75, 0.0, 1.0, 0.75, -0.25, 0.25, -0.75, 1.0, -0.75, 0.5, -1.0, -1.0, 0.0, 0.0, -0.25, 1.0, 0.0, -1.0, 0.25, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, -1.0, 0.75, -0.75, 1.0, -1.0, -0.25, 0.75, 0.5, -0.5, 0.75, -0.5, 0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -0.5, -0.5, 0.25, -1.0, -0.75, ]);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer202 = command_encoder202.finish();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.5, -0.75, -0.5, -1.0, -0.5, 0.75, 0.75, 0.0, -0.5, -0.75, 0.0, 0.25, 0.75, 0.5, -0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.25, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.75, 0.0, 0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, 1.0, -0.5, -0.5, 0.25, -0.75, 0.75, -0.25, 0.5, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, 0.75, -0.75, 1.0, -0.5, -0.75, -0.25, 0.0, 1.0, -0.25, 0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 1.0, 0.5, -0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.5, 0.75, 0.5, 1.0, -0.75, 0.0, -1.0, 1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 0.0, -0.5, -0.75, 0.25, -0.25, 0.5, 0.25, 0.5, -1.0, -0.5, 1.0, 0.25, 0.75, -0.5, -1.0, -0.25, -0.75, -0.75, -0.75, -0.25, -0.25, 0.5, 0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, 0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, 0.5, 0.0, 1.0, -0.5, -1.0, -1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, 0.25, -1.0, 1.0, -1.0, 0.0, 0.25, 1.0, 0.25, -0.5, 0.25, 0.25, 0.5, -0.75, 0.0, 0.25, -0.25, 0.25, -0.5, -0.25, -1.0, 0.5, 0.0, -0.75, 1.0, -0.5, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    query202.destroy()
    texture201.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    query200.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.pushErrorScope("validation");
    
    
    
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query002.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    query002.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    buffer002.destroy()
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    query001.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    query201.destroy()
    const array5 = new Float32Array([0.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, -0.75, -1.0, 1.0, 0.25, -0.25, -0.25, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.25, -0.75, -0.5, -0.75, 1.0, -0.25, 0.5, 0.0, -0.75, 0.75, -0.25, 0.5, 0.75, -0.25, 0.25, 0.5, -1.0, -0.5, -1.0, 0.5, 0.5, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, -1.0, -1.0, 0.0, 0.75, 0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.5, 0.25, 0.0, -0.5, -0.25, -0.25, 0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 1.0, -0.75, -1.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, -0.5, -0.25, 1.0, ]);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder201.popDebugGroup()
    command_encoder201.insertDebugMarker("mymarker");
    const array6 = new Float32Array([-0.75, 1.0, 0.0, 0.25, 0.75, 0.75, 1.0, 0.0, 1.0, 0.75, -0.25, 0.5, 0.25, -0.5, -1.0, 0.0, 0.0, -1.0, -0.25, -0.25, 0.0, 1.0, -0.5, -0.25, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, 0.25, 0.25, 0.0, 0.0, 0.5, 0.5, -0.5, 1.0, -1.0, 1.0, 1.0, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -1.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.75, -0.75, -0.25, -0.5, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 0.25, -0.5, -0.25, -0.25, -0.75, 0.25, 1.0, 0.75, -1.0, 0.0, -0.25, 0.0, 0.0, -1.0, -0.75, -0.75, -0.25, 0.75, -1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query202.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("internal");
    const array7 = new Float32Array([1.0, 1.0, 0.0, -0.75, 0.25, 0.75, -0.5, -0.25, 1.0, 0.25, -1.0, -1.0, -1.0, -1.0, 0.75, 0.25, 0.0, 1.0, -0.5, 0.0, 0.75, 0.75, -0.25, -0.5, -0.5, 1.0, 0.0, -1.0, -0.5, -0.5, 1.0, -1.0, -0.25, 0.0, 1.0, 0.25, -0.25, 0.5, 0.75, -0.5, -0.25, 0.25, 0.0, -1.0, -0.25, -0.75, -0.25, -0.75, -0.75, -1.0, 0.75, 0.25, 1.0, 0.5, -1.0, 0.0, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, 0.75, 0.0, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.25, 0.75, -1.0, -0.75, -0.75, 0.0, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, -1.0, -0.25, -0.25, 1.0, -1.0, -0.5, ]);
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
    query000.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder203.insertDebugMarker("mymarker");
    query203.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder204.pushDebugGroup("mygroupmarker")
    texture202.destroy();
    const command_buffer203 = command_encoder203.finish();
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
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query002.destroy()
    
    query201.destroy()
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query004.destroy()
    query202.destroy()
    command_encoder001.popDebugGroup()
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder204.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer001 = command_encoder001.finish();
    query001.destroy()
    device20.pushErrorScope("out-of-memory");
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
    query201.destroy()
    command_encoder206.pushDebugGroup("mygroupmarker")
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query202
    });
    query004.destroy()
    query000.destroy()
    device20.queue.submit([command_buffer200, command_buffer202, command_buffer203, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2040.executeBundles([])
    query000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    render_pass_encoder2060.pushDebugGroup("group_marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder207.pushDebugGroup("mygroupmarker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer000.destroy()
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    device30.pushErrorScope("validation");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    command_encoder000.popDebugGroup()
    command_encoder207.popDebugGroup()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    query205.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_buffer600 = command_encoder600.finish();
    query200.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture301.destroy();
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder2070.pushDebugGroup("group_marker");
    
    
    query203.destroy()
    
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2070.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder2050.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const array8 = new Float32Array([0.0, 0.0, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 0.5, 0.75, -0.5, -0.75, 0.25, -0.5, -0.75, -1.0, 0.0, 0.75, 1.0, -1.0, 0.75, 0.0, 0.5, -0.75, 0.5, 0.5, -0.5, 0.0, 1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, -0.5, -0.75, -0.25, 0.5, 1.0, -0.25, 0.0, 1.0, -0.25, 0.0, -0.5, 0.25, 0.5, -1.0, 0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, -1.0, 1.0, -0.5, 1.0, 1.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.5, -0.5, 1.0, -0.5, -1.0, -0.25, 0.75, -0.5, -0.75, -0.5, 0.25, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -0.75, ]);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture203.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    query002.destroy()
    query204.destroy()
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer000 = command_encoder000.finish();
    const array9 = new Float32Array([-0.5, -0.75, 0.75, 0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -0.25, 0.75, 0.5, 1.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 1.0, -1.0, 0.0, 0.25, -1.0, 0.5, 0.0, -0.75, -0.75, 0.25, -0.5, 0.0, 0.75, -0.5, -0.75, -0.75, 0.5, 0.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, -1.0, 0.75, -0.25, -0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, 0.0, 0.25, 1.0, -1.0, 0.5, 0.5, ]);
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    
    
    
    
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    query202.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    query005.destroy()
    render_pass_encoder2070.popDebugGroup();
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    texture300.destroy();
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer300.destroy()
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
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2060.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([-0.5, 1.0, 0.5, 1.0, 0.5, 0.25, 0.75, 0.75, 0.75, -1.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -1.0, -0.5, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, -0.5, -1.0, -0.5, 0.75, 0.0, 0.5, -1.0, 0.75, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, -1.0, -0.25, -0.25, -1.0, 0.25, 0.5, -0.75, 0.75, 0.25, 0.25, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 0.75, 1.0, -0.5, 0.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.5, 1.0, -0.75, -1.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 0.5, -0.25, -0.5, -0.75, 0.75, -0.25, -1.0, 0.75, -0.75, -0.25, -1.0, -0.25, 1.0, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2070.pushDebugGroup("group_marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    query006.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query205.destroy()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query005.destroy()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_pass_encoder2050.setStencilReference(1);
    
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    query203.destroy()
    query005.destroy()
    device20.pushErrorScope("validation");
    device00.queue.submit([command_buffer001, ]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query202.destroy()
    texture000.destroy();
    device00.queue.submit([command_buffer000, ]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    render_bundle_encoder600.insertDebugMarker("marker");
    query004.destroy()
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2050.executeBundles([])
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    query206.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer601.destroy()
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2070.executeBundles([])
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setStencilReference(1);
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout204]
    });
    query001.destroy()
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder602.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2040.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    query000.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2070.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    query002.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query205.destroy()
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout201]
    });
    query601.destroy()
    
    
    query201.destroy()
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("out-of-memory");
    
    
    buffer301.destroy()
    
    render_pass_encoder2070.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer201.destroy()
    render_bundle_encoder200.popDebugGroup();
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
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
    query600.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.executeBundles([])
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query004.destroy()
    render_pass_encoder2050.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder2050.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture205.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2070.setStencilReference(1);
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    
    buffer603.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.popDebugGroup();
    render_pass_encoder2070.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder2060.setStencilReference(1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query003.destroy()
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2040,
            },
        ],
        occlusionQuerySet: query206
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer302.destroy()
    render_pass_encoder2060.setStencilReference(1);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query007.destroy()
    
    
    query400.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setStencilReference(1);
    
    query202.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query003.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query601.destroy()
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2060.executeBundles([])
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device70.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer304.destroy()
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_bundle_encoder602.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    
    render_pass_encoder2070.popDebugGroup();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder2050.executeBundles([])
    buffer701.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    device40.destroy();
    render_pass_encoder2070.setStencilReference(1);
    
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}