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
    const array0 = new Float32Array([0.0, -0.5, -0.75, 1.0, -1.0, 0.25, -0.25, 0.25, -0.5, -0.25, 0.0, -1.0, 0.25, -0.25, 0.75, -0.25, 0.25, 1.0, -0.25, 1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 0.0, -0.5, 0.0, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.25, 0.25, -1.0, -1.0, 0.75, 0.0, 0.5, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.0, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, 0.25, 0.75, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 0.0, 0.5, 0.25, -0.25, 1.0, -0.25, -0.25, 0.25, -0.5, -0.75, 1.0, 0.25, 0.0, 0.75, -0.75, 0.25, 0.75, 0.5, -0.75, 0.5, ]);
    
    
    const array1 = new Float32Array([0.5, -0.5, 1.0, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, -1.0, -0.75, 0.25, -0.5, -0.25, 0.0, -1.0, 0.0, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, -0.5, -0.5, -0.25, -0.75, -1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, -0.25, -0.25, 0.5, -0.25, 0.75, 0.5, 0.75, -0.5, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 0.0, 0.25, 0.75, 0.5, -0.5, -0.25, 1.0, 0.5, 0.75, -1.0, -0.25, -1.0, 0.75, -0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.0, -0.75, 0.25, 0.75, 0.75, -1.0, 1.0, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([-0.5, -1.0, 0.0, 0.75, 0.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.75, -0.75, 1.0, -1.0, 0.5, -0.25, -1.0, 0.0, -0.5, 0.75, -0.25, -0.5, -1.0, 0.5, 1.0, 0.5, -0.75, -0.75, 0.25, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.75, -0.5, 0.25, -1.0, -0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -0.75, -0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.0, -1.0, -0.5, -0.25, 0.0, 0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -0.5, -0.75, 1.0, -0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 1.0, 0.75, 0.25, 0.0, 0.25, ]);
    const array3 = new Float32Array([0.5, -0.75, 1.0, -0.75, 0.0, 0.0, -0.5, 0.0, -1.0, -0.25, 0.5, 1.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 0.0, 0.5, -0.5, 0.75, -0.75, 0.5, 1.0, 0.5, -0.75, -0.5, -0.75, 0.0, 0.25, -0.25, -0.5, -0.25, -0.75, -0.25, -0.25, 0.0, 0.75, -1.0, -0.25, 1.0, -0.25, -1.0, 0.75, 0.0, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, 1.0, 0.75, 0.75, 0.75, 0.25, -1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, 0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.25, -0.25, 0.25, 0.75, 0.0, -0.75, 0.5, 1.0, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, 0.75, 1.0, 1.0, -1.0, 0.75, ]);
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array4 = new Float32Array([0.75, -0.5, 0.5, 0.75, -0.25, 0.5, 0.25, -0.75, 0.75, -0.75, -0.75, 0.5, -0.75, -0.75, -1.0, 0.75, 0.0, 0.25, 1.0, -0.75, 0.5, -0.5, -0.5, 0.75, -0.75, 0.25, 0.0, 0.5, 0.5, -0.25, -0.5, -1.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 0.25, -0.25, 0.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.5, -1.0, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, -1.0, 0.25, -0.25, 0.25, 0.0, 0.0, 0.75, -0.75, 0.5, 0.75, -0.75, -0.5, -0.75, -0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, 1.0, 0.75, 0.25, 0.0, ]);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device00.destroy();
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array5 = new Float32Array([-1.0, 1.0, -0.75, 0.25, 0.0, 0.25, 0.5, -0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.75, 0.25, -0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.5, -1.0, -0.25, 1.0, 1.0, 0.0, 0.0, 0.0, 0.25, -0.5, -0.75, -0.75, 1.0, -0.5, -1.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.0, -0.5, -1.0, -0.25, -1.0, 1.0, 0.25, 0.0, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.0, -0.5, 0.25, 0.0, 0.25, -0.25, 0.25, 0.75, 0.5, -0.5, -0.5, 0.5, -1.0, -1.0, -0.75, -0.75, -0.25, 0.5, 1.0, 0.25, -0.5, -1.0, ]);
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.destroy();
    const array6 = new Float32Array([1.0, 1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.75, 0.25, -0.75, 0.0, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 0.5, -0.5, -1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.0, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, -0.75, -0.5, -0.75, -0.5, 1.0, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.0, 0.5, -0.75, 0.25, -0.75, -1.0, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 1.0, 0.75, -0.25, 0.75, 1.0, -0.25, 0.25, 0.0, -0.25, -0.5, -1.0, 0.0, 0.0, -0.5, -0.75, -1.0, 0.25, 0.75, 0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, -1.0, 0.0, 1.0, 1.0, 1.0, ]);
    
    
    
    const array7 = new Float32Array([0.0, 1.0, 0.0, 1.0, -0.75, 0.0, 0.25, -0.5, -1.0, -1.0, -0.5, 0.25, 0.75, 1.0, 1.0, 0.5, -0.75, 0.25, 0.25, -0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.0, -1.0, 0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 0.75, 0.5, -0.5, 0.25, 0.25, -0.75, 0.5, -0.5, 0.0, -0.25, 0.75, -0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, -0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, -0.5, -0.75, 1.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.0, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, -0.5, 0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, -0.25, 0.75, 1.0, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array8 = new Float32Array([1.0, 0.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.75, -0.25, 0.75, 0.25, -0.25, 0.5, 0.25, 0.0, 1.0, -1.0, -0.25, -0.5, -0.25, 0.75, 0.0, -1.0, 0.5, -1.0, 0.75, -0.25, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.0, 0.0, 0.5, 0.5, -0.75, 1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, -0.5, -1.0, 0.5, 0.0, 0.25, 0.75, 0.5, -0.75, -0.25, -0.75, 0.5, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, 0.5, 1.0, -0.25, 0.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.25, 1.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.5, -0.75, -0.5, -0.25, -0.5, -1.0, -0.25, -0.25, 0.25, ]);
    
    const array9 = new Float32Array([-0.75, -0.25, -0.5, 0.5, 0.5, 0.25, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, 0.5, -1.0, -0.25, -0.25, 0.75, -1.0, -1.0, -0.75, 0.5, -0.5, -0.75, 1.0, 0.25, -0.25, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, 0.5, -0.5, 0.25, 0.0, -1.0, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.5, -0.5, -0.75, -0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -1.0, 0.5, -0.25, -0.75, 0.75, 0.0, 0.75, 0.0, -0.75, 1.0, 1.0, 0.5, 0.5, 0.25, 0.0, -1.0, -0.25, -1.0, 0.5, 1.0, 1.0, 0.5, 0.75, -0.5, 0.75, 0.0, 0.25, 0.5, -1.0, 0.25, -0.25, ]);
    
    
    
    
    
    
    
    const array10 = new Float32Array([-1.0, -0.75, -0.75, 0.25, -1.0, 0.75, 0.75, 1.0, 1.0, 0.25, 0.5, -0.25, 0.75, -0.25, 0.75, 1.0, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.5, -1.0, 0.0, 0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, 0.0, 0.25, -1.0, 1.0, 0.75, -0.5, 0.75, 0.75, 0.0, 1.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.25, -0.25, 0.25, -0.5, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, -0.75, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 0.75, 1.0, 0.0, -1.0, -0.25, -0.5, -0.25, 0.25, 1.0, -0.5, -1.0, 0.75, 0.25, -0.5, -1.0, -0.25, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const array11 = new Float32Array([0.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, -1.0, 0.0, -1.0, 0.0, -0.25, 0.75, -1.0, -0.75, 0.25, -0.5, 1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.5, 1.0, 0.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, 1.0, 1.0, 0.25, -0.25, 1.0, -0.25, 1.0, 0.0, -1.0, 0.25, 0.25, -0.75, -0.75, -0.25, 0.5, 0.75, 0.25, -1.0, -0.5, 0.0, 0.0, -1.0, -0.5, -0.5, 0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, -0.5, 0.0, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -0.75, -0.25, -0.5, -0.25, 1.0, 0.75, 0.75, 0.0, -0.75, 1.0, 1.0, ]);
    
    
    device20.queue.submit([]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    query200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query200.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    buffer200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const array12 = new Float32Array([0.5, 0.5, -1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 0.75, 1.0, -0.75, -0.75, -0.25, 0.0, 0.5, 0.5, -0.5, -1.0, 0.0, -0.25, 0.75, -1.0, 0.0, -0.75, -1.0, -1.0, 1.0, 1.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.75, -0.75, 0.5, 0.0, -0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 1.0, 0.5, -0.75, 0.5, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.5, -0.5, 0.25, 0.0, -0.75, 0.0, -1.0, 1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.0, -0.5, -1.0, -0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 1.0, 0.25, -0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    query200.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    texture201.destroy();
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer202.destroy()
    const array13 = new Float32Array([-0.5, 0.25, 0.0, -0.75, -1.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.75, 1.0, -0.5, 0.25, -0.75, 0.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.0, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -0.5, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, -0.75, 0.5, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, 0.5, 0.0, -0.25, 1.0, -0.5, 1.0, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -0.25, -0.25, -0.25, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, 0.0, 0.5, -1.0, 0.25, 0.0, 1.0, -0.25, -0.5, -1.0, ]);
    
    query201.destroy()
    
    
    texture202.destroy();
    
    query202.destroy()
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    query200.destroy()
    
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query203.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    query203.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    query201.destroy()
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    query203.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
    render_bundle_encoder200.popDebugGroup();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    buffer204.destroy()
    
    buffer203.destroy()
    
    
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    buffer204.destroy()
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.clearBuffer(buffer204);
    
    device20.queue.submit([]);
    
    device40.destroy();
    
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query204.destroy()
    
    
    command_encoder202.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    query201.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query204.destroy()
    const command_buffer201 = command_encoder201.finish();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array14 = new Float32Array([-1.0, 0.25, 0.5, 0.75, -0.5, 0.25, 0.75, 0.0, -0.75, -1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -0.5, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.5, 1.0, 0.0, -0.25, -1.0, 0.75, -0.75, 0.25, 1.0, -0.25, 0.75, -1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -0.75, -0.5, 0.75, -0.75, 0.25, -0.25, 1.0, 0.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, -0.75, -0.75, 0.5, -0.75, 0.5, -0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 0.75, 0.75, 0.0, -0.5, 0.75, 0.25, -0.75, 0.75, 0.25, 0.0, -0.5, -0.5, 0.0, 1.0, -0.75, ]);
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer208, 0, array7, 0, array7.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    {
        await buffer207.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer207.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer207.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer207
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer209,
        0
    )
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
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
    query203.destroy()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const array15 = new Float32Array([-1.0, -1.0, 0.0, -1.0, -0.25, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.75, 0.0, -1.0, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 0.0, -0.75, 0.25, 0.25, -1.0, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, 1.0, 0.25, 0.0, -0.5, 0.75, 0.5, -0.5, -1.0, -1.0, 0.25, -0.25, 0.25, -0.75, 0.5, 1.0, -0.75, -1.0, 0.25, 1.0, 0.0, -1.0, 0.0, -1.0, -0.75, -0.5, 0.25, -0.75, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, -0.25, 0.25, -0.75, 0.0, -1.0, -0.25, 0.25, -0.75, -0.75, 1.0, -1.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, 1.0, -0.75, -0.25, -1.0, -0.25, 0.25, 0.25, 1.0, -1.0, -0.5, 0.75, 1.0, 0.0, ]);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    command_encoder202.copyBufferToBuffer(
        buffer2010,
        0,
        buffer2010,
        0,
        400
    );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer209
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer205, 0, array15, 0, array15.length);
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2011, 0);
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer2011
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture201.destroy();
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer209,
        0
    )
    
    command_encoder202.copyBufferToBuffer(
        buffer2011,
        0,
        buffer2010,
        0,
        400
    );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2012, 0);
    device20.queue.writeBuffer(buffer2012, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer2012, 0, array3, 0, array3.length);
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    device20.queue.writeBuffer(buffer2011, 0, array0, 0, array0.length);
    command_encoder202.copyBufferToBuffer(
        buffer206,
        0,
        buffer2012,
        0,
        400
    );
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture204
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
    
    command_encoder202.clearBuffer(buffer2011);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder2010.popDebugGroup()
    
    command_encoder202.copyBufferToBuffer(
        buffer2011,
        0,
        buffer209,
        0,
        400
    );
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer2011, 0, array9, 0, array9.length);
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
    
    device20.queue.writeBuffer(buffer2012, 0, array4, 0, array4.length);
    
    command_encoder202.copyBufferToBuffer(
        buffer203,
        0,
        buffer2012,
        0,
        400
    );
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    query203.destroy()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder202.clearBuffer(buffer205);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder202.clearBuffer(buffer2012);
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    
    device20.queue.writeBuffer(buffer2012, 0, array12, 0, array12.length);
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer203
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer2012, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.writeBuffer(buffer2014, 0, array11, 0, array11.length);
    const array16 = new Float32Array([-0.5, -0.25, -1.0, -1.0, -0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 0.75, -0.5, 0.5, 0.5, 1.0, -1.0, -0.25, 0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 0.5, -0.25, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, -1.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.0, 0.0, 1.0, 0.0, -0.5, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -0.5, 1.0, -0.75, -0.75, -0.75, -0.75, 0.75, -0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 1.0, 0.75, -0.25, 0.25, 0.0, -0.5, -0.5, 0.0, 0.25, 0.5, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    buffer209.destroy()
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture204
        },
        {
            buffer: buffer2012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeBuffer(buffer2012, 0, array13, 0, array13.length);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2012, 0, array15, 0, array15.length);
    command_encoder203.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer2014,
        0,
        400
    );
    command_encoder204.resolveQuerySet(
        query204,
        0,
        32,
        buffer205,
        0
    )
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer205,
        0
    )
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer2012, 0, array6, 0, array6.length);
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer2013,
        0,
        400
    );
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    
    command_encoder203.copyBufferToBuffer(
        buffer204,
        0,
        buffer2012,
        0,
        400
    );
    query205.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer209,
        0,
        buffer2012,
        0,
        400
    );
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device50.destroy();
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture204
        },
        {
            buffer: buffer206
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    device20.queue.writeBuffer(buffer206, 0, array14, 0, array14.length);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder204.clearBuffer(buffer2013);
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture201
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
    command_encoder204.resolveQuerySet(
        query206,
        0,
        32,
        buffer2010,
        0
    )
    command_encoder200.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    command_encoder203.resolveQuerySet(
        query205,
        0,
        32,
        buffer2010,
        0
    )
    
    device20.queue.writeBuffer(buffer2012, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer2011, 0, array11, 0, array11.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer205,
        0
    )
    
    
    command_encoder200.clearBuffer(buffer208);
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture204
        },
        {
            buffer: buffer206
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder203.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    device20.queue.writeBuffer(buffer2011, 0, array1, 0, array1.length);
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture204
        },
        {
            buffer: buffer205
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder203.clearBuffer(buffer2013);
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder203.copyBufferToBuffer(
        buffer204,
        0,
        buffer2011,
        0,
        400
    );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer205
        },
        {
            texture: texture204
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer2012, 0, array5, 0, array5.length);
    const array17 = new Float32Array([-0.5, -0.75, 1.0, -0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, 1.0, 0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.5, -1.0, 1.0, -1.0, -0.75, 0.0, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, 0.5, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, 0.5, 0.75, 0.5, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, 0.25, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, 1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.0, 1.0, -0.25, -1.0, ]);
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    command_encoder202.resolveQuerySet(
        query205,
        0,
        32,
        buffer2011,
        0
    )
    command_encoder203.clearBuffer(buffer2011);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder2040.setPipeline(compute_pipeline2016);
    device20.queue.writeBuffer(buffer2011, 0, array4, 0, array4.length);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2011, 0, array6, 0, array6.length);
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.destroy();
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device20.queue.writeBuffer(buffer2012, 0, array7, 0, array7.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    device60.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device20.queue.writeBuffer(buffer2012, 0, array13, 0, array13.length);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query701.destroy()
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query701.destroy()
    
    
    
}