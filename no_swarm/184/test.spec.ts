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
    const array0 = new Float32Array([-0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 1.0, 1.0, 0.25, -0.75, -0.5, 0.5, 0.75, 0.5, 0.0, 0.0, 1.0, -0.75, 1.0, -0.25, -0.5, 0.5, 0.25, -0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, 0.25, 0.75, 1.0, 0.75, 0.25, 0.75, 1.0, 0.0, 1.0, 0.75, -0.75, -0.5, -0.75, -0.25, 1.0, 0.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 0.75, -0.25, 1.0, -0.25, 0.25, 1.0, -1.0, -0.25, -0.5, -0.25, 0.0, -0.75, 0.5, -0.25, 0.5, 0.75, 0.0, 0.0, 1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 1.0, 0.0, -0.75, -0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, -0.25, 1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.destroy();
    texture000.destroy();
    
    
    
    buffer000.destroy()
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.pushErrorScope("validation");
    const array1 = new Float32Array([0.0, 1.0, 0.0, -1.0, 0.0, 0.75, 0.75, -0.75, 0.25, 0.25, 0.0, -0.5, 0.5, 0.5, -0.75, -0.25, -0.25, 0.0, 0.0, 0.75, 0.75, 0.0, 0.75, -1.0, 0.75, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, 0.0, 1.0, -0.5, 0.75, 0.75, -0.25, -1.0, 1.0, 1.0, 1.0, -0.25, 0.5, 0.75, 0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -0.25, 1.0, 0.0, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -0.5, -1.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.0, -0.75, -1.0, 0.25, 0.25, 0.75, -0.25, -1.0, -0.75, -0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, -0.25, 0.5, -0.75, 0.0, 0.25, 0.0, -0.5, 0.5, 1.0, 1.0, -0.75, 0.25, 1.0, -0.75, ]);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    const array2 = new Float32Array([-0.75, -0.5, -0.5, -0.5, 0.0, 0.25, -1.0, 0.0, -1.0, 1.0, -0.75, -0.5, -1.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.75, 0.25, -1.0, 0.0, -0.5, 0.0, 0.75, -0.5, 1.0, -0.25, -0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -0.5, -0.75, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 0.25, 0.25, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, 0.75, 0.5, 0.5, 0.25, 0.0, -0.75, 0.0, -0.75, -0.75, -0.25, 0.0, -1.0, 1.0, -1.0, 0.25, -1.0, 1.0, -0.25, 1.0, 1.0, 1.0, -1.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, -0.5, 0.75, 1.0, -0.75, -0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, 1.0, -0.25, ]);
    
    const array3 = new Float32Array([1.0, -1.0, 0.75, -0.75, -0.5, 0.75, -1.0, 0.25, 0.25, 1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, 0.75, 0.0, -1.0, 0.0, -0.75, -0.25, 0.75, -0.75, 0.0, -0.5, -0.5, -0.75, 1.0, 0.0, 0.5, -0.75, 0.75, -0.75, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 0.25, 0.5, 0.75, 0.5, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, 0.0, 1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, -0.5, 0.25, 0.5, -0.75, 0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.75, -0.5, 0.75, 0.5, 0.25, 0.0, -0.75, -0.25, 0.0, -0.5, 0.25, 1.0, -0.75, ]);
    
    
    
    
    const array4 = new Float32Array([1.0, 0.25, -0.25, 0.5, -0.75, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.75, 0.5, 0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 1.0, 0.75, 0.0, -0.75, -0.75, -1.0, 1.0, -0.5, -1.0, 0.5, 1.0, -0.5, -0.5, 0.25, 0.25, 0.0, -0.5, 0.5, 0.75, -1.0, -0.5, -1.0, 0.0, -1.0, 0.5, 0.5, 0.75, -0.5, 0.25, 1.0, 0.0, 0.25, -1.0, 1.0, -0.25, -0.25, -1.0, 0.5, 0.25, 0.25, -0.75, 0.5, 0.75, -0.75, 1.0, -1.0, 0.75, 0.0, 0.0, 0.25, -0.5, 1.0, 1.0, 0.75, 0.25, -0.75, 0.75, -0.75, 1.0, -0.75, 0.25, -0.5, -0.5, 0.75, -0.25, 0.0, -0.75, 0.0, 0.25, 1.0, 0.75, -1.0, 0.5, -1.0, 0.0, 1.0, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array5 = new Float32Array([1.0, 0.75, -1.0, 0.5, 0.75, 0.75, 0.25, 0.75, -0.25, -0.25, -0.75, -0.75, -0.25, -0.5, 0.0, -0.5, 1.0, 1.0, 0.25, 0.0, 0.5, 1.0, 1.0, 0.75, 0.75, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.5, 0.5, -0.25, 0.5, -0.5, 1.0, 0.75, -0.25, 0.5, 0.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, -0.25, 1.0, 0.0, 0.0, 1.0, 0.5, -1.0, -0.5, 1.0, -0.5, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 0.0, 0.25, 1.0, 0.25, 0.0, -0.25, -0.25, 1.0, 0.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.75, 0.25, 0.75, -0.25, 0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 0.5, 0.75, -0.75, -0.5, 0.25, 0.0, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array6 = new Float32Array([0.75, -1.0, -0.25, -1.0, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 1.0, -0.75, 0.25, -0.75, 0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 1.0, -1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -0.25, 0.0, 1.0, -0.75, -1.0, -0.25, -0.5, 1.0, 0.75, -0.75, -0.75, 1.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.25, -0.75, -0.75, 1.0, 1.0, -1.0, -1.0, -0.5, -0.75, 1.0, 1.0, -0.5, 0.75, 0.5, 0.5, 1.0, -0.25, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.5, 0.25, 0.0, -1.0, 0.0, 0.5, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, -1.0, -0.25, -1.0, -0.25, -1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 1.0, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.75, 1.0, -0.75, 0.5, 0.25, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, 0.25, 0.5, -1.0, -0.25, 0.5, -0.25, 0.75, -0.5, 0.25, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, -0.75, -0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.75, -0.5, 0.0, -0.75, -0.25, 0.0, -0.75, -0.5, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, -0.25, -0.75, -0.5, -0.75, 0.0, -1.0, 0.5, 0.0, -0.75, -1.0, 1.0, 0.5, 0.0, 0.5, 0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, -0.25, 0.5, -0.5, 1.0, 0.5, 0.25, -0.5, 1.0, 0.75, 0.0, 0.0, 1.0, 0.0, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    texture401.destroy();
    
    const query401 = device40.createQuerySet({
        label: "query401",
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
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    device30.destroy();
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.destroy();
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.destroy();
    
    const array8 = new Float32Array([0.75, 1.0, -0.75, -1.0, -1.0, 0.25, 0.5, 0.0, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, 0.5, -0.25, 0.25, -0.75, 0.75, 0.0, -0.5, 1.0, 0.25, 0.5, 0.25, 0.5, -0.75, -0.5, -0.5, -0.5, 0.75, -1.0, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 0.5, 0.75, -1.0, -0.5, -0.25, -0.75, 0.5, -0.75, 1.0, 1.0, -1.0, 0.0, -1.0, -1.0, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, 1.0, -0.75, 0.25, -0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, -1.0, -0.75, 0.5, 0.75, 0.5, 0.0, -0.75, 0.25, -0.75, 0.5, 0.75, 0.75, -1.0, 0.25, -1.0, 0.5, 1.0, 0.0, -0.5, 0.5, 0.25, 1.0, 1.0, -1.0, -1.0, 1.0, 0.5, ]);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
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
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    const array9 = new Float32Array([-0.25, 0.0, 0.25, -1.0, -0.75, -0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.25, -1.0, 0.75, 1.0, 0.25, 0.0, 0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 0.5, 0.25, -1.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.5, -0.75, 0.0, -0.5, 0.0, -0.75, -0.75, -0.25, 0.25, 0.25, -1.0, -0.75, 0.0, 0.75, 0.25, 0.25, -0.25, 0.25, 0.75, 0.5, -1.0, -1.0, 0.75, -1.0, 0.5, 1.0, -0.25, 0.25, 0.5, -0.25, 0.0, -1.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.0, 1.0, -1.0, 0.5, -0.25, -0.25, 0.0, 1.0, 0.25, 0.5, 0.75, -1.0, 0.5, 0.25, -0.5, -0.75, 1.0, -0.75, 0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.75, -0.75, -0.5, -0.25, 0.75, 0.0, 0.75, 1.0, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device70.pushErrorScope("validation");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.popDebugGroup();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    query701.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    query601.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device70.pushErrorScope("out-of-memory");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query602.destroy()
    command_encoder600.popDebugGroup()
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder700.popDebugGroup();
    command_encoder600.pushDebugGroup("mygroupmarker")
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    command_encoder601.insertDebugMarker("mymarker");
    
    const command_buffer700 = command_encoder700.finish();
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    command_encoder601.insertDebugMarker("mymarker");
    texture700.destroy();
    
    query601.destroy()
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_buffer602 = command_encoder602.finish();
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    query600.destroy()
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    buffer700.destroy()
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    query603.destroy()
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
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
    query702.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const command_buffer701 = command_encoder701.finish();
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    query801.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    query601.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture701 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.insertDebugMarker("mymarker");
    const texture_view7011 = texture701.createView({ label: "texture_view7011" });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    
    query601.destroy()
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    query600.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    query601.destroy()
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout600]
    });
    query700.destroy()
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    device60.pushErrorScope("out-of-memory");
    
    
    command_encoder800.insertDebugMarker("mymarker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const array10 = new Float32Array([0.5, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, 0.75, 1.0, 0.75, 0.5, 0.75, 0.25, -0.5, -1.0, 1.0, -1.0, 0.75, -0.25, 0.25, 0.5, -0.75, 0.0, -1.0, 0.75, -1.0, -1.0, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, 1.0, 0.5, -0.5, 1.0, -0.75, 0.25, 0.5, -0.5, 0.25, 1.0, -1.0, -0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.25, -0.25, 0.0, -0.5, 1.0, 0.25, 0.25, 0.5, 0.5, -0.75, 0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 1.0, 1.0, -0.25, -0.25, 0.75, -1.0, 0.75, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 1.0, -1.0, -1.0, 0.25, 0.0, -0.75, 0.0, 0.5, -1.0, ]);
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    command_encoder601.popDebugGroup()
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    query602.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device90.pushErrorScope("out-of-memory");
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    query602.destroy()
    
    query603.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    texture701.destroy();
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    texture703.destroy();
    command_encoder800.insertDebugMarker("mymarker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    
    buffer600.destroy()
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
    const array11 = new Float32Array([0.75, -0.75, 0.5, 0.5, 1.0, -0.75, -0.75, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, -0.5, 0.5, 1.0, 0.25, -0.5, -1.0, -0.5, 0.0, -1.0, 0.0, 0.75, 0.5, -1.0, 0.0, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, -0.25, 0.25, 0.5, 0.25, 1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, -0.5, 0.75, -0.75, -1.0, 1.0, 1.0, 0.25, 0.75, 0.75, -0.5, -1.0, 0.0, -0.75, 0.0, 0.25, -1.0, -0.5, 0.75, -0.75, 0.5, -1.0, -0.5, -0.25, -0.75, 0.5, 1.0, -0.75, 0.75, -1.0, 1.0, 0.25, 0.0, -0.75, -0.5, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, -0.5, 0.0, -0.5, -0.75, -0.25, 0.25, -1.0, ]);
    query602.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    query602.destroy()
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    
    
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout604,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([command_buffer700, ]);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    const array12 = new Float32Array([-0.75, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 1.0, -0.5, -1.0, 0.75, -0.5, 1.0, -0.25, -0.25, 1.0, 0.0, -0.5, 1.0, -1.0, 0.25, 0.75, 1.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.5, 0.75, -0.25, 1.0, 0.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.5, -0.75, -0.5, -0.25, 0.25, -1.0, -0.25, 1.0, 0.25, 0.25, 0.5, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, -1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 1.0, -0.5, -0.5, -0.5, 1.0, 0.75, 0.75, 1.0, -0.75, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, -1.0, 0.5, 0.25, 1.0, -1.0, 0.25, 0.25, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, ]);
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    
    query600.destroy()
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device120.pushErrorScope("out-of-memory");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    query801.destroy()
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const render_pass_encoder8010 = command_encoder801.beginRenderPass({
        label: "render_pass_encoder8010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query801
    });
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    device80.pushErrorScope("validation");
    render_bundle_encoder901.pushDebugGroup("group_marker");
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query701.destroy()
    device130.pushErrorScope("out-of-memory");
    render_pass_encoder8010.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group601);
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query703.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
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
    render_bundle_encoder601.pushDebugGroup("group_marker");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_pass_encoder7030.setPipeline(render_pipeline702);
    render_pass_encoder8010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    compute_pass_encoder7020.setPipeline(compute_pipeline700);
    query800.destroy()
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    command_encoder601.insertDebugMarker("mymarker");
    const render_pass_encoder7040 = command_encoder704.beginRenderPass({
        label: "render_pass_encoder7040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7030,
            },
        ],
        occlusionQuerySet: query700
    });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder900.pushDebugGroup("group_marker");
    render_bundle_encoder801.insertDebugMarker("marker");
    command_encoder603.insertDebugMarker("mymarker");
    device120.pushErrorScope("out-of-memory");
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_pass_encoder8010.insertDebugMarker("marker");
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    query901.destroy()
    render_pass_encoder8010.setStencilReference(1);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query701.destroy()
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    query800.destroy()
    render_pass_encoder7040.pushDebugGroup("group_marker");
    
    render_pass_encoder8010.executeBundles([])
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder901.insertDebugMarker("marker");
    const command_buffer1200 = command_encoder1200.finish();
    render_pass_encoder7040.setPipeline(render_pipeline702);
    device70.queue.submit([command_buffer701, ]);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7030.setBindGroup(0, bind_group701);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder7040.popDebugGroup();
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder8000.setPipeline(compute_pipeline800);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group702);
    const command_buffer603 = command_encoder603.finish();
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group800);
    compute_pass_encoder6000.popDebugGroup()
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer803, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer803, 0);
    compute_pass_encoder6000.end();
    command_encoder600.popDebugGroup()
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    render_pass_encoder7040.setBindGroup(0, bind_group703);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer709, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer709, 0);
    device120.queue.submit([command_buffer1200, ]);
    compute_pass_encoder8000.end();
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    device60.queue.submit([command_buffer600, ]);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder7020.end();
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer702, ]);
}