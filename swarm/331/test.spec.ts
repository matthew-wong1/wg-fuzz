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
    
    const array0 = new Float32Array([0.0, 1.0, 0.25, -0.75, 0.0, -0.75, -1.0, -1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, 1.0, 0.0, -0.5, 0.75, -0.25, 0.5, 0.0, 0.25, -0.5, 0.5, 1.0, 1.0, 0.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 1.0, -0.5, 0.5, -0.75, -0.75, 1.0, -0.5, 0.25, 0.75, -0.25, 0.5, -0.75, 1.0, 0.25, 0.5, 0.0, -1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, -0.25, 0.75, 1.0, -0.75, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, 0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, ]);
    const array1 = new Float32Array([-0.25, 0.5, -0.75, 1.0, -0.25, 0.75, -0.75, 0.5, 0.75, -0.25, 0.0, 0.0, 1.0, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -1.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, 0.25, -0.5, 0.5, 0.0, -0.75, 0.25, -0.5, 0.0, 0.5, 1.0, -1.0, 0.75, -0.75, -0.5, -0.75, -0.5, -1.0, -1.0, 0.25, 0.25, -1.0, -0.5, -1.0, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, 0.0, 0.75, -0.75, 0.0, 0.25, -0.75, -1.0, 0.75, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.5, -0.25, 0.5, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, 0.75, -0.5, -0.75, -0.25, 1.0, -0.5, 0.5, 0.0, -1.0, 0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -0.75, -1.0, -1.0, -1.0, ]);
    
    const array2 = new Float32Array([-0.5, -0.75, 0.5, 0.5, -0.5, 0.25, 0.25, 0.75, 0.5, -0.5, -0.5, -0.75, 0.75, 0.5, 0.25, 0.25, 1.0, 0.75, -0.5, 1.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -0.25, 1.0, 0.5, 0.25, -0.25, -0.75, -1.0, 0.25, -0.25, -0.5, -1.0, -1.0, 0.25, 0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -1.0, -1.0, 0.75, 0.75, 0.75, 0.0, -0.25, 0.5, 1.0, 0.25, -0.75, 1.0, -0.25, 0.5, 0.0, 0.75, -0.5, 1.0, -0.5, 0.75, 0.75, -1.0, 0.25, 0.5, 0.5, 0.75, 0.0, -1.0, -0.5, -1.0, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 0.75, -1.0, -0.75, -1.0, 1.0, 0.25, 0.75, -0.25, 0.75, 0.5, ]);
    
    const array3 = new Float32Array([1.0, -0.75, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -0.75, -1.0, -0.25, 0.5, -0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -1.0, 0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.5, 0.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.5, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -0.25, -0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, 0.75, -0.25, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 0.5, ]);
    
    
    const array4 = new Float32Array([0.75, 1.0, -0.25, 1.0, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 0.25, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.25, -0.25, -0.5, -0.25, 0.0, 0.5, -0.75, 0.25, -0.75, -0.75, -0.5, -0.25, -0.5, 0.0, 0.5, -0.75, 1.0, -1.0, 1.0, 0.5, -0.25, 0.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.25, 0.25, -0.25, 1.0, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 1.0, 1.0, 0.75, 0.25, 0.0, 1.0, -0.5, -0.25, 0.25, 1.0, -0.5, 0.25, 0.75, 0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -0.75, -0.5, -0.75, 0.0, 0.75, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, -0.75, -0.25, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([-1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.5, -0.25, 0.25, 0.75, 0.5, 0.25, 0.75, 1.0, 0.5, -1.0, -0.5, -0.25, -0.5, 0.25, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, -0.75, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, 1.0, -0.75, -0.5, -0.25, -0.5, 0.75, 1.0, -0.25, 0.5, 1.0, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 0.25, 0.0, -0.75, -0.5, -0.5, -0.75, 1.0, 0.25, 0.0, 1.0, -0.5, 0.75, -0.25, 0.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 0.0, -0.75, 0.75, -0.5, 1.0, 0.5, -1.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, 1.0, -0.25, 0.0, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    buffer001.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    texture000.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array6 = new Float32Array([-1.0, -0.75, -1.0, 1.0, 0.75, 0.75, -0.5, -0.75, -0.5, -1.0, -1.0, -0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, -1.0, 0.75, 1.0, 1.0, 0.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.25, -1.0, -0.25, 0.75, -0.5, 1.0, -0.75, 0.75, 0.75, 0.25, 0.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.5, -1.0, 0.5, -0.25, 0.5, 1.0, -1.0, 1.0, 0.25, -0.75, -0.25, -1.0, 1.0, 0.25, -0.75, 0.5, 0.25, 0.5, -0.75, -0.25, -0.25, -1.0, 1.0, -0.25, 0.25, -0.75, 0.5, 0.5, 1.0, 0.5, -0.75, 1.0, 0.5, 0.25, -0.75, 0.25, 0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, 0.0, -0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device30.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    device30.destroy();
    device20.destroy();
    
    render_bundle_encoder101.popDebugGroup();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    device10.destroy();
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([1.0, 0.0, -1.0, -0.75, 0.0, -0.25, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, -1.0, 0.5, -1.0, -1.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.5, -1.0, 0.75, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, 0.75, 0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.0, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, 1.0, 1.0, -0.25, -1.0, -0.25, 1.0, -0.25, 0.5, 0.0, 0.25, -0.75, 0.0, -0.5, 0.0, 0.75, -0.25, -1.0, 1.0, -0.25, 0.25, -1.0, -0.75, -0.25, -1.0, -0.5, 0.25, -0.5, -0.25, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, 0.5, -0.25, -0.75, 0.75, 0.5, 1.0, -1.0, -0.75, 0.0, -0.25, -0.75, 0.25, 0.75, -0.75, -1.0, 0.25, 1.0, 0.75, 1.0, -0.25, -0.5, 0.25, ]);
    
    
    
    const array8 = new Float32Array([0.0, 0.75, -0.25, -0.25, -1.0, 1.0, -0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.0, -0.25, -0.5, -0.5, -0.5, -0.75, -1.0, -0.25, -0.5, -0.25, 0.5, 0.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.75, -0.25, -0.75, -1.0, 0.5, 0.0, -0.75, 1.0, 0.0, 0.0, 0.0, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, 0.0, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, 1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.5, 0.75, -0.75, -1.0, -1.0, -0.75, -0.75, 0.25, 1.0, -0.25, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 1.0, 1.0, -1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, -0.75, -0.5, 0.25, ]);
    const array9 = new Float32Array([0.25, -0.75, 0.25, -0.25, -0.75, -0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.5, -1.0, 1.0, 0.5, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, 0.5, 0.25, 0.75, -0.5, 0.5, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 0.5, 0.5, -0.75, 1.0, -0.25, 0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, -0.25, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.25, -0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.75, ]);
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array10 = new Float32Array([-0.25, 0.5, -0.5, 0.75, -0.25, 0.0, -0.75, -0.75, 0.5, 0.5, 0.0, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, -0.25, -0.75, 0.75, -0.5, 0.25, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, -0.25, 0.75, 0.75, -0.25, -0.5, 0.25, 0.75, -0.75, 1.0, -0.5, -0.75, 0.0, -1.0, -0.5, -0.75, 0.5, -1.0, 0.25, -0.75, -0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, -1.0, 0.5, -0.75, 0.0, 0.5, 0.0, -0.25, -0.25, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, 0.25, -0.75, 1.0, 0.25, 0.75, 1.0, 0.25, 0.25, -1.0, -0.75, -0.5, 0.5, 0.0, -0.5, -1.0, 0.25, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, -1.0, ]);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    device40.pushErrorScope("validation");
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
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
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    buffer500.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device60.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device50.pushErrorScope("out-of-memory");
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    texture401.destroy();
    
    texture402.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    texture400.destroy();
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
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
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    texture501.destroy();
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    texture500.destroy();
    
    render_bundle_encoder401.popDebugGroup();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    device50.destroy();
    
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.destroy();
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const array11 = new Float32Array([-0.75, 0.0, 0.75, 0.0, 0.5, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 0.75, -0.25, 0.75, -0.5, 0.25, -0.25, 0.5, -1.0, 0.0, 0.25, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 1.0, 1.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.25, -0.5, -0.25, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, -0.5, 0.25, 0.0, 1.0, -0.5, -0.75, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.5, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 0.25, -0.75, 1.0, -1.0, -0.25, 0.25, 1.0, 0.25, 1.0, -0.25, -1.0, 0.0, 0.75, 0.25, 1.0, 1.0, 0.25, -0.75, 1.0, 1.0, ]);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    device70.pushErrorScope("out-of-memory");
    
    
    
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
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([-0.25, -0.25, -0.5, -1.0, -0.25, -1.0, 0.5, -0.5, 1.0, -0.75, 0.25, 1.0, 0.0, -1.0, -0.5, 0.75, 0.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.25, 0.5, -0.25, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, -1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 1.0, 1.0, 0.75, 0.25, 0.0, 0.0, 0.75, 0.25, -0.5, 0.75, -1.0, 0.0, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -1.0, -1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, 0.75, 1.0, 0.25, -0.75, 0.25, -0.25, -0.5, 0.25, 0.5, -1.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, ]);
    render_bundle_encoder800.popDebugGroup();
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    render_bundle_encoder700.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.pushErrorScope("validation");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder800.popDebugGroup();
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer700.destroy()
    
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    texture802.destroy();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    
    render_bundle_encoder801.popDebugGroup();
    render_bundle_encoder800.popDebugGroup();
    
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
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
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture700.destroy();
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view8040 = texture804.createView({ label: "texture_view8040" });
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder702.insertDebugMarker("marker");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder901.popDebugGroup();
    
    
    render_bundle_encoder901.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture801.destroy();
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder702.popDebugGroup();
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    device70.pushErrorScope("out-of-memory");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    texture804.destroy();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device90.destroy();
    const array13 = new Float32Array([0.25, 0.0, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -1.0, -0.75, 0.0, -0.25, -0.75, 1.0, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, 0.25, 0.75, 1.0, -0.25, 0.0, -0.25, 1.0, 0.0, 0.0, -0.75, -0.5, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, -1.0, -0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, 0.5, -0.5, -0.75, -0.75, 0.25, -0.5, -1.0, 0.25, -0.5, -1.0, -1.0, -0.75, -0.5, 0.0, -0.25, -1.0, -0.5, 0.75, 1.0, -1.0, -0.5, -0.25, 1.0, 0.75, -0.75, 0.0, 1.0, 0.5, 0.0, -0.5, -0.75, 0.0, -0.75, 0.75, 1.0, -0.5, -0.25, 0.0, -0.25, 1.0, -0.25, -0.75, -0.75, 0.0, -0.25, ]);
    render_bundle_encoder802.pushDebugGroup("group_marker");
    texture800.destroy();
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    
    device80.pushErrorScope("out-of-memory");
    
    render_bundle_encoder802.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer703, 0, array12, 0, array12.length);
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer703, 0, array9, 0, array9.length);
    
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    device70.queue.writeBuffer(buffer703, 0, array13, 0, array13.length);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder701.popDebugGroup();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder800.popDebugGroup();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    texture701.destroy();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.pushErrorScope("validation");
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer703, 0, array5, 0, array5.length);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder801.popDebugGroup();
    const array14 = new Float32Array([0.75, 0.75, 1.0, 0.75, 0.25, -1.0, -0.5, -0.5, 0.5, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -0.25, 0.0, 0.25, 0.5, -0.25, 0.5, -1.0, -0.75, -1.0, 0.0, 0.25, 1.0, 0.75, 1.0, -0.75, -1.0, -0.25, 0.5, 1.0, -0.75, 0.0, 0.75, -0.5, 0.5, -0.25, 1.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.75, -0.5, 0.0, -0.75, 0.25, 0.75, -0.25, 1.0, 0.5, 0.25, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, -0.75, -0.5, 0.5, -1.0, 1.0, 1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.75, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.5, -0.75, 0.25, -0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 1.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, -1.0, 1.0, -0.5, ]);
    
    
    buffer702.destroy()
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device80.queue.writeBuffer(buffer802, 0, array11, 0, array11.length);
    device80.queue.writeBuffer(buffer802, 0, array14, 0, array14.length);
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device100.pushErrorScope("internal");
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    const array15 = new Float32Array([1.0, -1.0, 0.5, 0.0, -1.0, -0.75, 1.0, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.25, 0.0, 0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -0.5, 1.0, 1.0, 0.75, -0.5, -0.25, 0.25, 0.5, 0.0, -0.5, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, 0.5, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.0, 0.25, -0.25, -0.5, 1.0, -0.25, 0.5, -0.75, 0.5, -0.25, -0.75, 0.75, -1.0, 0.5, -1.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.5, -0.75, 0.5, -0.25, -0.75, 1.0, -0.25, -0.5, 0.75, ]);
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder800.popDebugGroup();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    texture1300.destroy();
    
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    
    buffer800.destroy()
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    device70.queue.writeBuffer(buffer703, 0, array11, 0, array11.length);
    
    
    
    
    
    
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder802.popDebugGroup();
    device70.queue.writeBuffer(buffer703, 0, array11, 0, array11.length);
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    buffer801.destroy()
    device130.queue.writeTexture({ texture: texture1301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.destroy();
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}