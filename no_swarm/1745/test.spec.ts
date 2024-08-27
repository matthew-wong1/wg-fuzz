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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-1.0, 0.75, -1.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.75, -0.5, 0.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, -0.75, -1.0, -0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -0.75, -0.25, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, 0.5, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.75, 0.5, 0.5, -0.5, 0.5, 1.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.25, -1.0, 0.25, 0.5, 0.25, -1.0, -0.25, -1.0, -1.0, -0.5, -0.5, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 0.25, 1.0, -0.75, 0.0, -0.5, -1.0, -0.5, -0.25, 0.25, 0.0, 0.5, 0.75, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([-1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, -0.75, 0.25, 0.25, 0.5, 0.0, 1.0, -0.25, -0.25, -0.75, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.5, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 1.0, 1.0, -0.5, 1.0, -0.5, -0.75, -1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.75, -0.5, -0.5, -0.5, 0.75, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, -0.5, 0.0, -0.25, 1.0, 0.0, 0.25, 0.0, 1.0, 0.75, 0.5, 0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 0.25, -1.0, 0.25, 0.0, -1.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    
    
    
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture000.destroy();
    buffer001.destroy()
    device00.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.insertDebugMarker("mymarker");
    
    
    query001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array2 = new Float32Array([-0.5, 0.25, 0.75, -1.0, -0.5, 0.0, -0.5, -1.0, -1.0, 0.75, -1.0, 0.0, -0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.5, -0.25, 0.0, -1.0, 0.0, -0.5, -0.75, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, -1.0, 0.75, 1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.25, 1.0, -0.25, 0.75, 0.75, 0.5, 1.0, 1.0, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, 0.75, -0.25, -0.25, -0.5, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, 0.75, 1.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 0.0, ]);
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("out-of-memory");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.clearBuffer(buffer003);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array3 = new Float32Array([-0.75, 0.25, -1.0, -0.25, 1.0, 0.75, 0.5, -1.0, -0.75, 1.0, 1.0, 0.25, -0.5, -0.25, -1.0, -1.0, 1.0, -0.25, -1.0, -1.0, 0.75, 0.75, -0.25, 0.0, 1.0, -0.75, 1.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.75, 0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -0.5, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 0.0, -0.5, 0.25, 0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -0.25, 0.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.75, 1.0, -0.75, -0.5, 0.25, 0.25, 0.75, 0.75, -1.0, 1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, 0.25, 0.25, 0.5, 0.0, -0.25, -0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, ]);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer002.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    buffer201.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    buffer000.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer201.destroy()
    buffer201.destroy()
    
    
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    texture200.destroy();
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    query001.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array4 = new Float32Array([-1.0, 0.5, -1.0, -0.5, 0.25, -1.0, -1.0, -0.75, -1.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 1.0, -0.75, -1.0, -0.25, -0.5, 0.5, 1.0, -0.75, -1.0, 0.75, -0.5, -0.75, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, 0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -0.25, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.75, -0.25, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, 0.0, -0.5, 1.0, -0.75, -0.25, 0.25, 0.0, 1.0, -0.75, -0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 1.0, 0.25, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 0.5, -0.75, 1.0, -0.75, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query000.destroy()
    
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder200.clearBuffer(buffer203);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    query001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer203.destroy()
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
    
    buffer201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query001.destroy()
    compute_pass_encoder2000.popDebugGroup()
    command_encoder202.copyBufferToBuffer(
        buffer200,
        0,
        buffer202,
        0,
        400
    );
    
    buffer202.destroy()
    
    render_bundle_encoder200.popDebugGroup();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2001.insertDebugMarker("marker")
    const command_buffer202 = command_encoder202.finish();
    
    command_encoder203.insertDebugMarker("mymarker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const command_buffer000 = command_encoder000.finish();
    buffer203.destroy()
    
    
    const command_buffer204 = command_encoder204.finish();
    device00.queue.submit([command_buffer001, ]);
    render_bundle_encoder001.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    query000.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    buffer203.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    buffer202.destroy()
    command_encoder203.copyBufferToBuffer(
        buffer200,
        0,
        buffer203,
        0,
        400
    );
    command_encoder203.copyBufferToBuffer(
        buffer200,
        0,
        buffer204,
        0,
        400
    );
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_buffer203 = command_encoder203.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    command_encoder002.popDebugGroup()
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
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    query002.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const command_buffer002 = command_encoder002.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device20.pushErrorScope("internal");
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer003.destroy()
    buffer204.destroy()
    render_bundle_encoder000.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.queue.submit([command_buffer002, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    query002.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer207.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    query200.destroy()
    render_pass_encoder0030.executeBundles([])
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline202);
    query002.destroy()
    render_pass_encoder0030.beginOcclusionQuery(0)
    
    texture001.destroy();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
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
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer204, ]);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    render_pass_encoder0030.setPipeline(render_pipeline000);
    buffer005.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group000);
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    
    render_pass_encoder0031.beginOcclusionQuery(0)
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query006.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_bundle_encoder202.setVertexBuffer(0, buffer205);
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
    buffer009.destroy()
    
    
    buffer004.destroy()
    query001.destroy()
    buffer2010.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture201.destroy();
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    
    render_bundle_encoder202.draw(3);
    buffer007.destroy()
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    compute_pass_encoder2000.popDebugGroup()
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    buffer002.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    buffer203.destroy()
    query007.destroy()
    
    buffer006.destroy()
    {
        await buffer205.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer205.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer205.unmap();
        console.log(new Float32Array(data));
    }
    buffer206.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group202);
    
    
    render_bundle_encoder200.popDebugGroup();
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    command_encoder200.copyBufferToBuffer(
        buffer208,
        0,
        buffer208,
        0,
        400
    );
    device00.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    command_encoder205.clearBuffer(buffer2012);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder202.finish();
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    query007.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    compute_pass_encoder2001.popDebugGroup()
    command_encoder205.copyBufferToBuffer(
        buffer2010,
        0,
        buffer2013,
        0,
        400
    );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    buffer208.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer006,
        0
    )
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0031.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2014, 0);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    buffer209.destroy()
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query004
    });
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    render_bundle_encoder001.setVertexBuffer(0, buffer006);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    buffer2011.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer0010.destroy()
    command_encoder205.clearBuffer(buffer204);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer0012,
        0
    )
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder004.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer2012, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer0010,
        0
    )
    
    
    
    command_encoder205.clearBuffer(buffer205);
    command_encoder205.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer2013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer0013,
        0
    )
    command_encoder205.copyBufferToBuffer(
        buffer201,
        0,
        buffer2014,
        0,
        400
    );
    buffer0012.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0030.pushDebugGroup("group_marker");
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer0011,
        0
    )
    render_pass_encoder0050.setPipeline(render_pipeline001);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2012.destroy()
    render_bundle_encoder001.setIndexBuffer(buffer004, "uint16");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    device20.queue.writeBuffer(buffer2011, 0, array4, 0, array4.length);
    
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder205.clearBuffer(buffer206);
    query003.destroy()
    command_encoder004.resolveQuerySet(
        query006,
        0,
        32,
        buffer0014,
        0
    )
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    const command_buffer205 = command_encoder205.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    query201.destroy()
    device00.queue.writeBuffer(buffer0014, 0, array3, 0, array3.length);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder0031.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder001.drawIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    
    const command_buffer004 = command_encoder004.finish();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer2017.destroy()
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.beginOcclusionQuery(0)
    
    render_bundle_encoder200.setVertexBuffer(0, buffer204);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group003);
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0031.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.setVertexBuffer(0, buffer0011);
    render_pass_encoder0050.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0050.end();
    compute_pass_encoder2000.end();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group004);
    device20.queue.submit([command_buffer203, ]);
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder2001.end();
    render_pass_encoder0031.setVertexBuffer(0, buffer009);
    render_pass_encoder0031.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    const command_buffer005 = command_encoder005.finish();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    compute_pass_encoder2000.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0031.setIndexBuffer(buffer002, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    command_encoder200.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
    device00.queue.submit([command_buffer003, ]);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group205);
    render_pass_encoder0030.setIndexBuffer(buffer007, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer202, command_buffer205, ]);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0050.drawIndirect(buffer001, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2022, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer0012, "uint16");
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer004, 0);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer006, 0);
}