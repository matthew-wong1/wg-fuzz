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
    
    
    const array0 = new Float32Array([0.0, -0.5, -0.5, 0.0, 0.75, 0.0, -0.25, -1.0, -0.25, -0.75, -0.75, -1.0, 0.0, 0.75, -0.25, -0.5, 0.5, 0.5, -0.25, 0.75, -0.25, -0.5, 0.25, 0.0, -0.75, -0.25, 0.0, 0.75, 0.75, 0.5, -0.5, -0.5, 0.0, -0.75, 0.25, 1.0, -1.0, -1.0, -0.5, -0.5, 0.0, 0.5, -0.25, 0.0, -0.5, 0.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.25, -0.5, 0.5, 0.75, 0.5, -1.0, 0.5, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, 0.25, 0.75, -0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.0, -0.25, 0.0, 0.0, 0.0, 0.75, 1.0, -0.5, 0.25, -0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -0.5, -0.25, 0.25, 0.25, -0.75, 0.75, 0.5, 1.0, 1.0, -0.25, 0.25, 0.75, -0.25, ]);
    const array1 = new Float32Array([-0.75, 1.0, 0.0, 0.75, 1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, -0.5, 1.0, -0.5, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, 0.25, -0.5, 0.25, 0.25, 0.0, -0.25, 1.0, -0.75, -0.25, -0.25, 1.0, 0.0, 0.75, 0.75, 0.75, -0.5, 1.0, 0.5, -0.25, -0.75, -0.5, -1.0, 0.25, 1.0, -0.5, 0.25, 1.0, 1.0, 0.25, -0.5, 0.0, 1.0, 1.0, 0.75, 0.25, 0.5, 0.25, -1.0, 0.75, 0.5, 0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, 0.75, 0.5, 0.0, -0.25, 0.0, -0.25, -0.25, -0.25, -0.25, -0.25, 0.5, -0.75, 0.0, 1.0, -0.5, 0.25, 0.0, 0.0, -0.5, 1.0, -0.5, 0.5, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, ]);
    const array2 = new Float32Array([-0.25, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 0.75, 0.75, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 1.0, 0.75, 0.25, -1.0, -0.75, 0.0, -0.75, -0.5, -0.75, 0.75, 0.25, 0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.75, 0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, -0.25, 1.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.75, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 0.25, -0.5, -0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 0.25, 0.75, -0.25, 0.25, ]);
    const array3 = new Float32Array([0.25, 0.25, -1.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.75, 0.0, 0.25, 0.75, -0.25, -0.75, 1.0, 1.0, -1.0, 1.0, -0.25, -1.0, 1.0, -0.25, 0.5, -0.75, 0.25, -0.25, -0.25, -0.5, -0.5, -0.5, -0.5, -1.0, -1.0, -0.25, 0.75, 0.75, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 1.0, 1.0, -0.25, 0.0, 0.5, -1.0, 0.5, 0.75, 0.25, 0.5, 0.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, -0.25, 0.25, -0.25, -0.25, -0.75, -1.0, -0.25, -1.0, -1.0, -0.25, 0.5, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, -0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -1.0, 0.25, -0.5, 1.0, -1.0, -0.75, -0.25, 0.25, -1.0, -0.25, 1.0, ]);
    const array4 = new Float32Array([0.25, 0.25, -0.5, 0.75, -0.5, -0.25, 0.75, -0.25, -1.0, 1.0, -1.0, -0.25, -0.25, 0.25, 0.75, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -1.0, -1.0, 1.0, -1.0, 0.75, 0.0, 0.75, -0.5, -0.5, 0.25, 1.0, -1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -1.0, -0.25, 0.25, -1.0, 1.0, -0.75, -1.0, 0.5, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, 0.5, 1.0, 0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 0.75, -1.0, 0.0, 1.0, -0.75, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 1.0, -0.5, 0.75, -1.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.25, -1.0, -0.25, -0.5, 1.0, 0.5, 0.5, -0.75, 1.0, ]);
    
    const array5 = new Float32Array([-0.25, 1.0, 0.75, -0.75, -0.25, 0.25, -0.75, -1.0, 0.0, -0.5, -1.0, 0.25, -1.0, 1.0, -0.25, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -1.0, -0.75, 1.0, -0.5, 0.75, 0.75, 1.0, 1.0, 0.75, -1.0, 1.0, -0.5, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, 0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.5, 0.25, 0.75, -0.75, -0.25, 0.0, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, -0.5, 0.25, 0.5, -0.75, 1.0, -0.75, 0.5, -0.75, -1.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, 1.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.25, 0.25, 1.0, -0.25, 0.25, 1.0, 0.5, 0.5, ]);
    const array6 = new Float32Array([0.25, -0.5, -1.0, -0.5, -0.75, 0.5, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 1.0, 0.75, 0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 0.0, 0.75, -0.5, 0.75, 0.5, 1.0, 1.0, -0.5, 0.5, -0.75, -0.5, -0.75, -1.0, 0.5, -0.5, 0.5, 0.75, 0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, -1.0, 0.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.25, -1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.5, 0.25, 0.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.75, 0.75, -1.0, -0.25, 0.5, -0.5, -0.75, -0.5, 0.75, -0.5, -1.0, -1.0, 0.0, -1.0, 0.0, 0.5, 0.25, -0.5, 0.75, 0.0, 0.5, -0.5, 0.75, 0.0, -0.75, -1.0, 0.5, -0.25, -0.25, ]);
    
    
    
    
    
    const array7 = new Float32Array([0.75, -0.5, 1.0, 0.5, -0.5, 0.75, 1.0, 0.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 0.5, 0.0, 0.5, 0.0, 0.5, 0.25, 0.0, -1.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.0, -0.5, 0.0, -1.0, 0.0, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.75, 0.5, 1.0, 0.25, 1.0, 0.5, 0.75, -0.25, 1.0, 0.75, 0.0, -0.5, 0.5, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, 1.0, 0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, 0.75, 0.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, -0.75, 0.25, 0.25, 1.0, ]);
    const array8 = new Float32Array([1.0, -0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.0, -0.25, 0.75, -0.5, -0.25, 0.0, -1.0, 0.5, -0.75, -0.75, -1.0, 0.25, 1.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 0.5, -0.75, -0.5, -0.75, -1.0, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, 0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 0.25, 1.0, -0.25, 0.0, 0.25, 0.75, -1.0, 0.0, 0.75, 0.5, -0.25, -0.75, 0.5, -0.25, 0.25, 0.25, 0.0, -0.25, 0.0, 0.25, -0.75, -1.0, 1.0, 0.5, 1.0, 1.0, 0.5, 1.0, -0.5, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, -1.0, 1.0, 0.0, 0.0, 0.5, -1.0, 0.75, -0.25, -0.5, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([0.25, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, -1.0, -1.0, 0.25, 0.25, 0.25, -0.25, -1.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 1.0, 0.5, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, 0.0, 0.5, 0.0, 0.75, -0.25, 1.0, -0.5, 0.75, 1.0, 0.0, 0.25, -0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 0.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 0.5, -0.5, -0.5, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, -0.5, 0.0, -0.25, -0.75, 0.5, 0.25, 0.0, 0.5, 1.0, 0.75, 1.0, 0.5, 0.5, -1.0, -0.5, -0.25, 0.25, -1.0, 1.0, 0.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    device00.destroy();
    const array10 = new Float32Array([0.0, -0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, 0.75, 0.0, -0.5, 1.0, -0.75, -0.5, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, 0.75, 0.0, 1.0, 1.0, -0.5, -1.0, 0.75, 0.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, -0.75, -0.75, -0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, -0.25, -0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 0.25, -0.75, 0.5, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.75, -1.0, -1.0, 0.5, 0.25, 0.5, -0.25, -0.5, 0.25, 0.5, -0.75, 0.0, -0.75, 0.5, 0.5, 0.5, -0.25, -1.0, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, ]);
    const array11 = new Float32Array([-0.25, -0.5, 1.0, 0.75, 0.0, -1.0, 0.25, 0.75, 1.0, -0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.0, -0.25, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 0.0, -0.5, 0.75, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, -1.0, -0.5, 0.75, -0.5, 0.75, -0.25, -0.75, -1.0, -1.0, -0.5, 0.25, 0.75, 0.0, 1.0, -0.5, 0.75, 1.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, -0.25, -0.25, 0.0, -0.5, -1.0, 0.75, 1.0, -0.25, -0.75, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, -1.0, -0.5, -0.75, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 0.25, -0.25, 0.0, 0.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.pushErrorScope("validation");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array12 = new Float32Array([0.25, -0.75, 0.75, 0.0, 0.75, -0.5, 0.5, -0.75, -0.25, 0.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 1.0, 0.75, -0.5, 1.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, 1.0, 1.0, 0.75, 0.75, -0.75, -0.5, 0.25, 0.25, 0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 0.5, 0.75, -0.75, 0.5, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, 0.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, -0.5, 0.0, 1.0, 0.0, -1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 1.0, -0.75, 0.75, 0.25, -0.25, -1.0, 0.75, -1.0, -0.5, 1.0, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    texture300.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-0.25, 0.25, 1.0, -1.0, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.25, 0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.0, -0.75, 0.0, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, 0.0, 0.75, 0.5, 0.0, -0.75, -0.25, -1.0, 0.75, 1.0, 0.75, -1.0, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 1.0, -0.5, 0.75, 1.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.5, 1.0, -0.5, 1.0, -0.25, -0.75, 0.0, 0.5, -0.5, 0.0, -0.75, -0.25, 0.25, -0.25, -0.25, -0.25, -1.0, -0.25, 0.25, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
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
    texture301.destroy();
    
    const array14 = new Float32Array([-0.5, 0.0, 0.75, 0.75, -0.5, 1.0, 0.75, 0.5, 0.5, -0.75, 0.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -1.0, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 0.5, 0.75, 0.75, 1.0, -0.5, 0.25, 0.75, 1.0, 0.25, 0.5, 0.0, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, -1.0, -0.5, -0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 0.25, 1.0, 0.25, -0.75, -0.25, -0.75, -0.25, -1.0, 0.75, -0.5, 1.0, -0.5, 0.75, 0.75, 0.25, 1.0, -0.25, -1.0, -0.75, 0.75, -1.0, 0.75, 0.75, -0.75, -0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -0.25, 0.0, 0.5, 0.0, 0.0, -0.5, 0.0, 0.0, 1.0, 0.25, -0.75, ]);
    texture302.destroy();
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device30.pushErrorScope("out-of-memory");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    device10.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const array15 = new Float32Array([-0.25, -1.0, 0.5, 1.0, -1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, 1.0, 1.0, -0.75, 1.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.25, 0.25, 0.75, -0.75, 1.0, -0.75, 0.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.75, 0.75, -0.75, 0.25, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, 0.75, -0.25, 0.5, 0.25, 0.5, 0.5, -0.75, 0.75, 0.75, 1.0, 0.75, 1.0, 0.75, 0.5, -0.25, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, -0.5, -0.25, -0.5, 0.75, -0.75, -1.0, 0.5, -1.0, -0.5, -0.25, 0.75, 0.25, 0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -0.75, 0.0, -0.75, 0.5, -0.75, 1.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.25, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    const array16 = new Float32Array([-0.75, 0.25, -0.25, -0.5, -0.25, 0.25, -1.0, 0.75, 1.0, -0.25, 0.0, 0.25, -0.5, -0.5, 0.5, -1.0, 0.0, -1.0, 0.5, 0.75, -0.5, 0.75, -1.0, -0.25, 1.0, -0.25, -0.5, 0.5, -0.25, 1.0, 0.75, -0.5, 0.25, -0.5, 0.75, 1.0, 1.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, -0.5, -0.75, -0.25, 0.0, 0.0, 0.0, 0.25, -0.25, 0.0, -0.75, 0.75, -0.5, -0.75, -1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 0.5, 0.0, 0.0, -1.0, 0.25, 1.0, 0.75, -1.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, 0.0, -0.25, 1.0, 0.0, -0.5, 0.75, 0.5, -1.0, -1.0, 0.75, -0.25, -1.0, -1.0, ]);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeTexture({ texture: texture303 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device60.destroy();
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    texture303.destroy();
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    device30.queue.writeBuffer(buffer301, 0, array15, 0, array15.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    
    
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const array17 = new Float32Array([0.25, 0.75, 1.0, 0.5, 0.5, -0.25, -0.25, 0.0, -0.25, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.75, 0.5, -0.75, 0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 1.0, -1.0, -0.75, -0.25, -0.5, 1.0, 0.5, 0.75, 0.75, 1.0, -1.0, 1.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.75, -0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 1.0, 0.25, 0.75, -0.25, 0.75, 1.0, 0.25, 0.75, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 0.75, -0.5, 0.25, 0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 1.0, 0.5, 0.75, -1.0, -0.25, -0.25, -0.5, 0.5, 0.25, 0.5, 1.0, 0.75, -1.0, 0.25, -1.0, -0.25, ]);
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device30.queue.writeBuffer(buffer303, 0, array16, 0, array16.length);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array15, 0, array15.length);
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    device30.queue.writeTexture({ texture: texture302 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array13, 0, array13.length);
    
    
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device00.queue.writeBuffer(buffer000, 0, array13, 0, array13.length);
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    
    device70.destroy();
    
    texture304.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
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
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.pushErrorScope("validation");
    
    const render_pipeline3018 = device30.createRenderPipeline({
        label: "render_pipeline3018",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.destroy();
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array18 = new Float32Array([0.75, 0.5, 1.0, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, 0.0, 0.75, -0.75, 0.5, -0.75, -0.75, -0.75, 0.25, -1.0, -1.0, 0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 0.75, -0.25, 0.75, 1.0, -0.25, 0.25, 0.75, 0.0, -0.75, 1.0, 0.25, 0.25, 0.25, 0.5, 0.0, 0.5, -0.5, -0.25, 0.0, -0.75, -0.25, -1.0, 0.75, -1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, 1.0, -0.75, 1.0, -0.75, -1.0, -0.25, 0.25, 0.75, -0.75, 0.25, -0.25, 1.0, -0.75, -0.75, 0.25, -1.0, -0.5, -1.0, 0.5, 0.75, 0.75, 0.5, 1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 0.75, 0.5, 0.25, -0.75, 0.0, 0.5, -0.5, 0.0, 0.5, 1.0, -0.75, 0.0, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device90.destroy();
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
    texture1000.destroy();
    device100.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const array19 = new Float32Array([0.25, -0.5, 0.25, 1.0, -0.5, 0.25, -0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 0.25, 0.0, -1.0, -0.75, 0.25, 0.25, -0.75, -1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.25, -0.5, 0.75, 0.0, -1.0, 0.25, 0.0, -0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.5, -1.0, 0.0, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.25, 0.5, 0.25, 0.75, -0.25, -0.5, 0.5, 0.0, -0.75, -1.0, 0.5, 0.25, 0.5, -1.0, -0.5, 0.75, 1.0, -1.0, 0.75, 1.0, 0.75, 0.75, -0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -0.5, -0.5, -0.75, -0.5, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.5, 0.0, -0.25, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer000, 0, array17, 0, array17.length);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device80.pushErrorScope("out-of-memory");
    const array20 = new Float32Array([-1.0, 0.75, -0.5, -0.25, 0.25, 0.0, -0.75, -0.25, -1.0, 0.5, 0.5, -0.25, 0.5, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.75, -0.5, -0.25, 0.0, 0.75, -0.75, 0.5, -0.5, 0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -0.5, 0.25, 1.0, -0.75, -0.75, -0.25, 1.0, 0.75, -0.25, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, -1.0, 0.75, -1.0, -0.5, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, -0.25, -0.5, -0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.0, 0.25, 1.0, -0.75, -0.75, 0.75, -0.75, 0.75, 0.25, -0.25, -0.5, ]);
    const render_pipeline3019 = device30.createRenderPipeline({
        label: "render_pipeline3019",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    
    const array21 = new Float32Array([0.0, 0.5, -1.0, 0.75, 0.25, 0.25, -1.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, 0.25, -0.75, -1.0, -0.5, 0.5, -1.0, -0.25, -0.75, 1.0, -0.75, -0.25, -0.75, 0.5, -0.5, -0.25, -0.25, 1.0, 1.0, 0.5, 0.25, 0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.75, 0.0, 0.0, 0.75, -0.5, -0.5, -0.25, 0.5, 0.25, 0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.75, 0.25, -0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 1.0, -0.25, 0.0, 0.5, 1.0, 0.0, 1.0, 0.25, -0.5, 1.0, -1.0, -0.5, -0.25, 0.0, 0.75, 0.75, 0.0, -0.5, 1.0, 0.25, 0.75, -0.25, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.75, ]);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device80.pushErrorScope("out-of-memory");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline3020 = device30.createRenderPipeline({
        label: "render_pipeline3020",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    
    device120.destroy();
    
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline3021 = device30.createRenderPipeline({
        label: "render_pipeline3021",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    device00.queue.writeBuffer(buffer001, 0, array16, 0, array16.length);
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device40.destroy();
    device110.pushErrorScope("internal");
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline3022 = device30.createRenderPipeline({
        label: "render_pipeline3022",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeBuffer(buffer801, 0, array19, 0, array19.length);
    device80.queue.writeBuffer(buffer801, 0, array19, 0, array19.length);
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    device110.queue.writeBuffer(buffer1100, 0, array10, 0, array10.length);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer802, 0, array21, 0, array21.length);
    device80.queue.writeBuffer(buffer802, 0, array17, 0, array17.length);
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device80.queue.writeBuffer(buffer802, 0, array15, 0, array15.length);
    device110.queue.writeTexture({ texture: texture1100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    device80.destroy();
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array22 = new Float32Array([0.25, 1.0, 0.5, -0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 1.0, -0.25, 0.75, 0.25, 1.0, 0.5, -0.25, -0.5, 0.75, -0.75, -1.0, -1.0, 0.5, 1.0, 1.0, 0.5, -1.0, 0.0, -0.75, -1.0, 1.0, 0.75, -0.25, -1.0, 0.25, -0.75, 0.5, 0.75, 0.75, 0.5, -0.75, 0.5, 1.0, 0.5, 0.5, -0.25, 0.0, 0.75, 0.75, 0.75, 1.0, -0.25, -1.0, -0.5, 0.5, -0.5, -0.25, -0.75, -1.0, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, -0.25, -1.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.5, -1.0, -1.0, 0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, 1.0, 0.25, ]);
    device110.queue.writeTexture({ texture: texture1100 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    device110.queue.writeTexture({ texture: texture1100 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    device110.queue.writeTexture({ texture: texture1100 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    device110.queue.writeTexture({ texture: texture1100 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array23 = new Float32Array([0.75, -0.25, -0.5, 0.5, -0.25, -0.25, -0.75, 0.5, -0.25, 0.5, 0.0, 1.0, 0.75, 1.0, -0.25, -0.5, 0.75, 0.5, -1.0, 0.5, -0.25, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, 0.0, -0.25, -0.5, 0.25, 0.0, 0.5, 0.25, -0.25, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.0, -1.0, 0.0, 0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 0.75, 0.75, -0.25, 0.0, 0.75, -0.25, -0.5, -0.75, -1.0, -0.5, 0.25, -0.75, 0.75, -1.0, -0.5, 0.25, 0.75, 0.25, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, -1.0, -0.75, -1.0, -1.0, 0.5, -1.0, 0.5, 1.0, ]);
    device110.queue.writeTexture({ texture: texture1100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1100.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    device110.queue.writeTexture({ texture: texture1100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeBuffer(buffer802, 0, array22, 0, array22.length);
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeTexture({ texture: texture305 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device100.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array24 = new Float32Array([0.75, -1.0, 0.75, -0.5, -0.5, 0.5, 1.0, 0.0, -0.5, 0.25, -0.25, 0.25, -0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 0.0, 0.25, 0.25, 0.5, 0.0, 0.25, 0.75, -0.25, 0.75, 0.5, 1.0, -1.0, -0.25, -1.0, -0.75, -0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.25, -0.75, -1.0, 0.75, -1.0, 0.25, -0.25, 0.75, 0.25, 0.75, 0.5, -0.25, 0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 0.75, 0.25, 0.0, 0.75, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, 0.25, -1.0, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, -1.0, -0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 0.0, -1.0, -0.25, -0.75, -0.75, -0.75, 0.0, -1.0, 1.0, -0.75, 0.0, -0.5, -0.5, -0.25, ]);
    device140.pushErrorScope("validation");
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.queue.writeBuffer(buffer1101, 0, array20, 0, array20.length);
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    {
        await buffer1300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1300.unmap();
        console.log(new Float32Array(data));
    }
    device110.queue.writeTexture({ texture: texture1101 }, array22, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    device110.queue.writeBuffer(buffer1101, 0, array22, 0, array22.length);
    
    device80.queue.writeBuffer(buffer802, 0, array12, 0, array12.length);
    device110.queue.writeBuffer(buffer1101, 0, array2, 0, array2.length);
    render_bundle_encoder1100.setPipeline(render_pipeline1100);
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    device30.queue.writeTexture({ texture: texture305 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.pushErrorScope("internal");
    
    const texture_view11011 = texture1101.createView({ label: "texture_view11011" });
    texture1101.destroy();
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device140.queue.writeTexture({ texture: texture1400 }, array22, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("validation");
    device80.queue.writeBuffer(buffer802, 0, array14, 0, array14.length);
    
    
    const render_pipeline3023 = device30.createRenderPipeline({
        label: "render_pipeline3023",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device140.queue.writeTexture({ texture: texture1400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device110.queue.writeBuffer(buffer1101, 0, array22, 0, array22.length);
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device30.queue.writeTexture({ texture: texture303 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1104 = device110.createQuerySet({
        label: "query1104",
        type: "occlusion",
        count: 32,
    });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device130.queue.writeBuffer(buffer1300, 0, array10, 0, array10.length);
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    device140.queue.writeTexture({ texture: texture1401 }, array24, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device110.queue.writeBuffer(buffer1100, 0, array4, 0, array4.length);
    
    device20.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device110.queue.writeBuffer(buffer1101, 0, array2, 0, array2.length);
    device110.queue.writeBuffer(buffer1100, 0, array17, 0, array17.length);
    
    device110.queue.writeBuffer(buffer1101, 0, array9, 0, array9.length);
    device110.queue.writeBuffer(buffer1100, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    device00.queue.writeBuffer(buffer000, 0, array24, 0, array24.length);
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    device110.queue.writeBuffer(buffer1100, 0, array13, 0, array13.length);
    
    const buffer1303 = device130.createBuffer({
        label: "buffer1303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device30.queue.writeTexture({ texture: texture305 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1103 = device110.createRenderPipeline({
        label: "render_pipeline1103",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    device30.queue.writeTexture({ texture: texture304 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline1104 = device110.createRenderPipeline({
        label: "render_pipeline1104",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    device130.queue.writeBuffer(buffer1303, 0, array18, 0, array18.length);
    device140.queue.writeTexture({ texture: texture1400 }, array24, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeBuffer(buffer1302, 0, array7, 0, array7.length);
    device130.queue.writeBuffer(buffer1302, 0, array2, 0, array2.length);
    device130.queue.writeBuffer(buffer1302, 0, array1, 0, array1.length);
    device80.queue.writeBuffer(buffer802, 0, array23, 0, array23.length);
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeBuffer(buffer1301, 0, array22, 0, array22.length);
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    
    
    device160.pushErrorScope("out-of-memory");
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    {
        await buffer803.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer803.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer803.unmap();
        console.log(new Float32Array(data));
    }
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.queue.submit([]);
}