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
    
    const array0 = new Float32Array([-0.75, -0.5, -1.0, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, 0.25, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, 0.5, 0.5, 0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.25, 0.5, -1.0, -0.75, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.0, 0.75, -0.5, 1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.0, 0.75, -1.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.25, -0.5, -1.0, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, 0.5, -1.0, -0.25, -0.25, 0.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 1.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture000.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.destroy();
    const array1 = new Float32Array([-1.0, 0.25, 1.0, 0.5, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, -0.75, 0.75, -1.0, 0.0, 0.25, -0.5, 0.25, 0.75, 1.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.75, 1.0, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, -1.0, -0.5, -0.75, 0.5, -1.0, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 1.0, 1.0, 0.5, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, 0.0, -0.25, -0.75, 1.0, 1.0, -0.5, -1.0, -1.0, -0.5, 0.5, -0.25, 0.75, 1.0, 0.75, -0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 1.0, -1.0, 0.0, -0.25, 0.0, -0.5, 0.75, -0.25, 0.0, 1.0, 0.0, -0.5, 0.25, 0.0, -0.75, 0.0, 0.75, 0.0, 0.0, -0.25, ]);
    
    
    
    const array2 = new Float32Array([-1.0, 0.0, 0.5, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -1.0, -0.5, 0.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, -0.75, 0.25, 0.25, -0.5, -0.25, 0.25, -0.5, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.25, -1.0, 1.0, 0.25, 0.75, 0.75, -0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.25, 0.0, -0.25, -0.75, 0.0, 0.5, 0.75, 0.75, 0.75, 0.5, 0.0, 0.25, -0.25, 0.25, -0.5, 0.5, 0.75, 1.0, -0.25, 0.25, -0.5, 0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.0, 0.0, 0.25, -0.75, 0.75, -0.25, -0.5, -0.75, 0.25, -1.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.75, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, ]);
    
    
    
    
    const array3 = new Float32Array([-0.25, -0.5, -0.25, -1.0, 0.75, -0.75, 0.5, 1.0, 0.5, -0.75, 0.75, -0.5, -0.25, -0.5, 0.75, 1.0, 0.0, -0.75, 0.0, -0.5, 0.5, 0.75, 0.75, -0.25, -0.25, 0.25, -1.0, -0.75, -0.5, -1.0, 0.25, -0.5, 0.75, 0.5, -0.75, 0.0, 0.5, -0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, -1.0, 0.25, -1.0, 0.5, -0.5, 0.0, 1.0, -1.0, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, 0.5, 0.0, 1.0, -0.5, 0.25, 0.25, -0.25, 0.25, -1.0, 0.75, 0.0, -0.25, -0.75, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, -0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, -0.5, 0.75, 1.0, -0.25, ]);
    const array4 = new Float32Array([-0.5, 0.25, 0.75, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, -1.0, 0.0, -0.75, -1.0, 0.75, 0.0, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.0, -0.5, 0.75, 1.0, 0.0, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 0.5, -0.75, -1.0, 0.5, 0.25, -1.0, 0.75, 0.25, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 0.5, -0.25, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -0.5, -0.75, 0.25, -0.75, -1.0, 1.0, 0.25, -0.25, 0.5, -0.75, -0.5, 0.5, 0.25, -0.75, 0.0, -1.0, -0.25, -0.5, 1.0, -0.25, 0.75, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array5 = new Float32Array([-0.25, 0.25, 1.0, -0.5, -0.5, 0.5, -0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 0.0, -0.25, 0.5, -1.0, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 0.5, 0.25, 0.0, 0.75, -1.0, 0.25, 1.0, -0.5, 0.0, 1.0, 0.75, 0.25, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, 0.0, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array6 = new Float32Array([0.75, -1.0, -0.75, -0.5, 0.0, 0.0, 0.5, 1.0, -0.5, 1.0, 0.75, -0.5, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -0.25, 0.0, 0.25, 0.25, 1.0, -1.0, -0.25, -0.25, 1.0, 1.0, 0.25, -1.0, -0.25, -1.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.5, 0.25, -0.5, 0.5, -0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, -1.0, -0.5, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, -1.0, 1.0, 0.0, 0.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.5, -0.25, -0.75, -1.0, 1.0, 0.0, -0.5, 1.0, -0.5, -1.0, -0.75, 0.5, 0.5, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture301.destroy();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.destroy();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array7 = new Float32Array([-0.25, 0.5, 0.75, -0.75, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, 0.5, 0.5, -0.5, 0.5, 0.5, -1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, 0.5, -0.75, 0.5, 0.5, 1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.0, 0.0, -0.75, 0.0, 0.5, 0.5, -1.0, -1.0, -0.25, -0.5, 0.75, -1.0, 0.0, -0.5, 0.25, -1.0, 1.0, -0.5, -0.25, 0.5, 1.0, 1.0, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, 0.25, -0.75, -1.0, 0.25, -0.25, 0.75, 0.25, -0.25, -1.0, -0.5, -1.0, -1.0, 0.75, -1.0, -0.25, -0.25, -0.25, -0.25, -1.0, 0.25, -1.0, 1.0, 1.0, 0.25, -0.25, 0.5, 1.0, 0.5, -0.75, 0.0, 0.0, -1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const array8 = new Float32Array([0.5, -0.5, -0.25, -0.5, -0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, -1.0, 0.75, -0.5, 0.25, -0.25, 0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 0.25, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, -0.25, 1.0, 0.25, -0.75, 0.5, 0.0, -0.5, -0.5, 1.0, 0.25, 0.25, -1.0, 1.0, 1.0, 1.0, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -0.25, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, -1.0, 0.25, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, -1.0, 0.25, -0.25, -0.75, 1.0, -1.0, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, -0.75, 0.25, -1.0, -1.0, ]);
    
    const array9 = new Float32Array([0.25, -0.75, -0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, 0.75, -0.75, 0.25, 0.5, 1.0, 0.5, 0.25, -0.5, 0.75, -0.25, 1.0, -0.75, 0.25, 0.75, -0.75, -1.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, 0.75, 0.25, -0.25, 0.5, 0.0, -0.25, -0.25, 0.25, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.25, 0.5, -1.0, -1.0, 0.75, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.0, -0.25, 0.75, 1.0, -0.25, -0.5, -0.5, -0.25, 0.0, -1.0, -0.75, -0.5, 0.75, -0.25, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    texture500.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeTexture({ texture: texture501 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer500.destroy()
    
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder500.popDebugGroup();
    const array10 = new Float32Array([0.0, 0.0, 0.75, 0.75, 0.0, 0.25, 0.5, 0.0, 0.25, -0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, -0.5, 1.0, 0.75, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, 0.25, -0.5, 0.75, 0.5, -1.0, 0.75, 0.5, -0.5, -0.5, -0.25, -1.0, 0.25, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 0.0, 0.75, -0.25, -0.5, -0.25, 0.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.75, 0.75, 1.0, 0.25, -0.25, -0.75, 0.5, 0.0, -0.75, 0.5, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, 0.0, 0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -0.5, -0.75, 0.25, 1.0, 0.0, 0.5, ]);
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder600.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture600.destroy();
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device70.queue.writeTexture({ texture: texture701 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    
    
    
    render_bundle_encoder601.popDebugGroup();
    texture601.destroy();
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture701 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer600.destroy()
    
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device70.queue.writeTexture({ texture: texture701 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder600.popDebugGroup();
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder602.popDebugGroup();
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeTexture({ texture: texture701 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    
    texture701.destroy();
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    
    
    buffer702.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    render_bundle_encoder600.popDebugGroup();
    
    buffer601.destroy()
    
    
    device70.destroy();
    const array11 = new Float32Array([-0.25, 0.75, 1.0, -0.5, 1.0, -0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -1.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.25, 0.5, -1.0, 1.0, -0.5, 1.0, 0.0, 0.0, -1.0, 0.75, -0.25, 1.0, -0.25, 0.25, -1.0, 0.5, -0.75, -0.75, -0.5, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -0.75, 0.5, 0.25, -0.5, 0.5, -1.0, 0.5, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, -0.25, 1.0, -0.25, -1.0, -0.5, -0.5, 0.0, 0.0, 1.0, 0.25, -0.5, -0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.75, -0.5, 0.5, 0.5, 0.0, -0.5, -0.25, 0.0, -0.75, ]);
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.popDebugGroup();
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    render_bundle_encoder600.popDebugGroup();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    texture602.destroy();
    render_bundle_encoder602.popDebugGroup();
    
    
    
    
    
    
    
    
    const sampler607 = device60.createSampler( { label: "sampler607" } );
    
    device60.destroy();
    
    
    
    
    const array12 = new Float32Array([0.5, -0.5, -0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 0.25, -1.0, 0.5, 0.5, 0.5, 0.75, -1.0, 0.75, -0.75, 0.75, -0.75, -0.5, -1.0, 0.5, 0.25, 0.75, -1.0, -0.5, 0.25, -1.0, -0.5, -0.25, -1.0, 0.5, 0.25, 0.0, 1.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, 0.75, -1.0, 0.0, -1.0, 0.5, 0.0, -0.25, 0.75, 0.25, -0.25, -1.0, 0.0, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, -1.0, 0.25, -0.25, -0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.5, -0.5, 0.75, -0.75, -0.5, -1.0, 0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 0.5, 0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 1.0, ]);
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([-0.25, 1.0, 0.5, -0.25, -0.75, -0.25, 0.25, 0.0, 0.25, -0.75, -0.25, 0.75, 0.75, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, -0.5, 0.75, 0.25, -0.75, 0.75, 0.5, 0.75, 1.0, 0.0, -0.25, 0.75, 0.25, -0.5, -0.75, -0.5, 0.0, -0.25, 0.75, -1.0, 0.75, 0.0, -0.25, -1.0, 0.75, 1.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.5, -1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.75, 0.0, 0.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.25, 0.25, 0.75, -0.75, -0.75, -0.75, 1.0, 0.75, 0.75, -0.75, -1.0, -0.25, -1.0, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, 0.0, 0.75, 0.25, 0.75, ]);
    
    
    
    const array14 = new Float32Array([-0.5, -0.25, -0.75, -0.75, 0.0, 0.75, -0.75, -0.25, 0.25, -0.75, 0.5, 0.25, -1.0, 0.0, -0.25, 0.5, 0.5, 0.25, -1.0, 0.0, 0.25, 0.25, 0.0, -0.5, 0.75, 0.5, -1.0, -0.25, -0.25, 1.0, -0.75, -0.5, -0.25, 0.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -1.0, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.5, -1.0, -1.0, 0.0, 1.0, -1.0, 0.75, 0.5, -1.0, 0.75, 0.75, 1.0, -0.25, 0.0, 0.5, -0.25, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 1.0, 0.0, -0.5, -0.75, -0.75, 0.25, -0.75, 1.0, -0.5, -1.0, 0.5, -1.0, -0.75, 0.75, 1.0, -0.75, -0.5, -0.25, -1.0, -0.25, ]);
    const array15 = new Float32Array([-0.5, 0.75, -0.5, 0.5, 1.0, 0.0, 0.5, -1.0, -0.75, -1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.75, 0.5, -0.5, 1.0, 0.25, -0.25, 0.5, 0.5, 1.0, 1.0, 0.25, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 0.5, 0.25, -0.75, -0.25, -0.5, 0.75, 0.25, -1.0, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, -0.75, 0.25, 1.0, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 1.0, 0.0, 1.0, 0.75, 0.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 0.25, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.0, 1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, -0.25, -1.0, -1.0, -0.25, 0.75, -1.0, ]);
    
    
    
    
    
    
    
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    device80.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array16 = new Float32Array([-1.0, -1.0, 0.5, -1.0, -1.0, 0.5, -0.25, 0.5, 0.75, -1.0, -0.75, 0.25, 0.5, -0.5, -0.25, -0.75, 0.75, -0.5, 0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 0.25, -0.25, 0.5, 1.0, 0.0, 0.75, 0.25, -0.75, -0.25, 1.0, 0.5, -0.75, 1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -0.5, -0.25, 0.0, 0.75, 0.0, 0.0, 0.0, 0.25, 0.5, 1.0, 1.0, 1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.75, 0.0, 0.0, 0.0, 1.0, -0.75, 0.25, 1.0, -1.0, 1.0, -0.5, 0.25, 1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.25, 0.25, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, -0.25, 0.25, 1.0, 0.5, 0.75, 0.25, -0.25, 0.75, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, ]);
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array17 = new Float32Array([-1.0, 0.5, -0.25, 0.25, 0.75, -0.75, -0.5, -0.5, 0.75, 0.25, -0.75, 0.25, 0.5, -1.0, 0.5, -1.0, 0.0, 0.75, -0.75, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.75, 1.0, -0.25, 0.25, -1.0, 0.25, -0.5, 0.75, -0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 0.75, -1.0, -0.25, 1.0, 0.0, -0.5, 0.25, -1.0, -0.25, -0.25, 0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.75, -0.5, 0.25, 0.75, 0.75, -0.75, -1.0, -0.5, 0.25, 0.75, -0.5, ]);
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device90.destroy();
    const array18 = new Float32Array([-0.25, 0.5, -0.75, 0.75, 0.75, 0.5, 0.25, 0.0, 0.75, -1.0, 0.5, 1.0, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, 0.0, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.5, 1.0, -1.0, -1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.25, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, -0.25, -0.25, 0.25, 0.5, 0.5, 0.0, -0.75, 0.5, -1.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, 0.25, -0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.25, -0.5, 0.5, 0.75, -0.25, 0.25, 0.75, 1.0, 0.25, -1.0, -0.25, -0.25, -0.5, -0.5, -0.75, -0.5, -0.5, -0.75, 0.5, ]);
    
    const array19 = new Float32Array([-1.0, 1.0, 0.75, -1.0, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 0.25, -1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, -0.75, -0.5, -0.75, -0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 1.0, -0.75, -0.5, -0.75, -1.0, -1.0, -0.25, 0.5, -0.25, -0.25, 1.0, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.75, -0.75, 0.25, -0.25, -1.0, 0.5, 0.0, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, -0.5, -0.5, -0.5, 0.25, -0.75, 1.0, -0.5, 0.0, -0.25, -0.25, 1.0, -0.75, -1.0, ]);
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    device110.destroy();
    
    
    
    
    
    const array20 = new Float32Array([0.25, -0.25, 0.25, -0.25, -1.0, 0.0, 0.25, -0.75, -1.0, 0.75, 0.75, 0.5, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, -0.75, 0.75, -0.5, 0.0, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 1.0, 0.5, -0.75, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 0.0, -1.0, 1.0, 0.5, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 1.0, 0.5, 0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 0.25, -0.5, -0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.0, 1.0, -1.0, 0.0, -0.25, -0.25, -0.75, 0.25, -0.25, -0.25, 0.5, 0.25, ]);
    
    
    
    
    
    
    device100.destroy();
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array21 = new Float32Array([-0.25, -0.5, -0.25, -1.0, 0.0, 1.0, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, 0.5, 0.25, 0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 1.0, -0.75, -0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, -0.75, 0.0, 0.5, 0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 0.75, 0.0, 1.0, 0.75, 0.0, -0.75, -0.5, 0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, -0.25, 1.0, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 0.75, 1.0, 0.0, 0.75, 0.0, 0.75, 1.0, -0.75, 0.25, 0.25, -1.0, -0.5, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, 0.0, -0.75, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, -0.75, -0.25, 1.0, ]);
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1201.destroy();
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    
    
}