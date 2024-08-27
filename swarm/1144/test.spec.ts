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
    const array0 = new Float32Array([1.0, 0.75, 1.0, 0.25, 0.5, 0.0, -0.25, 0.75, 0.75, -0.25, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, -0.5, -0.75, -0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 0.75, -0.5, -0.25, 1.0, -0.25, -0.75, 0.75, 0.25, -0.25, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.5, 0.0, -0.75, -0.75, -0.5, -0.25, 0.25, -1.0, 0.75, 0.5, 0.75, 0.0, -1.0, 0.75, 0.75, 0.0, -0.5, 1.0, -0.75, 0.75, -1.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.75, -0.25, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, -1.0, 0.5, -0.5, 1.0, 0.75, 1.0, -0.75, 0.75, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, -0.5, 0.0, -0.75, 1.0, -0.25, 0.25, -0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-1.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.5, -0.75, -0.25, -0.75, -0.75, -0.25, 0.5, -0.5, -0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 0.0, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, 0.25, 0.75, -1.0, 0.75, 0.0, -1.0, 0.5, 1.0, 0.75, -1.0, 1.0, -1.0, -0.75, 0.0, 0.0, -0.75, -0.5, 0.25, -1.0, 0.75, -0.75, 0.25, -1.0, -0.5, -0.25, -0.5, -0.25, 0.25, -1.0, 0.25, 0.25, -1.0, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, 0.75, 1.0, 0.5, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, 0.0, 0.5, 0.25, 0.25, -0.5, -1.0, -0.75, 0.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -1.0, 0.0, 1.0, 0.5, 0.75, -0.75, 0.5, 0.0, -1.0, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.0, 0.75, -1.0, 1.0, 0.0, 0.0, 0.25, 1.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, 0.75, -0.5, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, 0.0, 1.0, -1.0, -1.0, 0.5, -1.0, 0.5, 0.75, -0.75, 0.0, -0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, -0.75, -1.0, -0.5, -0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 0.5, 0.5, 0.0, -1.0, 1.0, 0.5, -0.5, 1.0, 0.25, -0.5, 0.75, -0.5, 1.0, -0.75, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 0.25, -0.5, 1.0, 0.25, -0.5, -0.25, 1.0, -0.5, 0.0, 0.5, 0.25, 0.0, 0.5, -1.0, -1.0, 1.0, -1.0, 0.5, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([0.75, 0.0, -0.75, 0.5, -1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.25, -1.0, -0.75, 0.0, 0.0, 0.25, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.75, 0.0, 0.5, 0.75, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, -0.75, 1.0, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, -1.0, -1.0, 0.0, -1.0, -0.25, -0.75, 0.5, -0.75, -0.5, 0.25, 1.0, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, -0.75, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, 0.25, -0.75, 0.0, 0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -0.25, -0.5, 0.0, -0.25, -0.75, 0.75, -1.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    
    const array4 = new Float32Array([0.25, 0.0, -0.75, -1.0, 0.25, -0.25, 1.0, 0.25, -0.75, 0.25, 0.25, 0.25, 0.25, 1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, 0.25, -0.5, 1.0, 0.75, 0.0, 0.25, -0.5, 0.75, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, 0.25, -0.5, -0.75, 0.5, -0.5, -0.75, 0.5, -0.5, 1.0, 0.25, -1.0, 0.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.75, 0.5, -0.25, 0.75, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, 0.0, 0.0, 0.75, -0.5, -0.5, -0.5, 0.25, -0.25, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, 0.0, -0.75, -0.75, 0.75, -0.75, -0.75, 0.0, 0.25, -0.25, 0.0, -1.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.destroy();
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.destroy();
    
    const array5 = new Float32Array([0.25, -0.5, 0.25, -1.0, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.75, -0.25, 0.75, 0.75, -1.0, 1.0, 0.75, -0.75, -1.0, 0.5, -0.25, -0.25, 0.25, 0.0, -0.75, 0.0, -0.5, -0.75, 0.0, -0.75, 0.5, -0.75, -0.5, -0.25, -1.0, 0.0, 0.0, -1.0, 0.0, 0.25, -0.5, 1.0, -1.0, 0.5, -0.75, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.5, -0.75, -0.25, -0.75, 0.5, 0.5, -0.25, 0.5, 0.0, 0.25, -0.25, 1.0, -0.5, -0.75, 0.75, 0.75, -0.25, -0.25, -0.5, 0.75, -1.0, -0.5, -0.75, 0.75, 0.25, -0.75, -0.5, 0.5, -0.5, -0.5, 0.25, 0.5, -0.5, -0.25, 0.75, 0.0, 1.0, 0.75, ]);
    const array6 = new Float32Array([-0.5, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.25, -1.0, -0.75, -1.0, 0.5, 0.5, 1.0, -0.75, -0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 1.0, 0.5, 0.75, -0.75, 0.75, 0.5, -0.75, 1.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, -0.5, -0.75, -0.5, 0.75, 0.5, 1.0, 0.0, -0.75, 0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, 1.0, 0.25, 1.0, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, 0.5, -0.5, 0.0, -0.75, -1.0, 0.25, 1.0, 0.25, 0.0, 1.0, -0.75, 0.0, 0.75, -0.75, 0.25, -0.25, 0.75, ]);
    device30.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.destroy();
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device10.destroy();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([-0.25, -0.25, -0.5, -0.75, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, 0.0, -0.25, -0.25, 0.25, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, -0.25, -0.25, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.5, 1.0, 0.5, -1.0, -0.5, 0.25, 0.5, 0.5, -0.5, 1.0, -0.25, 1.0, -1.0, -1.0, -0.75, 0.25, 0.25, 1.0, 0.5, 0.0, -0.5, -0.75, -0.25, 1.0, -0.75, 1.0, 0.75, 0.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, 0.75, -0.5, -0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.0, 0.5, -0.25, -0.75, 0.0, 1.0, 0.5, -1.0, 0.5, 0.75, 0.0, -0.75, 0.0, 0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.0, 0.75, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device20.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const array8 = new Float32Array([0.0, -0.5, 0.5, -0.5, 0.5, -1.0, 1.0, -0.5, 0.5, -0.25, 1.0, -0.5, 1.0, 0.75, 1.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.0, 0.5, 1.0, 0.75, 0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, 0.75, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.75, 0.0, 1.0, 1.0, -1.0, 0.25, 1.0, 0.75, 0.75, 0.0, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, 0.25, 1.0, -1.0, 0.75, 0.75, 1.0, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -0.75, -0.25, 0.25, -0.5, -0.5, -0.5, -0.25, 0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.75, 0.0, -0.5, 0.5, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, 0.0, ]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.submit([]);
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device40.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture502.destroy();
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    texture501.destroy();
    device50.pushErrorScope("out-of-memory");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
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
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    texture100.destroy();
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    texture500.destroy();
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    texture500.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device50.destroy();
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const array9 = new Float32Array([0.5, 0.0, 0.75, 0.75, 0.0, 0.25, -1.0, 0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.25, 0.25, 0.0, -0.25, 0.25, 0.25, -0.25, 1.0, -0.5, -0.5, -0.25, 1.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.5, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, -0.25, -0.75, -0.5, -1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 0.5, 0.0, 0.75, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, -0.75, -1.0, 1.0, -0.25, 1.0, -0.25, 0.0, -1.0, -0.75, -0.75, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 1.0, 1.0, 0.75, 0.0, 0.5, -1.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.25, 0.5, ]);
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    
    
    
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture600.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    device00.pushErrorScope("out-of-memory");
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    const array10 = new Float32Array([-1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.75, -0.25, 1.0, 0.75, 1.0, 1.0, -1.0, -0.75, -0.5, 0.75, 1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -1.0, 0.5, 1.0, -0.25, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 1.0, 0.0, 0.25, -0.5, -0.75, 0.5, 0.0, 0.5, 0.0, -1.0, 0.5, -0.5, -0.5, -0.75, 0.0, -1.0, -0.75, -0.5, -0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.75, 1.0, 0.0, 0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -1.0, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, 0.25, -0.5, -1.0, -0.75, ]);
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.pushErrorScope("out-of-memory");
    
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    device80.queue.submit([]);
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    texture200.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer201, 0, array10, 0, array10.length);
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device80.queue.writeTexture({ texture: texture800 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.pushErrorScope("out-of-memory");
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    texture800.destroy();
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    
    device100.queue.writeBuffer(buffer1000, 0, array6, 0, array6.length);
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    
    const query804 = device80.createQuerySet({
        label: "query804",
        type: "occlusion",
        count: 32,
    });
    
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    device100.queue.submit([]);
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const query805 = device80.createQuerySet({
        label: "query805",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device100.pushErrorScope("validation");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device80.queue.writeBuffer(buffer801, 0, array0, 0, array0.length);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.destroy();
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device80.queue.writeTexture({ texture: texture802 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    
    device80.queue.writeTexture({ texture: texture802 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    
    texture801.destroy();
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    {
        await buffer800.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer800.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer800.unmap();
        console.log(new Float32Array(data));
    }
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer803, 0, array7, 0, array7.length);
    
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    device110.pushErrorScope("validation");
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device80.queue.writeBuffer(buffer803, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    device60.destroy();
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    texture1001.destroy();
    
    {
        await buffer802.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer802.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer802.unmap();
        console.log(new Float32Array(data));
    }
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    device100.queue.writeTexture({ texture: texture1000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query806 = device80.createQuerySet({
        label: "query806",
        type: "occlusion",
        count: 32,
    });
    
    device100.queue.writeBuffer(buffer1000, 0, array1, 0, array1.length);
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query807 = device80.createQuerySet({
        label: "query807",
        type: "occlusion",
        count: 32,
    });
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    device80.queue.writeBuffer(buffer800, 0, array9, 0, array9.length);
    device80.queue.writeTexture({ texture: texture802 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device80.queue.writeBuffer(buffer800, 0, array7, 0, array7.length);
    
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    device100.queue.writeBuffer(buffer1000, 0, array2, 0, array2.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device40.destroy();
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}