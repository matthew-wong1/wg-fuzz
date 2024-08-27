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
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array0 = new Float32Array([0.75, 0.5, -0.75, 0.5, 1.0, 0.75, 0.5, 0.0, 1.0, 0.0, -0.75, 0.0, -0.75, -0.25, 0.25, -0.75, -0.25, -0.75, -0.75, 0.5, -0.25, -0.75, 0.25, -1.0, -0.25, 1.0, 0.25, -0.75, -1.0, -0.5, -0.5, -0.75, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 1.0, 0.25, -0.75, -0.5, 0.75, 1.0, -1.0, -0.75, 0.75, -0.25, 0.25, -0.25, 0.0, 0.25, 1.0, 0.25, -0.75, -1.0, -0.75, -1.0, 0.75, -0.5, -1.0, 0.75, -1.0, 0.75, -1.0, 0.25, -1.0, 1.0, -0.5, 0.75, -0.5, -0.5, -0.25, -0.75, 0.0, -1.0, -0.75, -0.75, -1.0, -0.5, 0.75, -0.25, -0.5, -0.5, -1.0, 0.25, -0.25, -1.0, 0.75, 0.0, 0.5, 1.0, ]);
    device10.destroy();
    
    
    const array1 = new Float32Array([0.5, -0.5, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, 0.25, -1.0, -0.25, -0.75, -0.75, 0.0, 0.0, 1.0, -0.5, -1.0, -0.25, 0.25, -0.75, 1.0, -0.5, 1.0, -1.0, 0.75, 0.0, 0.5, -0.5, 0.0, 0.75, 1.0, 0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.0, 0.5, 1.0, 0.25, -0.25, -1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -1.0, 0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 0.75, 0.5, 0.5, -0.75, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.25, 0.75, 0.25, -1.0, -0.75, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, -0.5, 0.5, 0.75, -0.5, -0.25, -0.75, 0.5, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, -0.75, 1.0, 1.0, 0.25, 0.5, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, -0.5, 1.0, 0.0, -0.5, -0.75, 0.75, -0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 0.0, 1.0, -0.5, 0.25, -0.25, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.5, 0.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 0.0, 1.0, 0.5, 0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 1.0, -0.25, -0.5, 0.5, -0.75, 0.75, 0.75, -0.75, 0.5, -0.5, -0.25, -1.0, 1.0, 1.0, 0.75, -0.75, 0.5, -0.25, -0.75, 0.75, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 1.0, 0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
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
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const command_buffer601 = command_encoder601.finish();
    texture001.destroy();
    device60.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device40.destroy();
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const array3 = new Float32Array([-0.75, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.5, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, 0.0, -1.0, -1.0, -0.75, 0.25, 0.0, -0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 1.0, 0.0, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.75, -0.75, 0.25, -0.75, -1.0, 0.5, 0.75, 0.25, 0.75, -0.75, -0.25, -0.5, -0.25, 1.0, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.25, -0.25, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, 0.0, -0.75, 0.5, -1.0, 1.0, 0.5, 0.75, -0.5, ]);
    device60.pushErrorScope("internal");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer600.destroy()
    query000.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer001 = command_encoder001.finish();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    
    
    
    query600.destroy()
    query000.destroy()
    const command_buffer002 = command_encoder002.finish();
    device00.pushErrorScope("validation");
    query601.destroy()
    texture601.destroy();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer000.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pass_encoder6001 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6001" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    const command_buffer000 = command_encoder000.finish();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array4 = new Float32Array([0.0, -0.25, -1.0, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, -0.5, 0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.75, -1.0, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.25, -1.0, 0.75, -0.75, -0.5, 1.0, 0.0, -0.25, -0.25, 1.0, 0.0, 1.0, -1.0, 1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 0.0, 0.25, -0.75, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 0.25, 0.5, 1.0, 0.0, -0.5, 0.75, -1.0, 1.0, 0.0, -1.0, -0.5, -0.25, -0.5, 0.75, -0.75, 0.75, 0.0, -0.25, 0.0, -0.5, -0.5, 1.0, -1.0, -1.0, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const array5 = new Float32Array([-1.0, 0.25, -1.0, -0.5, -0.75, -0.25, 0.25, -0.5, 0.75, 0.0, -1.0, 0.0, -0.25, 1.0, -1.0, 0.25, 1.0, 0.5, -1.0, 0.5, 0.0, -0.75, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 0.25, -0.25, 0.0, 1.0, -1.0, -0.25, 0.75, -0.25, 0.5, -0.75, 0.5, 1.0, 0.5, -1.0, -1.0, -0.75, 0.5, 0.0, 0.25, -1.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 0.5, -0.25, -0.75, 0.75, 0.0, 0.75, 0.75, -1.0, 1.0, -0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 1.0, 0.5, 0.25, -1.0, -0.25, -1.0, -0.75, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array6 = new Float32Array([0.75, 0.5, 0.5, 1.0, -0.75, -0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, 0.5, -0.5, 0.25, 0.25, 0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.75, 0.5, 0.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.0, 0.0, -1.0, -1.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.5, 0.5, -0.75, 0.75, 0.0, 0.75, -0.25, 0.5, 0.0, -0.75, 1.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.75, -1.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, -1.0, 0.5, 0.75, 0.75, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.5, 1.0, -0.25, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, -0.75, 0.0, -1.0, 0.75, 0.5, 0.0, ]);
    query800.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device60.queue.submit([command_buffer601, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    buffer002.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture002.destroy();
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    texture003.destroy();
    texture000.destroy();
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    command_encoder800.resolveQuerySet(
        query800,
        0,
        32,
        buffer802,
        0
    )
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    texture004.destroy();
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder800.insertDebugMarker("marker");
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
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder8000.popDebugGroup()
    
    buffer000.destroy()
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
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
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    texture006.destroy();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query600
    });
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    command_encoder801.resolveQuerySet(
        query801,
        0,
        32,
        buffer802,
        0
    )
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    query601.destroy()
    
    command_encoder801.pushDebugGroup("mygroupmarker")
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6020.setStencilReference(1);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    const command_buffer600 = command_encoder600.finish();
    texture005.destroy();
    command_encoder801.resolveQuerySet(
        query800,
        0,
        32,
        buffer802,
        0
    )
    command_encoder801.resolveQuerySet(
        query800,
        0,
        32,
        buffer802,
        0
    )
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device80.queue.writeBuffer(buffer801, 0, array5, 0, array5.length);
    command_encoder801.clearBuffer(buffer800);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device60.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    query200.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.pushDebugGroup("group_marker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    query000.destroy()
    compute_pass_encoder6000.popDebugGroup()
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device80.queue.writeBuffer(buffer803, 0, array5, 0, array5.length);
    render_pass_encoder6020.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    command_encoder801.resolveQuerySet(
        query801,
        0,
        32,
        buffer802,
        0
    )
    command_encoder802.pushDebugGroup("mygroupmarker")
    buffer801.destroy()
    render_pass_encoder6020.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder6020.beginOcclusionQuery(0)
    device80.queue.writeBuffer(buffer803, 0, array5, 0, array5.length);
    
    
    buffer001.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    command_encoder802.clearBuffer(buffer800);
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer601.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    command_encoder300.insertDebugMarker("mymarker");
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
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    device80.queue.writeBuffer(buffer803, 0, array1, 0, array1.length);
    render_pass_encoder6020.executeBundles([])
    query800.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer602.destroy()
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder6020.endOcclusionQuery()
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device80.queue.writeBuffer(buffer803, 0, array5, 0, array5.length);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer803, 0, array1, 0, array1.length);
    buffer803.destroy()
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
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    texture501.destroy();
    device60.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
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
    buffer801.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    texture500.destroy();
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    query000.destroy()
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    command_encoder500.popDebugGroup()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    buffer003.destroy()
    query801.destroy()
    query300.destroy()
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device30.queue.submit([]);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder800.popDebugGroup();
    
    device80.queue.submit([]);
    const array7 = new Float32Array([1.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.25, 0.75, -0.25, 0.75, -0.75, -0.75, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, 0.25, -0.25, -0.75, 1.0, 1.0, 1.0, 0.75, 0.25, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, -0.75, -0.5, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, -0.5, 0.5, 1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 1.0, -1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 1.0, 0.75, 0.75, -0.5, 0.5, -0.25, -1.0, 0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, -0.75, 1.0, -0.25, -0.5, -1.0, -1.0, 0.25, ]);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    buffer802.destroy()
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    query600.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    const array8 = new Float32Array([-0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 0.0, 0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, -1.0, 0.25, 1.0, -0.75, 0.0, 0.75, 0.75, -0.75, -0.5, 0.5, -1.0, -1.0, -1.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.5, -1.0, 0.5, -0.75, 0.5, 0.0, 1.0, 0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -1.0, -1.0, 1.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.75, 1.0, -0.25, -0.25, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.25, -0.25, -1.0, 0.25, -0.75, 0.25, -1.0, 0.0, 0.5, 0.25, 0.25, 0.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -0.25, ]);
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device80.queue.writeBuffer(buffer803, 0, array7, 0, array7.length);
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query801.destroy()
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
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
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder6020.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.popDebugGroup()
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder6020.executeBundles([])
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query800.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    query601.destroy()
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device90.destroy();
    buffer500.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_pass_encoder6020.popDebugGroup();
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
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.insertDebugMarker("mymarker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    device10.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    render_bundle_encoder501.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6020.beginOcclusionQuery(1)
    const command_buffer800 = command_encoder800.finish();
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout603]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("out-of-memory");
    device80.queue.writeBuffer(buffer803, 0, array8, 0, array8.length);
    device60.pushErrorScope("internal");
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    query604.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder800.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    device60.pushErrorScope("internal");
    render_pass_encoder0040.executeBundles([])
    query801.destroy()
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.setStencilReference(1);
    query801.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder004.clearBuffer(buffer002);
    
    device50.pushErrorScope("out-of-memory");
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    buffer800.destroy()
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query602.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture007.destroy();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder6000.setPipeline(compute_pipeline602);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6001.setPipeline(compute_pipeline600);
    render_pass_encoder6020.endOcclusionQuery()
    command_encoder802.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device50.queue.submit([command_buffer500, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([]);
    render_pass_encoder6020.popDebugGroup();
    compute_pass_encoder8000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder6020.popDebugGroup();
    const command_buffer602 = command_encoder602.finish();
    device50.queue.submit([command_buffer500, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder6020.endOcclusionQuery()
    render_pass_encoder0041.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder6000.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device60.queue.submit([command_buffer602, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    const command_buffer400 = command_encoder400.finish();
    command_encoder801.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder6020.endOcclusionQuery()
}