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
    const array0 = new Float32Array([1.0, 0.0, 0.5, 0.25, 1.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, 0.75, 1.0, 0.75, -0.25, 1.0, 1.0, 0.5, -0.75, 0.0, 0.75, -0.25, 0.75, -0.75, 0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, -1.0, -1.0, -1.0, 0.25, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.75, -0.25, 1.0, -0.25, 0.5, 0.75, 0.75, -0.75, -0.5, -1.0, 0.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.25, 0.75, -1.0, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([-0.75, 0.25, 0.5, -0.25, 0.5, 0.0, -0.75, -0.75, 0.25, -0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 0.0, -0.5, 0.5, -0.75, 1.0, -0.5, -0.5, -0.75, -0.75, -1.0, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, 1.0, 0.25, -1.0, 0.75, 1.0, 0.0, -0.25, 0.25, -1.0, -0.25, 0.75, 0.5, 0.5, -0.75, -0.5, 1.0, -0.75, -0.75, -0.25, 0.5, -0.75, 1.0, 0.75, -0.5, 0.0, 0.5, -1.0, 0.25, 0.5, 1.0, -0.25, -0.75, 0.75, -0.5, 0.25, -0.75, -0.25, -0.25, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -0.75, 0.5, 0.25, 0.75, -0.25, -1.0, -0.25, -1.0, 0.75, -0.25, 0.75, 1.0, -0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.25, 0.5, -0.75, 0.0, -0.75, -0.75, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-0.5, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, 0.25, 0.5, -0.5, 0.25, -0.75, 1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, -0.25, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, 0.25, -0.25, 0.5, -0.25, -0.25, -0.5, -0.75, 0.5, 0.0, 0.0, 1.0, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, 0.5, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, 0.5, 1.0, -0.25, -1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.5, 0.75, -0.25, 0.5, -0.25, 0.0, -0.75, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, -0.75, -0.25, -1.0, -0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 0.5, 0.0, -0.75, 0.0, 0.5, -0.25, -0.75, 1.0, 0.25, 0.75, 0.5, -0.75, 0.25, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const array3 = new Float32Array([-0.75, 0.25, -0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, -1.0, 1.0, -1.0, 0.5, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, 0.25, -0.75, -0.5, 0.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.0, 1.0, -0.25, -0.75, 0.0, -0.75, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.75, -1.0, 0.25, -0.75, -0.25, 0.5, -0.75, 0.25, -0.25, 1.0, -0.5, 1.0, 1.0, 0.0, 0.5, 0.75, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, -0.75, -0.5, 0.75, 0.0, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.25, -1.0, 0.0, -0.5, -1.0, -1.0, 0.5, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, -0.5, 1.0, -0.25, 0.25, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([-0.75, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 1.0, 0.5, -0.25, 0.25, 0.75, 0.0, -0.25, -0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 0.0, -1.0, -0.25, 0.5, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.0, -0.25, 1.0, -0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, -0.25, 0.0, 0.75, 1.0, 1.0, 0.75, 0.5, 0.25, 0.75, -0.5, 1.0, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.25, 0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.0, 0.0, 0.5, 0.0, 0.0, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, ]);
    buffer000.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.25, 0.5, -0.25, -0.5, -0.5, -0.25, 0.75, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, 0.0, 0.75, 0.5, -0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -0.25, 0.5, 0.25, -0.25, -0.25, -0.25, -0.75, -1.0, 0.0, 0.75, -0.5, 0.25, -0.5, -0.5, -0.5, 0.25, -1.0, -1.0, 0.5, -1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, -0.75, -0.75, 0.5, 0.75, -0.25, 0.25, -1.0, -1.0, -1.0, 0.25, -0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.75, -0.75, -0.25, 0.75, -1.0, -1.0, -0.5, -0.75, -0.75, 0.5, -0.5, 0.25, -1.0, -1.0, -0.5, 0.75, 0.75, 0.0, 0.0, -0.75, -0.75, -0.5, 0.0, -1.0, -0.25, 0.75, 0.25, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, 0.0, ]);
    texture002.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array6 = new Float32Array([0.25, 0.25, -0.25, 0.0, -0.25, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, -0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 0.0, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 1.0, -0.25, 0.0, 1.0, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, 0.75, -0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.0, 1.0, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, 0.0, 0.0, 0.5, 0.5, 0.75, -1.0, 0.5, -0.75, -0.75, 0.5, -0.75, 1.0, 1.0, 0.75, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, 0.0, -1.0, -0.5, -0.5, 0.5, 0.0, 0.25, -0.75, 0.0, -0.25, 0.25, 0.0, -1.0, -0.75, 0.25, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -0.5, 0.0, -0.25, 0.75, -0.5, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device10.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device30.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer401 = command_encoder401.finish();
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array7 = new Float32Array([1.0, -0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.25, 1.0, -0.5, 0.0, 0.75, 0.5, 0.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.25, -0.25, -0.75, -0.75, 0.25, -0.25, -0.25, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, 1.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 0.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.75, 0.75, 0.5, -0.75, 1.0, 1.0, -0.5, 0.75, -0.5, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 0.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.5, 0.25, 0.0, 0.0, 0.75, 0.5, -1.0, 0.0, -1.0, -0.75, -1.0, -1.0, 0.5, -1.0, -0.75, ]);
    
    device00.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array8 = new Float32Array([0.5, -0.25, -1.0, 0.5, 0.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.75, -0.5, 1.0, 0.5, 0.0, 1.0, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, 0.25, 0.75, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, 0.25, -0.25, -0.5, -0.75, 0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 0.25, 0.5, 0.75, -1.0, 0.0, -0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -1.0, 0.75, -1.0, 0.0, -0.25, -0.5, -1.0, 0.5, 0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.75, 0.5, -0.5, -0.5, 1.0, -1.0, -1.0, 0.5, 0.25, -0.25, 0.0, 0.0, -0.75, -1.0, 0.25, 1.0, 0.25, 0.5, -0.25, 1.0, 0.25, 1.0, -0.25, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    texture001.destroy();
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer402.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder4001 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4001" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const array9 = new Float32Array([-1.0, -1.0, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.5, 0.5, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, 0.75, 0.75, -0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 0.25, 0.0, 0.25, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, -0.5, 0.75, -0.75, 0.25, 0.75, -0.5, 1.0, 0.5, -0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -0.75, -0.5, -0.75, 0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, -1.0, 0.25, 0.25, -0.75, 1.0, 1.0, -1.0, 0.75, 0.25, 0.75, -0.75, -0.75, -0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.0, -0.75, 0.25, 0.75, -0.25, -0.75, 0.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.5, 0.0, 0.5, -1.0, -0.75, 0.75, -0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder4001.pushDebugGroup("group_marker")
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    
    const command_buffer300 = command_encoder300.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    
    compute_pass_encoder4001.insertDebugMarker("marker")
    render_bundle_encoder501.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    texture500.destroy();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.destroy();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_bundle_encoder501.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder500.clearBuffer(buffer500);
    command_encoder500.clearBuffer(buffer500);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer500.destroy()
    device00.destroy();
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.queue.writeBuffer(buffer502, 0, array6, 0, array6.length);
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer501.destroy()
    device50.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.destroy();
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer100.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([0.25, 1.0, 0.25, 0.0, 0.5, -0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, -0.5, -1.0, -0.75, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, -0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, -0.75, 1.0, 0.75, -0.75, 1.0, 1.0, 0.25, -0.25, -0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, -0.75, -0.75, 0.75, -0.5, -0.5, -0.5, -0.75, -0.5, 0.0, 1.0, -0.5, 1.0, -1.0, 0.0, 0.25, 0.0, 0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 0.75, 0.75, -1.0, 0.0, 0.75, 1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, -0.25, -0.75, -0.5, -0.5, 0.5, 0.75, 0.0, -0.25, -0.75, 0.5, -0.5, -0.25, 0.5, 0.0, -0.25, ]);
    
    
    const array11 = new Float32Array([-0.75, 0.0, 0.5, 0.0, -0.25, -0.5, -0.5, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, 1.0, 0.75, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, 0.75, -0.5, 1.0, 0.25, -0.25, 0.0, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, 0.5, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 1.0, 0.25, -1.0, -0.5, 0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, 0.5, 1.0, 0.0, 0.0, 0.25, -0.75, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, 0.75, -1.0, 0.75, -0.75, -0.25, -1.0, -0.25, -0.25, 0.25, 0.25, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, ]);
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array12 = new Float32Array([-0.25, -1.0, 0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 0.75, 1.0, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, -0.75, 0.0, -0.25, 0.25, 0.75, -0.25, -1.0, -0.25, -0.75, 0.25, -1.0, -1.0, 0.0, -1.0, -1.0, -0.25, -0.5, -0.25, 1.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -0.75, 0.75, -1.0, 0.75, -0.25, -0.5, -1.0, -0.75, 0.0, 0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.5, 0.0, 0.25, -1.0, -0.5, 0.5, 0.75, 1.0, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, 0.75, 1.0, -0.25, -0.25, -1.0, 0.75, -0.5, 0.25, -0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -0.25, -0.75, 0.0, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device80.destroy();
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const command_buffer900 = command_encoder900.finish();
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device90.queue.writeBuffer(buffer900, 0, array2, 0, array2.length);
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([1.0, 1.0, -0.75, -1.0, -0.75, 0.5, 1.0, 0.5, 0.5, -0.75, -1.0, 0.25, -0.25, -0.75, -0.75, 0.0, 0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, -0.5, -0.25, 0.5, -1.0, -0.5, 0.25, -0.25, 1.0, -0.5, -0.25, 0.75, -0.75, 0.5, -0.25, 0.0, 0.0, 0.5, 0.5, -1.0, -0.25, -0.5, -0.75, -0.5, -0.5, -0.75, -1.0, -0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -1.0, 0.0, 1.0, 0.5, 0.25, -0.5, 0.75, 0.25, -0.25, -0.75, 0.5, 0.5, -0.25, 0.5, 0.0, -0.75, -0.5, 0.5, 1.0, 0.5, -0.25, 0.25, 0.75, 0.0, 1.0, -0.75, 0.5, ]);
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
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
    device110.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    device100.destroy();
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    render_bundle_encoder901.insertDebugMarker("marker");
    texture000.destroy();
    
    
    texture900.destroy();
    
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device40.destroy();
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    render_bundle_encoder901.insertDebugMarker("marker");
    
    
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const sampler903 = device90.createSampler( { label: "sampler903" } );
    device90.queue.writeBuffer(buffer900, 0, array11, 0, array11.length);
    device90.queue.writeBuffer(buffer900, 0, array10, 0, array10.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer700.destroy()
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    buffer900.destroy()
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device120.destroy();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    device100.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    command_encoder201.clearBuffer(buffer201);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device50.queue.writeBuffer(buffer502, 0, array13, 0, array13.length);
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeTexture({ texture: texture1300 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    
    
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder1300 = device130.createCommandEncoder({ label: "command_encoder1300" });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture1300.destroy();
    device130.queue.writeBuffer(buffer1301, 0, array2, 0, array2.length);
    
    
    buffer600.destroy()
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    compute_pass_encoder4000.popDebugGroup()
    
    device90.queue.writeTexture({ texture: texture901 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler904 = device90.createSampler( { label: "sampler904" } );
    device130.queue.writeBuffer(buffer1300, 0, array12, 0, array12.length);
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    device60.queue.writeTexture({ texture: texture600 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    texture1302.destroy();
    render_bundle_encoder902.insertDebugMarker("marker");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    
    device130.queue.writeBuffer(buffer1300, 0, array10, 0, array10.length);
    device130.queue.writeBuffer(buffer1302, 0, array7, 0, array7.length);
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    texture901.destroy();
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module906.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    device60.queue.writeTexture({ texture: texture600 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder9010.popDebugGroup()
    compute_pass_encoder9010.pushDebugGroup("group_marker")
    device130.queue.writeBuffer(buffer1302, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    texture501.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1301.destroy();
    const compute_pass_encoder13000 = command_encoder1300.beginComputePass({ label: "compute_pass_encoder13000" });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder13000.popDebugGroup()
    device90.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer901, 0, array4, 0, array4.length);
    buffer1301.destroy()
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder1301 = device130.createCommandEncoder({ label: "command_encoder1301" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder1301.clearBuffer(buffer1303);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device130.queue.writeBuffer(buffer1303, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1303, 0, array9, 0, array9.length);
    
    command_encoder1301.resolveQuerySet(
        query1302,
        0,
        32,
        buffer1302,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    command_encoder1301.clearBuffer(buffer1303);
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    device130.queue.writeBuffer(buffer1302, 0, array10, 0, array10.length);
    device130.queue.writeBuffer(buffer1303, 0, array12, 0, array12.length);
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device130.queue.writeBuffer(buffer1303, 0, array0, 0, array0.length);
    
    const command_buffer1301 = command_encoder1301.finish();
    const command_buffer102 = command_encoder102.finish();
}