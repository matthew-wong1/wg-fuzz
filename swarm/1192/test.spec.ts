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
    const array0 = new Float32Array([0.5, 1.0, 1.0, 0.75, 1.0, -0.75, -0.25, -1.0, 0.0, 0.25, 0.0, 0.75, 1.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -0.5, 0.5, 1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, -0.75, 0.0, -0.25, 0.25, -1.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.5, 1.0, 0.5, -0.5, 0.25, -0.5, 1.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.25, -0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 1.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device00.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    device00.destroy();
    const array1 = new Float32Array([-0.25, 0.75, -1.0, -0.5, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, 0.75, -0.75, 1.0, 0.0, 0.5, 0.5, -0.25, 0.75, 1.0, 0.75, -0.75, 1.0, -1.0, -0.75, -1.0, -0.25, 0.0, 0.5, 1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, 0.25, -1.0, 0.0, 0.25, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, 0.25, -0.25, -0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 1.0, 0.25, -0.25, -0.75, 0.5, 1.0, 0.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, -1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 0.75, 1.0, 0.25, 0.0, -0.75, 0.25, -0.5, -0.25, -0.25, 0.0, 0.5, -0.25, 0.25, -0.25, 1.0, -0.75, -0.5, -0.25, -0.25, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.submit([]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query400.destroy()
    const command_buffer401 = command_encoder401.finish();
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_buffer400 = command_encoder400.finish();
    
    buffer200.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder402.popDebugGroup()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const array2 = new Float32Array([0.25, 1.0, -0.25, 1.0, -0.75, 0.5, 0.5, 0.0, 0.75, -0.75, -1.0, 0.25, -0.75, -1.0, -0.5, -0.75, 1.0, 1.0, 0.0, 0.25, 0.5, 0.5, -0.5, 0.25, 0.5, -1.0, 0.25, -1.0, -0.75, 1.0, 1.0, -1.0, -1.0, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -1.0, 1.0, -0.25, 1.0, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, -0.25, 0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -0.75, 0.5, -0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -0.5, 0.5, -0.75, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 0.25, -0.25, -1.0, 1.0, -0.5, 0.0, 0.0, 0.75, -0.5, 0.5, -0.5, -1.0, 0.75, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array3 = new Float32Array([0.5, 1.0, 0.25, -0.5, 1.0, 0.25, 0.25, -0.5, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -0.75, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, 1.0, 0.0, -1.0, 0.0, -0.75, 0.75, 0.25, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, -1.0, 0.5, 0.0, -0.75, 0.0, 0.5, -0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, -0.5, -1.0, 0.5, 0.75, 0.5, -0.75, 0.0, 0.25, 0.0, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, -0.75, ]);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
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
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const array4 = new Float32Array([0.0, 0.25, 0.75, 0.25, 0.25, -0.75, -0.25, -0.5, -1.0, 1.0, -0.5, -0.25, 0.0, -1.0, 0.5, -1.0, 0.5, -0.5, 0.5, 0.0, -0.75, -0.5, -0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.75, 1.0, 0.5, 0.75, -1.0, 0.5, 0.5, 1.0, -1.0, 0.75, 0.0, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, -1.0, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.0, 1.0, -1.0, 0.5, 0.5, -0.5, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.0, -1.0, -0.5, -0.25, 0.25, -0.25, 0.0, -0.25, 0.75, -0.75, 1.0, 0.5, 0.25, -1.0, -0.75, -0.25, -1.0, 0.5, 0.75, 0.75, 0.0, -0.25, 0.25, ]);
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query401.destroy()
    buffer203.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
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
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query401.destroy()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
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
    buffer202.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_pass_encoder4020.insertDebugMarker("marker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer402 = command_encoder402.finish();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
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
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const command_buffer201 = command_encoder201.finish();
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer201.destroy()
    render_pass_encoder2030.setStencilReference(1);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    const array5 = new Float32Array([0.5, -0.75, -0.25, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, -0.25, 0.0, -0.75, -0.75, -0.25, 0.0, 0.75, -0.75, -0.25, -0.25, 1.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.25, 0.75, 1.0, 1.0, 0.0, -1.0, 1.0, -0.5, -0.25, -0.25, 1.0, -0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.25, 0.0, -0.25, -0.5, -0.5, 0.25, 0.25, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, 0.75, -0.25, -0.25, -0.75, 0.75, 0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 0.75, 0.0, 0.5, 0.5, 0.25, -1.0, 0.0, -0.5, 0.0, -0.75, 0.25, 0.25, 0.25, 0.0, 0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, -0.5, -0.75, ]);
    
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    query401.destroy()
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.25, 0.25, -0.5, 1.0, -0.25, 0.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -0.25, -1.0, 0.25, -0.5, 0.75, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, 0.25, 0.25, -1.0, -0.75, 1.0, 0.25, 0.5, 1.0, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, -0.25, 0.0, 1.0, 0.0, 0.25, -1.0, -1.0, -1.0, -1.0, -0.75, 0.75, 0.25, -0.5, 0.0, 0.75, 0.0, 0.5, 1.0, -0.5, -0.5, -1.0, 1.0, 1.0, -1.0, -1.0, 1.0, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 0.75, 0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 0.0, 0.0, 1.0, 0.5, -0.25, -1.0, 0.75, -0.25, 1.0, 0.5, -0.75, -0.5, ]);
    
    query402.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.destroy();
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
    device10.destroy();
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    command_encoder204.copyBufferToTexture(
        {
            buffer: buffer204
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder4021.setStencilReference(1);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    query400.destroy()
    
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder4021.setStencilReference(1);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setStencilReference(1);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query200
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2021.setStencilReference(1);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const array7 = new Float32Array([0.0, 0.5, 0.75, -0.25, 1.0, -1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.5, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, 0.0, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, 0.5, -0.5, -1.0, 1.0, -0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, 1.0, -1.0, 0.75, 1.0, 0.25, -0.25, 0.75, -0.5, 1.0, 0.25, -1.0, 0.25, 0.5, 0.5, 0.25, 0.25, -0.75, 1.0, -0.25, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, -1.0, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, -0.5, -0.5, -0.75, 0.5, 0.75, 0.75, 0.25, 0.0, 1.0, -1.0, 1.0, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 0.0, 0.75, -0.5, 1.0, 0.0, 0.5, -0.25, ]);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_pass_encoder4021.insertDebugMarker("marker");
    
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer204,
        0,
        400
    );
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2040.setStencilReference(1);
    
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    buffer401.destroy()
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    
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
    
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query401.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query401
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    const texture_view4041 = texture404.createView({ label: "texture_view4041" });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2041.pushDebugGroup("group_marker");
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    device20.queue.submit([command_buffer200, ]);
    
    render_pass_encoder2040.setStencilReference(1);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2021.setStencilReference(1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    render_pass_encoder2041.setStencilReference(1);
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    const command_buffer300 = command_encoder300.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4041,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout402]
    });
    query200.destroy()
    query201.destroy()
    render_pass_encoder2050.pushDebugGroup("group_marker");
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    
    render_pass_encoder2031.endOcclusionQuery()
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    const command_buffer405 = command_encoder405.finish();
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder4030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    render_pass_encoder4040.insertDebugMarker("marker");
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2041.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
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
    
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder4031.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2031.pushDebugGroup("group_marker");
    query201.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2041.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    render_pass_encoder4040.pushDebugGroup("group_marker");
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    
    render_pass_encoder2031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2032 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query203
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
        occlusionQuerySet: undefined
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    render_pass_encoder2060.setStencilReference(1);
    query203.destroy()
    
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder4031.setScissorRect(0, 0, texture404.width / 2, texture404.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query203.destroy()
    render_pass_encoder2051.setStencilReference(1);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_pass_encoder2050.insertDebugMarker("marker");
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4021.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    
    query202.destroy()
    buffer206.destroy()
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_pass_encoder2032.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2041.insertDebugMarker("marker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder4041.endOcclusionQuery()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const render_pass_encoder2042 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query200
    });
    buffer204.destroy()
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2041.setStencilReference(1);
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    render_pass_encoder2051.insertDebugMarker("marker");
    device40.queue.submit([command_buffer401, ]);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer402, command_buffer405, ]);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder4041.endOcclusionQuery()
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2031.endOcclusionQuery()
    render_pass_encoder2051.endOcclusionQuery()
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer206 = command_encoder206.finish();
}