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
    const array0 = new Float32Array([-0.75, 1.0, 1.0, -0.75, 0.75, 0.5, -0.5, 0.0, -0.25, -0.75, -0.75, -0.5, 0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.0, 0.75, 0.5, 0.5, -0.75, -0.5, 0.5, 0.0, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.5, -0.75, -0.5, 1.0, -0.5, 0.0, -0.75, -0.5, 0.0, 0.25, 0.5, -0.5, 1.0, 0.0, 0.5, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, 0.0, -1.0, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, 1.0, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, 1.0, 0.75, -0.5, 0.25, -0.25, 0.5, -0.25, 0.75, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, -1.0, 0.25, 0.75, -0.75, 0.25, 0.75, -0.5, 1.0, ]);
    const array1 = new Float32Array([-1.0, -0.5, 0.0, 0.5, 1.0, 0.25, 0.0, 0.0, -0.75, 0.0, -0.5, 1.0, 0.25, 0.75, -0.25, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, 0.5, -0.25, 1.0, -0.5, -0.5, 1.0, 0.5, -0.5, 0.0, 0.5, -0.5, -0.75, -0.5, -0.5, -1.0, -0.75, -0.5, 0.25, -1.0, 0.25, 0.5, -0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.25, -0.5, 0.0, 0.0, 0.25, 0.25, -1.0, -0.5, 0.5, -0.25, -0.25, 0.25, 0.0, 0.5, 0.25, -1.0, 0.25, 0.0, 0.25, 1.0, -0.75, 0.25, 0.0, 0.75, -0.25, -0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 0.5, 0.25, -0.25, 0.75, 0.5, 1.0, 0.25, 0.5, 0.25, -0.75, ]);
    
    
    const array2 = new Float32Array([0.25, 0.75, 0.25, 0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 0.75, 0.5, 0.75, -0.25, 0.0, 0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.25, -0.5, 1.0, -1.0, 0.5, 0.75, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 0.5, 0.5, 1.0, -0.75, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, -1.0, 0.0, 0.5, -1.0, 0.0, -1.0, 0.0, 0.25, 0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 0.75, 0.75, 0.0, -0.25, 0.25, -0.75, -0.5, 0.75, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.75, 0.25, 0.25, 0.75, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.75, -0.25, -0.25, 1.0, -0.75, 0.0, 0.75, 0.25, -0.25, ]);
    
    
    
    
    
    const array3 = new Float32Array([-1.0, 1.0, 0.25, 0.25, -0.25, 0.75, 1.0, -0.75, 0.5, 0.75, -0.75, -0.5, 0.75, -1.0, 1.0, 0.5, 0.25, 0.5, -1.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.5, -0.25, -0.5, 0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, -0.5, 0.75, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, 1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.25, -0.25, -1.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, 0.5, 1.0, -0.5, 1.0, -0.5, -0.75, -0.25, 1.0, 1.0, 0.5, 0.75, 1.0, -0.25, 0.25, 0.5, 0.75, -0.5, 0.75, 0.5, 0.0, -0.75, 0.25, 0.25, 0.75, -0.5, ]);
    
    
    const array4 = new Float32Array([-0.5, 0.25, 1.0, 0.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, -0.5, -0.25, 1.0, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, 0.75, 0.25, 0.75, -0.75, -0.5, -1.0, -1.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.75, 0.75, 0.0, 0.25, 0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -0.75, -0.25, -0.25, 0.5, 0.5, 0.5, -0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 1.0, -0.5, -0.5, 0.5, 0.5, 0.75, -0.25, 1.0, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, 0.5, 0.0, -0.75, ]);
    const array5 = new Float32Array([1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.25, 0.5, 1.0, -0.75, -0.5, -0.25, 0.5, -0.5, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, 0.5, 1.0, 0.75, 1.0, 1.0, -0.75, -0.25, -1.0, -1.0, 0.75, 0.0, 0.5, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, 1.0, -1.0, 0.75, 0.25, 0.5, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, 1.0, -0.5, 0.25, 0.5, -0.25, -1.0, -0.25, 0.75, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, 0.5, 0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, -0.5, 0.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.75, -0.75, 0.25, 0.75, 1.0, -1.0, -0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array6 = new Float32Array([0.5, 0.5, -1.0, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, -0.5, 0.75, -0.75, -0.75, 0.75, -0.25, -1.0, 0.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, 0.0, -1.0, 0.5, 0.0, -0.25, 1.0, 0.75, 0.5, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.75, 0.75, 0.5, 0.5, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, 0.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.0, -0.25, -1.0, 1.0, 0.0, -1.0, -0.75, -0.5, -1.0, 0.25, 1.0, 0.25, 0.0, -0.75, 0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.75, -1.0, -1.0, 0.75, 0.5, 0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    
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
    const array7 = new Float32Array([0.5, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 1.0, -0.75, 0.5, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.75, -1.0, -1.0, -1.0, 0.25, 1.0, 0.75, 0.25, -1.0, 1.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.5, 0.0, 0.75, 0.25, -1.0, 0.5, -0.75, -0.25, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, 0.75, -0.5, 0.5, 0.75, 1.0, 0.75, 0.75, 0.75, 0.0, -0.25, 0.75, -0.25, 0.5, -0.5, -0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 0.0, -0.5, -1.0, -0.75, 1.0, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.25, -0.75, 0.5, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const array8 = new Float32Array([-0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.25, -0.5, -1.0, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, 0.75, 1.0, -1.0, 0.75, 0.5, -1.0, 1.0, -0.25, -0.5, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 0.0, -0.75, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.25, 0.0, -1.0, 1.0, -0.5, -0.5, 0.5, 0.75, -1.0, 0.0, 0.5, -1.0, -0.5, -0.5, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.75, -0.25, 1.0, 0.5, 1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.25, 0.75, -1.0, 0.5, -0.75, 0.0, 0.0, 1.0, -1.0, 0.75, -1.0, 0.0, 1.0, -0.75, 0.0, 0.25, 1.0, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, 0.0, -0.25, 0.25, 1.0, 0.25, -0.25, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array9 = new Float32Array([0.0, 0.75, 1.0, 0.5, -0.75, -0.75, -1.0, 0.5, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, -0.5, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, -0.75, -1.0, 0.5, 1.0, -1.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.25, -0.25, 0.25, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, 0.5, -0.75, 1.0, 0.75, -0.75, -0.25, -0.75, 0.25, 0.75, -0.75, -1.0, 0.25, -0.5, 1.0, -0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 0.5, 1.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 0.75, -0.25, 0.75, -1.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.75, 1.0, ]);
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.popDebugGroup();
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query200.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture201.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query201 = device20.createQuerySet({
        label: "query201",
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
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([-0.5, -0.75, 1.0, 0.5, 1.0, 0.0, -1.0, -0.5, 0.5, 0.75, -0.75, 0.25, 1.0, 1.0, 0.25, -1.0, 1.0, -0.25, 0.0, 0.5, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, 0.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -0.75, 0.0, -0.75, 0.5, -0.75, 0.0, -1.0, -1.0, -1.0, 0.5, 0.5, -0.25, -0.25, -0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.5, 1.0, 1.0, 0.25, 1.0, -0.25, 0.75, -1.0, -0.5, -0.75, -0.75, 1.0, -1.0, 0.5, -0.25, -0.5, -0.5, 0.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, -0.75, ]);
    const array11 = new Float32Array([0.5, 0.75, 1.0, -1.0, -1.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.25, 0.0, 0.25, -0.75, -0.75, -0.5, 0.75, 0.0, 0.75, 0.25, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, -0.25, -0.25, -0.5, 0.5, -0.5, -0.5, 1.0, -0.25, 0.5, 0.0, -0.25, 1.0, 0.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.75, 0.25, -0.25, -0.75, -1.0, 0.5, 0.25, -0.5, -0.5, 0.0, -0.75, 0.5, 1.0, 0.5, -0.75, 0.25, -0.5, 1.0, 1.0, 0.75, -1.0, -0.75, 1.0, 0.0, 0.5, -0.5, -1.0, 0.75, 0.25, 0.75, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 0.75, 0.5, 1.0, 0.5, 0.25, 0.25, 0.75, -0.25, 1.0, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device40.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
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
        occlusionQuerySet: query201
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    texture302.destroy();
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device30.destroy();
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    query202.destroy()
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder200.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query202.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    query200.destroy()
    buffer200.destroy()
    
    query202.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    buffer201.destroy()
    texture200.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture202.destroy();
    query200.destroy()
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    render_pass_encoder2000.endOcclusionQuery()
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    buffer202.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2000.setStencilReference(1);
    query202.destroy()
    texture204.destroy();
    buffer205.destroy()
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setStencilReference(1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    texture202.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    query200.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.popDebugGroup();
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture205.destroy();
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer204.destroy()
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder2000.setStencilReference(1);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    render_bundle_encoder202.popDebugGroup();
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder2000.setVertexBuffer(0, buffer201);
    buffer205.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    const array12 = new Float32Array([0.5, -0.25, 1.0, -0.75, 0.5, -0.5, 0.0, 0.5, 1.0, -0.5, -0.25, 0.75, -1.0, 1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 0.0, -0.25, -0.25, -1.0, -0.25, 1.0, 0.0, 0.5, -1.0, 0.25, 0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.25, 0.25, -0.25, -0.75, 1.0, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.5, 0.75, 0.75, 0.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.5, -0.75, -0.25, 0.0, -0.25, -1.0, 0.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.25, -0.75, -0.5, 0.75, 1.0, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, -0.25, -0.5, 0.75, 1.0, 0.75, -0.25, ]);
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer202.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.pushErrorScope("validation");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
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
    render_pass_encoder2000.endOcclusionQuery()
    render_bundle_encoder202.popDebugGroup();
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    device10.queue.writeTexture({ texture: texture101 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
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
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    render_bundle_encoder502.popDebugGroup();
    
    render_pass_encoder2001.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
    device20.queue.writeTexture({ texture: texture205 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.setPipeline(render_pipeline202);
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device20.queue.writeBuffer(buffer208, 0, array10, 0, array10.length);
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer204);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query202.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query202.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    buffer206.destroy()
    buffer201.destroy()
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    render_bundle_encoder201.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer208, 0, array10, 0, array10.length);
    render_bundle_encoder202.setIndexBuffer(buffer203, "uint16");
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder2000.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer208, 0, array10, 0, array10.length);
    render_bundle_encoder200.setVertexBuffer(0, buffer2011);
    
    buffer208.destroy()
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device20.queue.writeBuffer(buffer2010, 0, array7, 0, array7.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.setIndexBuffer(buffer209, "uint16");
    
    device20.queue.writeBuffer(buffer2013, 0, array7, 0, array7.length);
    render_bundle_encoder200.draw(3);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.popDebugGroup();
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query202.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer2013.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    device20.queue.writeBuffer(buffer2012, 0, array10, 0, array10.length);
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    texture301.destroy();
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.setPipeline(compute_pipeline2024);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_bundle_encoder202.setIndexBuffer(buffer202, "uint16");
    device20.queue.writeBuffer(buffer209, 0, array12, 0, array12.length);
    render_pass_encoder2000.endOcclusionQuery()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.drawIndexedIndirect(buffer200, 0);
    device20.queue.writeBuffer(buffer2012, 0, array10, 0, array10.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder203.setPipeline(render_pipeline201);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device50.queue.writeTexture({ texture: texture500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    query500.destroy()
    buffer203.destroy()
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline2024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    query300.destroy()
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    device20.queue.writeBuffer(buffer2015, 0, array7, 0, array7.length);
    device20.queue.writeTexture({ texture: texture205 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_pass_encoder2001.endOcclusionQuery()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2017, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2018, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
    device20.popErrorScope().then((error) => {
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
    device20.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline2024.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
}