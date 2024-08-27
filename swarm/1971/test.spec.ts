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
        powerPreference: "low-power"
    });
    
    
    
    const array0 = new Float32Array([-0.5, 1.0, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 0.75, -1.0, -1.0, 1.0, -1.0, -0.5, -1.0, 0.75, -0.5, -0.25, -0.75, 0.5, -1.0, 0.75, -0.75, -0.5, 0.25, -0.5, -0.25, -0.5, -0.25, 0.25, -0.5, 0.75, -0.75, 0.5, -1.0, 0.75, 0.25, 0.25, -0.75, 1.0, -0.75, 0.5, 1.0, -0.25, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.5, 0.5, -1.0, -0.75, 0.25, -0.75, -1.0, 0.0, 0.25, -0.5, 1.0, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, 1.0, 0.75, 0.25, 0.75, -0.5, -1.0, 0.5, -0.75, 0.25, 0.5, -0.25, -0.5, 0.0, 0.5, -0.25, -1.0, 0.75, 1.0, 1.0, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-1.0, -0.75, 0.5, 1.0, -0.25, -0.5, -0.25, -0.5, 0.25, 0.0, 0.25, 1.0, 1.0, 0.75, 1.0, -0.75, 0.25, 1.0, -0.25, 1.0, 0.0, -0.5, -0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 0.5, 0.75, -1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.5, 1.0, 1.0, -0.75, 0.0, -0.75, -0.25, -1.0, -0.5, -1.0, 0.25, 0.25, 0.0, -0.75, 0.5, -0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.5, 0.5, 0.75, 0.5, -0.5, 1.0, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, 0.0, 1.0, 1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.clearBuffer(buffer200);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.pushErrorScope("out-of-memory");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array2 = new Float32Array([-0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, -0.25, 0.75, -0.75, 0.75, -1.0, -1.0, 1.0, 0.5, -0.75, -1.0, 0.75, -0.75, -0.5, 0.25, 0.0, -0.75, 0.0, -0.25, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, -1.0, -1.0, -1.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.0, 1.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.0, 1.0, -0.5, 1.0, 0.75, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 0.25, 0.25, 0.75, 0.75, -1.0, -0.25, -1.0, -1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 0.75, -1.0, -0.75, 0.0, -0.75, 0.25, 0.0, 0.75, 0.25, -1.0, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, ]);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const array3 = new Float32Array([0.5, -0.25, -0.75, 1.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.25, 0.0, -0.25, -1.0, 0.5, 0.0, 0.25, -0.5, 0.25, 0.0, 0.25, -1.0, 0.5, -1.0, 0.0, 0.0, -0.75, -1.0, -1.0, 0.25, -1.0, -0.5, -0.75, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -1.0, 0.5, -0.5, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, 0.75, -0.5, 0.25, -0.25, -1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.5, -1.0, 0.75, -1.0, -0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -1.0, -0.25, 0.25, 0.25, 1.0, -0.75, -0.5, ]);
    
    command_encoder201.popDebugGroup()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query202.destroy()
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer202 = command_encoder202.finish();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder200.popDebugGroup()
    device00.pushErrorScope("out-of-memory");
    const array4 = new Float32Array([0.0, 1.0, -0.5, -1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.5, 0.5, 0.0, 0.75, -0.75, 0.5, -1.0, 0.25, -0.25, -0.5, 0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 0.5, 0.0, 0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, -0.75, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0, -1.0, -0.75, 0.75, 1.0, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, 0.75, -0.75, 1.0, 0.75, -0.5, -1.0, -0.5, 0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.75, -1.0, -0.75, 0.5, -0.75, 0.5, -0.5, 0.75, 1.0, 0.5, -0.75, -1.0, -1.0, -0.75, -0.75, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.25, 0.0, 1.0, 0.0, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const command_buffer300 = command_encoder300.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    device20.destroy();
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    buffer300.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.clearBuffer(buffer000);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array5 = new Float32Array([0.5, 1.0, -0.75, -0.25, 1.0, -0.25, -0.75, 0.75, -0.25, 0.0, 0.75, 0.75, 0.5, -1.0, 0.0, 0.75, 0.5, -0.25, -0.75, -0.75, -1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 1.0, -0.75, 0.0, -1.0, 0.25, 0.0, -0.75, 0.25, -0.75, 0.5, 0.0, 0.25, -1.0, 0.25, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, -1.0, 1.0, -1.0, 0.0, -1.0, 0.5, -1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -1.0, -1.0, -0.5, -0.25, -0.25, 0.75, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, 1.0, -1.0, -0.75, 0.25, 0.5, -0.75, -0.5, -0.5, 0.25, -1.0, 1.0, -0.75, 0.0, -0.25, 0.5, 0.75, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, 0.75, -1.0, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer001.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer000 = command_encoder000.finish();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    buffer002.destroy()
    
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
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query001.destroy()
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
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    query000.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
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
    texture303.destroy();
    query300.destroy()
    command_encoder001.popDebugGroup()
    device30.pushErrorScope("out-of-memory");
    query000.destroy()
    
    const command_buffer201 = command_encoder201.finish();
    
    render_pass_encoder3020.executeBundles([])
    command_encoder301.copyTextureToTexture(
        {
            texture: texture300
        },
        {
            texture: texture302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    texture301.destroy();
    const command_buffer001 = command_encoder001.finish();
    
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder3020.setStencilReference(1);
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query300.destroy()
    
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer303 = command_encoder303.finish();
    query000.destroy()
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture302.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    texture000.destroy();
    
    render_pass_encoder3020.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder3010.beginOcclusionQuery(0)
    device30.pushErrorScope("out-of-memory");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder400.clearBuffer(buffer401);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
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
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    buffer000.destroy()
    query300.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    const array6 = new Float32Array([0.5, -1.0, -0.25, 0.75, 0.5, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, 1.0, -0.25, -0.5, 0.75, 1.0, -0.5, -0.25, -0.75, 0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -0.75, 0.75, 0.5, -0.5, 0.25, -1.0, 0.0, -1.0, -0.25, -0.25, 0.0, -1.0, 1.0, 0.75, 0.25, 0.5, 0.0, -1.0, 0.25, 0.25, 1.0, -0.5, 0.0, -1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 0.0, 1.0, -0.25, -1.0, -0.75, 0.5, 0.0, -0.5, -0.25, -0.5, 0.25, -0.25, -0.75, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 0.5, 1.0, 0.75, 0.5, -0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, 1.0, ]);
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const array7 = new Float32Array([-1.0, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.75, -0.5, -1.0, 0.5, -1.0, 0.25, 0.25, 0.5, -1.0, -1.0, 1.0, 1.0, -0.75, 1.0, -0.25, 1.0, -0.25, 0.25, -0.5, -0.5, -0.5, 0.75, 1.0, 0.5, 0.5, -0.5, 0.75, -0.25, 0.0, -0.5, 0.0, 1.0, 0.0, -0.5, -0.5, 0.75, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 0.25, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, 0.0, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -1.0, 1.0, 1.0, -0.5, -0.75, -0.25, 0.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.25, -0.5, -0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, -1.0, 0.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.5, 0.0, ]);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const command_buffer400 = command_encoder400.finish();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder3020.insertDebugMarker("marker");
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer401.destroy()
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer200.destroy()
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device00.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    render_bundle_encoder301.popDebugGroup();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder3040.executeBundles([])
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder3040.executeBundles([])
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    query303.destroy()
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const array8 = new Float32Array([-0.25, -0.5, -0.5, 0.5, 0.25, -1.0, 1.0, 0.0, -0.25, 0.25, 0.5, 0.25, -0.25, -0.25, 0.25, 0.25, 0.75, -1.0, 0.75, 0.75, 0.5, 0.75, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.5, 0.5, 1.0, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.75, -1.0, -0.25, 1.0, -0.75, -1.0, -1.0, -0.75, 0.5, -0.75, 0.5, -1.0, -0.75, 0.5, -0.75, -0.5, 0.25, -0.5, 0.75, 0.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.0, -1.0, -0.25, 1.0, -1.0, 1.0, 0.5, 0.25, -0.25, -0.25, -0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -1.0, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.25, -0.25, 0.0, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, -0.75, 1.0, -0.75, ]);
    const command_buffer003 = command_encoder003.finish();
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_pass_encoder3020.beginOcclusionQuery(0)
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    
    
    device10.pushErrorScope("out-of-memory");
    
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query302
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query302.destroy()
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    query300.destroy()
    query300.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer403.destroy()
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    query000.destroy()
    render_pass_encoder3051.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const query002 = device00.createQuerySet({
        label: "query002",
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
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3051.insertDebugMarker("marker");
    
    render_pass_encoder3021.executeBundles([])
    
    render_pass_encoder3021.setStencilReference(1);
    
    
    
    render_pass_encoder3050.setStencilReference(1);
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.executeBundles([])
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    render_pass_encoder3041.insertDebugMarker("marker");
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.popDebugGroup();
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query303
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_pass_encoder3060.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3020.executeBundles([render_bundle_encoder301, ])
    buffer402.destroy()
    render_pass_encoder3050.executeBundles([render_bundle_encoder301, ])
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer301.destroy()
    
    
    render_pass_encoder3060.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder3040.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder004.clearBuffer(buffer001);
    
    render_pass_encoder3010.beginOcclusionQuery(0)
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.pushErrorScope("validation");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder3060.setStencilReference(1);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3051.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query304.destroy()
    render_pass_encoder3021.executeBundles([])
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder3041.setStencilReference(1);
    command_encoder304.resolveQuerySet(
        query303,
        0,
        32,
        buffer303,
        0
    )
    query001.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3051.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_pass_encoder3041.beginOcclusionQuery(0)
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder3010.executeBundles([render_bundle_encoder300, ])
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query305.destroy()
    
    buffer302.destroy()
    
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_pass_encoder3051.setStencilReference(1);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder3051.insertDebugMarker("marker");
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3041,
            },
        ],
        occlusionQuerySet: query303
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder3011.setViewport(0, 0, texture304.width / 2, texture304.height / 2, 0, 1);
    device30.pushErrorScope("validation");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    buffer303.destroy()
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer002.destroy()
    query300.destroy()
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
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer403,
        0
    )
    query002.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    render_pass_encoder3051.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3020.executeBundles([])
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_buffer401 = command_encoder401.finish();
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder3051.endOcclusionQuery()
    render_pass_encoder3041.endOcclusionQuery()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}