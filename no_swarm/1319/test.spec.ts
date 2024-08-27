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
    const array0 = new Float32Array([0.0, 0.75, 1.0, 1.0, -0.5, -0.25, 1.0, 0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.5, 0.0, 0.25, 0.5, -0.25, -0.5, -0.75, 0.25, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.0, 0.75, 0.5, 1.0, -0.5, -0.25, 0.5, -1.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, -0.5, 0.0, -1.0, 0.5, -0.25, -0.5, 1.0, -0.5, -0.75, -0.5, -1.0, 0.25, 0.5, 0.25, -0.75, -0.75, 1.0, -0.75, 0.25, 0.5, 0.0, 0.25, 0.25, -0.75, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, 0.25, -1.0, -0.25, 0.5, 0.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 0.75, 0.5, 1.0, ]);
    const array1 = new Float32Array([0.0, 0.25, 0.75, -1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.25, 1.0, -1.0, -0.25, -0.5, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, 1.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.5, -1.0, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, -1.0, -0.5, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, 0.75, 0.5, -0.75, 0.25, 0.0, -1.0, 1.0, -0.5, -0.5, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -0.75, 1.0, 1.0, 0.0, -1.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.25, 1.0, 0.25, 0.5, -1.0, 0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -1.0, ]);
    
    
    
    
    
    
    
    
    
    const array2 = new Float32Array([0.25, 1.0, -0.25, -0.5, 0.5, -0.75, 0.75, 0.5, 0.25, -0.75, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, -0.25, -0.75, 1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 0.0, 0.0, -0.75, 1.0, 1.0, 1.0, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, -0.25, -0.75, -1.0, -0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, 0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.75, -1.0, 1.0, 0.5, -0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 1.0, 0.25, -0.5, 0.25, 0.5, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.5, 0.25, -0.5, 0.0, -0.5, 1.0, 1.0, 0.75, -0.25, -0.75, -0.5, 1.0, -1.0, -0.5, ]);
    
    const array3 = new Float32Array([-0.5, 0.0, 0.25, 0.75, -0.5, 0.75, 1.0, -0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 0.25, 1.0, -1.0, -0.25, -1.0, 0.0, -0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 0.25, -0.75, 0.75, 0.5, 0.5, 0.5, 0.25, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.25, -1.0, 0.5, 0.25, 1.0, 0.0, 0.5, 0.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.75, 0.75, 1.0, -0.75, -0.5, -0.75, -0.25, -0.75, -1.0, -0.25, 0.0, 1.0, -1.0, -0.5, 0.75, 0.75, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -0.5, 1.0, 1.0, -0.5, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 1.0, -0.75, -1.0, 1.0, -1.0, 0.5, ]);
    const array4 = new Float32Array([-0.5, -0.75, 1.0, 0.75, 0.0, 1.0, -0.5, 1.0, 0.0, -0.5, -0.5, -1.0, -0.75, -0.5, -0.5, -0.25, -0.75, -0.75, -1.0, -0.5, 0.5, -0.25, 0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, 1.0, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, 0.0, 0.75, 0.5, 0.5, 0.25, 0.5, 1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.25, 0.5, -0.75, -1.0, 0.25, 0.25, 0.25, -1.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.25, -0.25, -0.75, 0.25, 0.25, -0.25, 0.75, -0.25, ]);
    const array5 = new Float32Array([0.25, 0.0, 0.5, -0.75, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, -0.25, -1.0, 0.25, -1.0, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.5, 0.0, -0.25, -0.25, 0.0, -0.5, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, 0.5, -1.0, 1.0, 0.0, -0.25, 0.0, 0.0, -0.75, -0.5, 0.5, -1.0, -0.5, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 0.25, -0.5, -0.75, 1.0, 0.75, 0.25, 0.0, -0.5, 0.75, 0.0, -0.5, 0.25, -0.75, -0.5, 0.5, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, 0.25, 1.0, -1.0, -1.0, 0.25, -0.75, -1.0, 0.25, 0.25, 0.75, 0.25, -0.25, 0.5, -0.75, -0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.5, -0.75, 0.5, 0.75, 0.0, 1.0, ]);
    
    const array6 = new Float32Array([0.0, 1.0, -0.25, -1.0, 0.75, 0.5, -1.0, -0.25, 0.0, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 1.0, 1.0, 0.75, -0.75, 0.0, 0.0, -0.75, -1.0, 0.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.5, 0.0, 1.0, -0.75, -1.0, 0.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.5, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, -1.0, -0.75, 1.0, 0.25, 1.0, -0.5, -1.0, -0.75, 0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, 0.25, -0.75, 0.25, -0.75, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.0, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, 0.25, -1.0, -0.25, 0.75, -0.75, 0.75, -0.75, 0.75, -0.5, 0.0, -0.25, -0.5, -0.5, ]);
    
    
    const array7 = new Float32Array([-0.75, 0.25, 0.25, 0.25, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, -1.0, -0.75, 0.75, -0.75, 0.0, -1.0, -1.0, -1.0, -0.25, 0.75, -0.5, 0.5, 0.75, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.75, -0.75, -1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 1.0, -0.25, 0.5, 0.0, -0.25, -0.75, 0.25, -0.75, -0.25, -0.75, 1.0, -1.0, 0.25, 1.0, 0.25, -0.5, -1.0, 1.0, 1.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -0.75, 0.5, -0.5, 0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([-1.0, 0.75, -0.5, -1.0, 1.0, 0.0, 0.75, 0.75, -0.5, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 0.0, -0.25, 1.0, 0.5, -1.0, -0.5, 0.5, 1.0, 0.75, -0.5, 1.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.25, 1.0, 0.0, -0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.75, 0.0, 0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 0.75, 0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.5, 0.5, -0.5, -1.0, 1.0, -0.75, -0.25, 0.5, 0.5, 0.0, 0.75, 0.0, 0.5, 0.0, -0.5, 0.25, -0.5, -0.25, -0.75, -0.5, 0.25, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    
    const array9 = new Float32Array([-0.25, 0.25, -0.75, 1.0, 1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -0.75, -1.0, 0.5, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -0.75, -0.5, 0.0, -0.5, 0.5, -1.0, 0.5, 0.75, 0.75, 0.75, 0.25, 0.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.0, 0.0, -0.5, 1.0, 0.0, 0.25, -0.75, -1.0, -1.0, -0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, 0.75, 0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, ]);
    const array10 = new Float32Array([-0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.75, 1.0, 0.75, -0.5, 0.75, 0.25, 1.0, 1.0, -0.75, -0.25, 0.5, -0.75, -0.75, 0.25, -0.25, 0.75, 0.5, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, -0.25, -0.5, 0.25, -1.0, -1.0, -0.25, -1.0, -0.75, 0.5, -0.75, 0.25, 0.75, 0.25, 0.0, 1.0, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, 1.0, 0.0, 0.5, 0.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, -0.5, -0.5, -1.0, -0.5, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.75, 1.0, 0.75, -0.75, -0.25, 0.25, 1.0, 0.0, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 1.0, -0.75, 0.0, 0.75, 0.25, ]);
    
    
    const array11 = new Float32Array([0.75, 0.0, 0.0, 0.75, -1.0, -0.25, -1.0, -0.5, -0.25, 0.25, 1.0, 0.75, 0.0, 0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 1.0, 0.5, -0.25, 0.5, -0.75, 0.5, 1.0, -0.75, -0.25, 0.5, -0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -1.0, -0.25, 0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -0.75, 0.5, 0.0, 0.5, 1.0, 0.5, 0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -1.0, 0.0, 0.5, -0.5, 0.25, -1.0, 0.0, -0.75, 0.75, 1.0, 0.0, 1.0, 1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 0.5, 0.25, -1.0, 0.75, 0.0, -0.5, 1.0, 0.75, -0.75, 0.25, 0.75, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array12 = new Float32Array([0.25, -1.0, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, -0.5, 0.25, 0.25, -0.75, -0.75, 0.0, -0.75, -1.0, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -0.25, -0.25, -0.75, -1.0, -0.5, -1.0, 1.0, 1.0, 1.0, -1.0, -0.25, 0.75, 1.0, 0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 0.75, 0.5, 0.75, 0.75, 0.25, 0.5, -1.0, 1.0, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 0.75, 0.75, -0.75, 0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 0.0, 0.25, 0.25, -0.5, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, -0.5, -0.5, -1.0, 0.75, -0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array13 = new Float32Array([1.0, 1.0, 0.25, 0.0, 1.0, 0.0, 0.0, 1.0, -0.25, 0.25, -0.5, -0.5, -0.25, -0.5, 0.25, 1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.75, 0.25, -0.5, -1.0, -0.75, 0.0, 1.0, 0.0, 0.75, 0.75, 0.0, 1.0, -1.0, 0.5, 0.25, -1.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, -0.5, -0.5, -0.25, -1.0, -1.0, -1.0, -0.75, 0.5, 0.5, 0.0, -1.0, 0.25, -0.75, -0.5, 0.0, 0.0, 0.5, -0.5, -0.25, -0.75, 0.0, 1.0, -0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, -1.0, 0.25, 0.5, -1.0, 0.0, 1.0, 1.0, -0.75, 0.5, 0.5, 0.0, 0.25, 0.0, 0.75, 0.5, -0.5, -0.25, 0.5, 0.5, -0.5, 1.0, -0.5, 0.25, 0.25, -1.0, -0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    command_encoder001.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("validation");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_buffer001 = command_encoder001.finish();
    
    device00.queue.submit([command_buffer001, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture201.destroy();
    device00.queue.submit([]);
    device20.pushErrorScope("out-of-memory");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder002.insertDebugMarker("mymarker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder002.insertDebugMarker("mymarker");
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    texture400.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.pushErrorScope("validation");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    device00.pushErrorScope("out-of-memory");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    texture202.destroy();
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    buffer000.destroy()
    render_pass_encoder2010.pushDebugGroup("group_marker");
    texture300.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture401.destroy();
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer201 = command_encoder201.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2010.popDebugGroup();
    command_encoder000.insertDebugMarker("mymarker");
    buffer400.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const command_buffer002 = command_encoder002.finish();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device40.queue.submit([]);
    const array14 = new Float32Array([0.25, -0.25, 0.5, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 0.75, -1.0, -0.5, -0.25, 0.25, 0.25, 0.25, 0.75, 0.25, 0.5, -1.0, -0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 1.0, 0.5, 0.25, 0.0, 1.0, 0.75, 0.0, 1.0, -0.75, -1.0, 0.75, 0.75, -0.5, 0.25, 1.0, 0.5, 0.0, 0.75, 0.0, 0.25, 0.75, 1.0, -0.25, 0.0, -0.5, -1.0, 0.25, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, 1.0, 1.0, 0.25, 0.25, -0.5, -0.75, 0.25, 0.75, 0.5, -1.0, -1.0, 1.0, 0.25, -1.0, -0.5, -0.75, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, -0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 1.0, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.5, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
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
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    query001.destroy()
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    texture500.destroy();
    command_encoder202.clearBuffer(buffer200);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    buffer202.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    device30.queue.writeBuffer(buffer300, 0, array14, 0, array14.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    command_encoder400.clearBuffer(buffer400);
    
    
    
    render_pass_encoder2020.setVertexBuffer(0, buffer204);
    query500.destroy()
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer301.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder201.drawIndirect(buffer203, 0);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const command_buffer400 = command_encoder400.finish();
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
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
    device20.queue.writeTexture({ texture: texture203 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    query401.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    query000.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    render_pass_encoder2020.draw(3);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer401, 0, array14, 0, array14.length);
    const command_buffer004 = command_encoder004.finish();
    
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer401, 0, array13, 0, array13.length);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device40.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder400.setPipeline(render_pipeline400);
    command_encoder300.clearBuffer(buffer300);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    device20.queue.writeBuffer(buffer207, 0, array10, 0, array10.length);
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder002.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
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
    device50.pushErrorScope("internal");
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer002, 0, array13, 0, array13.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer302, 0, array13, 0, array13.length);
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    buffer209.destroy()
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array14, 0, array14.length);
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query401.destroy()
    buffer401.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device50.pushErrorScope("validation");
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array13, 0, array13.length);
    
    const command_buffer003 = command_encoder003.finish();
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    buffer001.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer208.destroy()
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    texture301.destroy();
    device20.queue.submit([command_buffer200, ]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2020.popDebugGroup();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_pass_encoder2020.end();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    query002.destroy()
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    buffer201.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    device60.destroy();
    device30.queue.writeBuffer(buffer302, 0, array11, 0, array11.length);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2021.setPipeline(render_pipeline201);
    command_encoder300.copyBufferToBuffer(
        buffer303,
        0,
        buffer300,
        0,
        400
    );
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    
    command_encoder300.copyBufferToTexture(
        {
            buffer: buffer303
        },
        {
            texture: texture301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    render_pass_encoder2030.setPipeline(render_pipeline203);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    device00.queue.submit([command_buffer004, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer405, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer405, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.end();
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer406, 0);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, ]);
    compute_pass_encoder0031.popDebugGroup()
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group204);
    render_pass_encoder2021.setVertexBuffer(0, buffer204);
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group205);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.drawIndirect(buffer200, 0);
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer002, ]);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group401);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2021.end();
    device50.queue.submit([]);
    render_pass_encoder2010.draw(3);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0031.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2021.popDebugGroup();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    device00.queue.submit([command_buffer002, ]);
}