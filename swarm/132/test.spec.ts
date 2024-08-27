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
    const array0 = new Float32Array([-1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -0.25, -0.5, 0.25, -0.75, -0.75, -0.5, 0.25, 0.75, 0.25, -0.75, -0.5, 0.75, 0.25, 0.5, 1.0, 1.0, -1.0, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.75, -0.75, 0.5, -0.25, -0.25, -1.0, 0.25, 0.5, 0.25, 0.5, -0.75, -0.5, -0.25, 0.25, 0.0, -1.0, 0.75, 1.0, -0.75, -0.5, -0.5, 0.0, -0.5, 0.75, 1.0, -0.75, 0.75, -1.0, 1.0, 0.0, 0.25, 0.5, -0.75, -0.25, -0.25, 0.5, 0.0, 0.0, -0.25, -1.0, 1.0, 0.0, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.5, ]);
    
    const array1 = new Float32Array([0.25, -1.0, -0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 0.25, -0.75, 1.0, -0.75, -0.25, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.75, 0.25, 0.0, 0.25, -1.0, 1.0, -0.25, -1.0, -1.0, 0.25, 0.25, -0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 1.0, 0.5, 0.0, 0.5, -1.0, 1.0, 0.0, 0.75, 1.0, 0.25, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, 0.75, -0.75, -0.25, 0.5, -1.0, 0.75, -0.75, 0.5, -0.75, -0.25, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.75, 1.0, 0.5, 0.25, -0.75, -0.5, -0.75, -0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -0.75, -0.25, 0.75, -0.25, 0.25, -0.5, ]);
    const array2 = new Float32Array([0.5, 0.5, -1.0, -0.25, 0.75, -0.25, -0.5, 0.25, 1.0, 1.0, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, 0.75, -0.5, -0.75, 0.75, 1.0, 0.25, 0.25, -0.25, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, -0.25, -0.25, 0.0, 0.25, -1.0, 0.75, -0.25, -0.5, 1.0, 0.5, -0.5, -1.0, 1.0, 1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.0, -1.0, 1.0, 0.75, 1.0, -0.25, 0.75, -0.75, 1.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.75, -0.5, 0.25, 0.5, -0.25, -0.75, -0.25, -0.25, 0.0, -1.0, -0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 0.25, 0.25, -0.25, -0.75, -0.5, -0.5, -1.0, 0.5, 0.75, -0.5, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    query000.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query000.destroy()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array3 = new Float32Array([-0.5, -1.0, -1.0, -0.5, -0.5, 0.5, -0.75, -0.75, 0.5, 0.25, 1.0, -0.5, 0.75, 0.25, 0.75, -1.0, -0.5, -1.0, -1.0, 0.25, -1.0, 1.0, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, 0.0, 0.25, -0.5, -0.75, 0.75, 0.75, 0.0, -0.25, 0.0, -0.75, -0.5, 0.5, 0.75, -1.0, -0.5, -0.25, -0.5, -0.25, 0.0, -0.25, 0.25, 1.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.25, 0.25, 1.0, 0.75, 0.0, 0.0, -0.5, 0.25, 0.25, 1.0, -0.5, -0.75, -1.0, 1.0, -0.75, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, 0.5, 0.25, -0.5, 0.75, 0.25, 0.75, -0.5, -1.0, -1.0, 1.0, -0.25, 0.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.0, -0.5, 0.5, 0.25, 0.5, -0.5, 0.5, -0.75, -0.25, 0.75, 0.5, 0.0, 0.5, -0.25, 0.75, -1.0, 0.25, 1.0, 1.0, 0.75, 0.25, -0.75, 0.0, 1.0, -0.75, 1.0, 0.0, -0.25, 0.0, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 0.75, -0.25, 0.25, -0.75, 0.0, 0.75, -0.75, 0.25, 0.0, -0.75, 1.0, -1.0, -0.75, 0.5, -0.75, 0.75, 0.25, 0.5, 0.75, 0.75, -1.0, -1.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.5, 0.0, 0.25, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, 0.25, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, 1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, -0.25, 0.25, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer200.destroy()
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture100.destroy();
    const array5 = new Float32Array([-0.5, 0.0, -0.75, 1.0, 0.25, 0.75, 1.0, -0.5, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.75, -0.25, 1.0, -0.5, 1.0, 1.0, -0.25, -0.5, 0.0, -0.5, 1.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.25, 1.0, 1.0, -1.0, 1.0, -0.75, 0.5, 1.0, 0.5, 1.0, 1.0, -1.0, 0.0, 0.25, 1.0, -0.5, -0.75, 1.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, -0.75, 0.0, 0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 1.0, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, 0.0, -0.75, -0.5, 0.75, 0.5, -0.5, -0.5, -1.0, 0.5, 1.0, 0.75, -0.75, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, -1.0, -1.0, -0.25, 0.25, 0.5, -0.25, -0.5, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer100.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.destroy();
    query200.destroy()
    device30.pushErrorScope("validation");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer201.destroy()
    
    texture000.destroy();
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    
    const array6 = new Float32Array([-0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -0.25, 1.0, 0.25, 0.5, 0.25, 0.25, 0.25, -0.25, -1.0, -0.25, 1.0, -1.0, -0.75, 0.5, -0.75, -0.25, 1.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 0.5, 0.5, 0.75, 0.75, -1.0, -1.0, 0.5, -1.0, 0.25, 0.5, -1.0, 0.0, -1.0, 1.0, 0.5, -0.5, 1.0, 0.25, -1.0, -0.75, 0.0, 0.75, 1.0, -0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, 0.0, -0.5, 0.0, -0.25, -0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query000.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("validation");
    command_encoder000.popDebugGroup()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    texture300.destroy();
    
    
    command_encoder300.popDebugGroup()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    command_encoder000.popDebugGroup()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device60.destroy();
    
    render_bundle_encoder000.popDebugGroup();
    
    
    device70.pushErrorScope("internal");
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder300.clearBuffer(buffer300);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
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
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer400.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    
    buffer000.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    query700.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query703 = device70.createQuerySet({
        label: "query703",
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    query704.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer403.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer500.destroy()
    render_bundle_encoder001.popDebugGroup();
    buffer001.destroy()
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    query701.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    
    
    query702.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    
    
    query701.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const array7 = new Float32Array([-0.5, 0.0, -0.75, 0.75, -1.0, -1.0, 0.5, -0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 1.0, 0.0, -0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -1.0, 0.75, -0.25, 1.0, -0.75, 0.0, 0.0, 0.0, -0.25, -0.25, 1.0, -0.5, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 0.0, 0.75, 1.0, -0.25, -0.25, 0.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.75, -0.5, -1.0, 1.0, 0.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.5, 1.0, -1.0, -0.25, 0.25, ]);
    
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    texture700.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    query704.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder300.clearBuffer(buffer300);
    
    
    render_bundle_encoder700.popDebugGroup();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query701.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer402.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    
    
    
    render_bundle_encoder001.popDebugGroup();
    texture400.destroy();
    buffer700.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_bundle_encoder400.popDebugGroup();
    device40.destroy();
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    buffer701.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer702.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query703.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture701.destroy();
    
    query001.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query701.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder301.popDebugGroup()
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query704.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    query704.destroy()
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    command_encoder301.clearBuffer(buffer303);
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    query703.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    device30.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    command_encoder301.clearBuffer(buffer300);
    
    render_bundle_encoder001.popDebugGroup();
    
    
    
    buffer303.destroy()
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    command_encoder302.clearBuffer(buffer300);
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder702.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.clearBuffer(buffer300);
    command_encoder700.resolveQuerySet(
        query703,
        0,
        32,
        buffer701,
        0
    )
    command_encoder301.clearBuffer(buffer300);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder702.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("internal");
    command_encoder002.pushDebugGroup("mygroupmarker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    buffer302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    query701.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer301.destroy()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module706.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    render_bundle_encoder702.popDebugGroup();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture301.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    buffer003.destroy()
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query000.destroy()
    
    query700.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    command_encoder302.clearBuffer(buffer300);
    
    query002.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query302.destroy()
    
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    buffer300.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    query302.destroy()
    query700.destroy()
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query001.destroy()
    query700.destroy()
    command_encoder701.resolveQuerySet(
        query702,
        0,
        32,
        buffer701,
        0
    )
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const array8 = new Float32Array([-0.5, 0.5, -0.25, 0.5, -1.0, 1.0, 0.75, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, -0.75, -0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.5, 1.0, 0.25, 0.75, -0.5, 0.25, -0.75, -0.25, -0.5, 0.0, 0.25, -0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 0.75, 0.0, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, -1.0, -0.5, 1.0, -0.75, 0.75, -1.0, 0.5, -0.5, 0.25, -1.0, 0.5, -0.25, 0.0, -1.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, 0.25, 1.0, 0.25, -0.5, -0.75, 0.25, -0.5, 0.5, 0.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 0.5, -1.0, -0.75, 0.75, 0.25, ]);
    render_pass_encoder7000.executeBundles([])
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query703
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder7010.setStencilReference(1);
    query703.destroy()
    
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder300.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
}