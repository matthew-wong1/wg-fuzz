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
    
    const array0 = new Float32Array([0.75, 0.75, 0.25, -0.5, 0.5, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, 0.25, 1.0, 0.75, 0.5, -0.75, 0.75, -0.25, 0.5, 0.0, -1.0, 1.0, -0.75, 0.25, 0.25, -0.5, 0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.0, -1.0, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.75, 0.0, 0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.25, -0.5, 0.75, -0.25, 0.5, -0.75, -0.25, -0.75, 1.0, 1.0, 1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, -0.75, 0.5, 0.75, -0.5, 0.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.0, -0.25, 0.5, 0.5, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer100.destroy()
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
    const array1 = new Float32Array([-0.5, -0.25, 0.25, -0.25, 0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -1.0, 0.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.5, 0.75, 0.75, 1.0, -0.25, 0.0, -0.75, 0.5, -0.75, -1.0, -0.75, -0.5, -1.0, -0.5, 0.0, 1.0, -0.5, -0.5, 0.75, 0.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 0.0, -0.75, -1.0, 0.25, -0.75, 1.0, 0.0, -0.5, -0.5, 0.5, 0.75, 1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, 0.75, -1.0, 1.0, 0.25, -1.0, -0.75, 0.75, -0.5, -1.0, -0.75, -1.0, 1.0, -0.75, -0.25, 0.5, 0.0, -0.75, 0.5, -0.25, -0.5, 0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer100.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array2 = new Float32Array([1.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.75, 0.25, 0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, 0.5, -0.5, 0.5, -1.0, -1.0, -0.75, 0.25, -1.0, 0.25, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, 0.75, 0.0, -0.25, 1.0, 0.25, -0.75, 1.0, 0.0, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, 0.25, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.5, 0.75, 0.5, -0.75, -1.0, -0.5, 0.25, 0.5, 0.75, 0.0, 1.0, 1.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 0.75, -0.5, 0.75, -1.0, -0.5, -1.0, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    render_bundle_encoder001.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.popDebugGroup()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const command_buffer200 = command_encoder200.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder200.popDebugGroup();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    device20.queue.submit([command_buffer200, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
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
    render_bundle_encoder200.popDebugGroup();
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    command_encoder402.copyTextureToBuffer(
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    texture400.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device40.pushErrorScope("validation");
    command_encoder402.pushDebugGroup("mygroupmarker")
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    texture401.destroy();
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    device20.destroy();
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    command_encoder402.copyBufferToBuffer(
        buffer400,
        0,
        buffer400,
        0,
        400
    );
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
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
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    const array3 = new Float32Array([1.0, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, -1.0, -0.25, -1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -0.75, -0.25, -0.5, -0.25, 0.25, 0.0, 0.75, 0.5, -0.25, -1.0, -0.75, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.5, -0.25, 0.25, -0.5, -0.5, 0.0, 0.0, -1.0, 0.75, -0.25, -1.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.0, 0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.25, -0.5, 0.25, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -0.5, 0.75, 1.0, -0.75, -1.0, 1.0, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, -1.0, ]);
    const array4 = new Float32Array([1.0, -0.5, 0.5, -1.0, -0.75, 1.0, 0.75, -0.5, -0.75, 0.75, 0.25, -0.25, -0.75, -0.5, -0.75, 0.0, -0.25, 1.0, -0.25, -0.5, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.25, 1.0, 0.5, 0.5, 0.75, 0.75, -0.75, 0.0, 0.25, -0.5, 1.0, -0.25, 0.75, 1.0, -0.25, 0.75, 0.0, -0.75, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.0, -1.0, -0.5, 0.25, 0.75, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, -0.25, 0.5, 0.75, 0.75, -1.0, -0.25, 0.5, 0.5, -0.75, 0.0, 0.75, ]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    const array5 = new Float32Array([0.25, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 1.0, 0.75, 0.75, 1.0, -0.25, 0.5, -0.5, 0.75, -1.0, -1.0, -0.5, -0.5, -0.5, 1.0, 0.0, 0.5, -1.0, -0.25, 0.5, -0.5, 0.25, 0.25, -0.25, -0.5, 0.75, 0.0, 0.25, -0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 0.75, -0.25, -0.25, -0.75, -0.75, 0.5, 0.0, -0.5, 0.0, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.25, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 1.0, 1.0, -0.75, -0.75, -0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.25, -0.75, 0.75, 0.75, 0.25, 0.75, -1.0, 0.0, 0.25, 1.0, 0.25, 0.25, 0.0, 0.25, ]);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    query400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture402.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    buffer401.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query400.destroy()
    device00.pushErrorScope("internal");
    buffer403.destroy()
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder402.copyBufferToBuffer(
        buffer406,
        0,
        buffer406,
        0,
        400
    );
    
    command_encoder403.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer406, 0, array4, 0, array4.length);
    render_pass_encoder4021.insertDebugMarker("marker");
    
    buffer406.destroy()
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4021.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4021.executeBundles([])
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder4030.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder4020.executeBundles([])
    buffer400.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    render_pass_encoder4021.executeBundles([])
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32sint",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.executeBundles([])
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    command_encoder403.insertDebugMarker("mymarker");
    render_pass_encoder4020.executeBundles([render_bundle_encoder402, ])
    const array6 = new Float32Array([-0.25, -0.25, -1.0, -0.25, -1.0, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.0, -1.0, 0.25, 0.0, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.5, 0.0, -1.0, 0.75, 0.75, 0.0, -0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, -0.75, -0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.0, -0.5, 1.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.0, -1.0, 0.75, 1.0, -0.5, -0.5, 1.0, -0.25, -0.5, -0.25, 0.5, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, -0.5, 0.5, -0.25, 1.0, 0.25, 1.0, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 0.25, ]);
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer406,
        0
    )
    
    query401.destroy()
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer402
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query401.destroy()
    texture401.destroy();
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const array7 = new Float32Array([0.75, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, 0.5, -1.0, 0.5, -1.0, 0.0, -1.0, -0.75, 0.25, -0.75, -0.75, 0.25, -0.25, -0.5, 1.0, -0.5, -0.75, 0.75, 0.5, 0.0, -1.0, 1.0, 1.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.5, -0.25, 0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 1.0, -0.75, -1.0, -1.0, -0.5, 1.0, 0.5, 0.0, 0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, 0.25, 1.0, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.75, -1.0, 0.75, -1.0, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.0, -1.0, -0.5, 0.25, ]);
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_pass_encoder4001.setPipeline(render_pipeline400);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    render_pass_encoder4030.setPipeline(render_pipeline400);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer408, 0);
    query501.destroy()
    
    
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4031.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4021.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer408, 0, array4, 0, array4.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([-0.5, 1.0, -0.25, 0.5, 0.25, -0.5, 0.75, 1.0, 0.75, 0.75, 0.0, 0.25, -0.25, 0.25, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.5, -0.25, -0.25, 0.5, -1.0, -0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, -0.75, -1.0, -1.0, 0.0, 1.0, -0.25, -0.5, 0.0, 0.75, 0.5, 0.75, 0.25, -0.75, -0.25, -0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 0.5, -0.5, -1.0, -0.5, -0.75, 0.5, 0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 0.25, 0.5, 0.5, 1.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, -0.75, -0.75, 0.75, 0.25, 0.5, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, 0.75, -1.0, 0.25, -0.75, 1.0, ]);
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_pass_encoder4030.pushDebugGroup("group_marker");
    buffer408.destroy()
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4030.setStencilReference(1);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder4030.popDebugGroup();
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    buffer402.destroy()
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder4001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4031.setPipeline(render_pipeline400);
    render_pass_encoder4021.setStencilReference(1);
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device50.destroy();
    
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer405.destroy()
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout408,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder401.copyTextureToTexture(
        {
            texture: texture402
        },
        {
            texture: texture402
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.setPipeline(render_pipeline400);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    device40.queue.writeBuffer(buffer407, 0, array8, 0, array8.length);
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout406,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder4020.popDebugGroup()
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    texture403.destroy();
    
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group404);
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module403,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.executeBundles([render_bundle_encoder400, ])
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4016, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4016, 0);
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query401.destroy()
    render_pass_encoder4031.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    command_encoder403.copyBufferToBuffer(
        buffer4017,
        0,
        buffer4016,
        0,
        400
    );
    render_pass_encoder4020.setVertexBuffer(0, buffer4012);
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_pass_encoder4021.setVertexBuffer(0, buffer405);
    command_encoder401.copyBufferToBuffer(
        buffer4017,
        0,
        buffer4010,
        0,
        400
    );
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer4016.destroy()
    device40.queue.writeTexture({ texture: texture405 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer408, 0, array4, 0, array4.length);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout407,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder4001.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    {
        await buffer4015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4015.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout409,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer4011.destroy()
    render_pass_encoder4031.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4019,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group405);
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer4012, 0, array7, 0, array7.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module402,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4021,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group406);
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer4013,
        0
    )
    device40.queue.writeBuffer(buffer409, 0, array8, 0, array8.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder402.clearBuffer(buffer4020);
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer4021.destroy()
    device40.pushErrorScope("validation");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4031.setStencilReference(1);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer403,
        0
    )
    device70.destroy();
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer4013, 0, array1, 0, array1.length);
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4030.pushDebugGroup("group_marker");
    command_encoder402.copyBufferToBuffer(
        buffer4017,
        0,
        buffer4020,
        0,
        400
    );
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group407);
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer406,
        0
    )
    render_pass_encoder4020.drawIndirect(buffer4016, 0);
    render_pass_encoder4020.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    render_pass_encoder4000.setVertexBuffer(0, buffer407);
    render_pass_encoder4021.end();
    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4025,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group408);
    command_encoder402.popDebugGroup()
    render_pass_encoder4031.setVertexBuffer(0, buffer407);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4014, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4021.popDebugGroup();
    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4027,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group409);
    compute_pass_encoder4010.end();
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4031.end();
    render_pass_encoder4030.setVertexBuffer(0, buffer4022);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer4016, 0);
    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4029,
                },
            },
        ],
    });

    render_pass_encoder4001.setBindGroup(0, bind_group4010);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder4001.setVertexBuffer(0, buffer4011);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4011);
    render_pass_encoder4001.setIndexBuffer(buffer4027, "uint16");
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4030.end();
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4001.drawIndexedIndirect(buffer4011, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4032, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4032, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4021.popDebugGroup();
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder4020.end();
    render_pass_encoder4001.end();
    render_pass_encoder4000.drawIndirect(buffer4032, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder4021.drawIndirect(buffer4017, 0);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder4031.drawIndirect(buffer4032, 0);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4032, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.setIndexBuffer(buffer401, "uint16");
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder4020.drawIndexedIndirect(buffer4032, 0);
    render_pass_encoder4000.drawIndirect(buffer4014, 0);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4016, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4031.popDebugGroup();
    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4034,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group4012);
    compute_pass_encoder4010.end();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder4000.drawIndirect(buffer4016, 0);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4020.drawIndexedIndirect(buffer408, 0);
    compute_pass_encoder4010.end();
    render_pass_encoder4030.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.end();
    render_pass_encoder4001.drawIndexedIndirect(buffer4032, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4032, 0);
    render_pass_encoder4021.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4030.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4021.popDebugGroup();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4035, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4035, 0);
    render_pass_encoder4021.end();
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    compute_pass_encoder4010.end();
    render_pass_encoder4000.end();
    render_pass_encoder4030.draw(3);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4031.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4031.draw(3);
    render_pass_encoder4020.setIndexBuffer(buffer4031, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4021, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4022, "uint16");
    compute_pass_encoder4020.dispatchWorkgroups(100);
    render_pass_encoder4021.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder4001.end();
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4036, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4036, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer4025, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4037, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4037, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4032, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder4031.draw(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4021.drawIndexed(3);
    render_pass_encoder4001.drawIndirect(buffer4011, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4031.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder4000.end();
    compute_pass_encoder4000.end();
    render_pass_encoder4030.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer409, 0);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4021.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4021.end();
    render_pass_encoder4000.drawIndirect(buffer402, 0);
    render_pass_encoder4001.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4038, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4038, 0);
    render_pass_encoder4031.drawIndirect(buffer4036, 0);
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4031.drawIndexedIndirect(buffer4035, 0);
    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4040,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    compute_pass_encoder4020.end();
    render_pass_encoder4020.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4021.end();
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder4031.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4028, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder4030.end();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4001.draw(3);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4041, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4041, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4036, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4042, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4042, 0);
    render_pass_encoder4031.drawIndirect(buffer4037, 0);
    render_pass_encoder4031.drawIndirect(buffer4028, 0);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder4020.popDebugGroup()
    render_pass_encoder4031.end();
    render_pass_encoder4031.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4001.drawIndirect(buffer4011, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder4001.drawIndexedIndirect(buffer4035, 0);
    compute_pass_encoder4020.end();
    render_pass_encoder4021.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.end();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4034, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4043, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4043, 0);
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4044, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4044, 0);
    render_pass_encoder4001.end();
    render_pass_encoder4021.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4001.drawIndexed(3);
    render_pass_encoder4021.drawIndexedIndirect(buffer4023, 0);
    render_pass_encoder4000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4020.drawIndexedIndirect(buffer4016, 0);
}