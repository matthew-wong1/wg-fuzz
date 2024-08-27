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
    const array0 = new Float32Array([-1.0, 0.5, 0.5, 0.0, 1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.5, 0.25, 0.5, 1.0, -1.0, 0.5, -1.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.25, 1.0, -0.25, 0.5, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, -0.5, -0.5, 0.0, -0.5, 0.75, 0.0, 0.25, 0.75, 0.25, 0.75, -0.5, 0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, -0.25, 0.5, 0.75, 0.0, -0.25, -0.5, -0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -0.5, 0.25, -0.25, 0.25, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, -0.25, -0.25, -0.25, -0.25, 0.5, 0.0, -1.0, 0.0, 0.75, 1.0, 0.75, ]);
    
    const array1 = new Float32Array([-0.5, -1.0, 1.0, -1.0, 0.25, -0.5, 0.75, -0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.5, 0.0, -0.75, 1.0, -0.25, 0.5, -0.5, 0.75, 1.0, 0.25, 0.0, 0.25, -1.0, 0.75, 0.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.5, -0.5, -0.25, 0.25, 0.25, 0.75, 0.25, 0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.0, -0.75, -0.75, 0.75, -0.75, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -1.0, 0.75, 0.75, -0.75, -0.75, -1.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.0, 0.0, -1.0, -0.75, -0.5, 0.5, 0.25, 0.0, -0.25, -1.0, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -0.25, 1.0, 0.75, -0.75, 0.25, ]);
    const array2 = new Float32Array([-1.0, 0.75, -0.75, 1.0, -0.75, 0.75, -1.0, 1.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.5, 0.0, -0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.25, 0.5, -0.25, 0.5, 0.75, -0.75, -0.5, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, 0.75, 0.25, -0.75, -1.0, 0.75, 0.25, -0.75, 0.0, -0.75, 0.75, 0.5, 0.25, 0.75, 0.0, -0.75, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, -0.75, 0.0, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, -0.5, -0.75, 0.0, -0.5, -0.75, 0.0, -0.75, 0.75, 0.75, -0.75, -0.5, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.5, 0.5, -0.75, 0.5, 0.0, 0.75, -1.0, 0.5, ]);
    
    
    const array3 = new Float32Array([0.5, -0.25, -0.75, -0.75, -0.75, -0.25, -1.0, 0.75, 0.5, 1.0, -1.0, 0.25, 1.0, -1.0, 1.0, -0.75, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, 0.25, -0.25, 0.5, 1.0, 0.0, -1.0, -0.5, 1.0, 1.0, 1.0, -1.0, -0.75, 0.5, 0.25, 0.0, 1.0, -0.25, 1.0, 1.0, 0.25, -0.5, 0.75, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.25, 0.75, -0.25, 0.75, -1.0, 1.0, -0.25, -1.0, -0.75, 0.75, -1.0, -0.5, 0.5, 0.0, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, -0.75, 1.0, -0.5, 0.5, -0.75, -0.75, -1.0, 0.25, 0.5, -0.25, 1.0, 0.25, 0.25, -1.0, 0.75, 1.0, 1.0, 0.25, 0.75, -0.75, -1.0, 0.0, 1.0, 0.75, -1.0, 0.5, 0.25, ]);
    const array4 = new Float32Array([-0.75, -0.5, 0.5, -0.25, 0.0, -0.25, 1.0, -0.25, 0.5, 0.75, 0.25, 0.75, -0.75, -0.25, 1.0, 0.5, 0.75, -0.25, -0.5, -0.75, 0.75, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, -0.5, 0.25, 1.0, 0.25, -0.5, 0.5, -1.0, -0.25, 0.25, 1.0, -0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.75, 0.25, 0.75, 0.0, -1.0, -0.75, -0.75, 0.5, -0.25, 0.25, -0.75, -0.5, -0.75, -0.75, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, -0.25, -1.0, 0.5, 0.75, -0.25, -0.25, 1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.0, -0.25, 0.0, 0.75, -1.0, 0.75, 0.75, ]);
    const array5 = new Float32Array([-1.0, -0.75, 0.5, -0.25, 0.5, -0.5, 1.0, 0.25, 0.75, 1.0, 0.25, 0.75, 0.75, 0.75, -0.75, 1.0, -1.0, 1.0, 0.5, -0.25, 0.75, -0.75, 1.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 0.25, 0.0, -1.0, 0.0, -0.25, -0.75, 0.75, 1.0, -0.5, 0.75, 0.75, -0.75, -0.25, -0.5, 0.25, 0.0, 0.0, -0.5, -1.0, 0.75, 1.0, -1.0, 1.0, 0.0, -0.75, -0.5, -1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -1.0, 0.25, -0.25, 0.5, -0.75, 0.25, 0.5, -0.75, -0.75, -0.5, -0.75, -0.25, 1.0, -0.25, 0.0, -1.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 1.0, 1.0, -0.5, 0.25, 0.5, ]);
    const array6 = new Float32Array([0.75, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.0, -0.75, 0.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -0.75, 1.0, -0.75, -0.5, 0.75, -1.0, -0.5, -0.25, -0.5, -1.0, 1.0, 0.25, -1.0, -0.75, 0.0, -0.5, -0.75, 1.0, 0.5, -0.5, 1.0, 0.5, 0.0, 0.75, -0.25, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -0.25, -0.75, -0.25, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, 0.5, 0.25, 0.5, 0.0, 0.75, -1.0, 0.75, 0.25, 0.25, -0.25, 0.75, -1.0, -0.25, -1.0, 1.0, -1.0, -0.75, -0.75, 0.0, 0.5, -0.5, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, 0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, -0.75, 1.0, 0.0, ]);
    const array7 = new Float32Array([1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 1.0, -0.75, -0.75, 0.0, 0.75, 0.5, -1.0, 0.75, 0.25, -0.25, -0.25, 1.0, -0.5, 0.0, 0.0, -0.75, 0.25, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, 0.5, -0.25, -0.5, 0.75, -1.0, 0.25, -0.25, -0.25, 0.75, 0.75, 1.0, -0.75, 0.25, -0.25, -0.25, 0.75, -0.25, 1.0, -1.0, 0.25, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -0.5, -0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.25, -1.0, -0.5, -0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -0.5, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 0.5, -0.75, 1.0, -0.5, -0.5, -0.75, ]);
    
    const array8 = new Float32Array([-0.5, 1.0, 0.75, 0.75, 1.0, 0.25, 0.25, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -0.25, 0.25, -0.25, 0.25, 0.25, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, 0.5, 0.75, -1.0, 0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.75, 0.0, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 0.0, 0.75, -1.0, 0.25, 0.25, -1.0, 0.75, 0.75, 1.0, -1.0, -0.5, -0.75, 0.25, 0.5, -0.5, 0.0, -0.5, 0.0, -0.5, -1.0, 0.25, 0.0, -0.75, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 0.0, -0.75, 0.25, 0.0, -1.0, 0.75, 0.25, -0.5, ]);
    
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array9 = new Float32Array([0.5, 0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 1.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, -0.5, -0.75, -0.5, 0.0, 0.25, 0.0, 0.0, -0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.75, 0.5, -0.5, -0.5, 0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 0.25, 0.25, 1.0, 0.25, 0.25, -0.25, 0.5, -1.0, -1.0, 0.75, -0.25, 0.75, 0.25, 0.0, 0.5, 0.0, 1.0, -0.5, 0.5, -1.0, 1.0, 1.0, -0.75, 0.5, 0.75, 0.0, 1.0, 1.0, -1.0, -0.5, 0.5, 0.25, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.5, 0.75, 0.25, -0.5, 0.25, 0.0, 0.25, 0.75, 0.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array10 = new Float32Array([-0.5, -0.25, -0.5, 1.0, -0.75, -0.25, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, 0.0, 0.0, 0.5, -0.25, -0.75, 1.0, -0.25, 0.5, -0.75, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -0.75, -0.75, -1.0, 0.5, 0.0, 0.0, 0.0, 1.0, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, 0.5, 1.0, 0.5, 0.0, -1.0, -0.5, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, 0.0, -1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.75, -0.75, -0.5, 0.5, 0.25, 0.0, 0.25, 1.0, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.75, -0.75, -1.0, 0.75, 0.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -0.5, ]);
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.destroy();
    
    
    const array11 = new Float32Array([0.0, 1.0, 0.0, 0.75, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 1.0, -0.5, 0.75, 0.75, 0.0, 1.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.75, -0.75, 1.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -1.0, 0.25, 0.25, 0.25, 0.0, -0.5, -0.5, 0.0, -1.0, 0.75, -0.25, 0.0, 1.0, 0.25, 1.0, -0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.25, 0.0, 0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, 0.0, 0.25, -0.75, 0.75, -0.5, 0.75, 0.5, 0.25, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -1.0, 0.0, -0.25, -0.5, 0.5, 0.25, 0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.25, 0.5, -0.25, 0.25, -0.75, -0.25, 1.0, -1.0, 0.0, -0.75, 0.25, 0.0, -0.5, ]);
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    const array12 = new Float32Array([-0.75, 0.5, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 0.25, 0.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, -1.0, 0.75, 0.5, -0.25, -0.5, -0.25, -0.75, 0.25, -0.75, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.5, 0.0, 0.25, 0.5, 0.75, 0.25, -0.75, -1.0, -0.5, 0.0, -0.25, 0.25, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 1.0, 0.5, 0.5, -0.25, -1.0, 0.0, 0.25, 1.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.75, 1.0, 0.0, 0.5, -0.5, 1.0, -1.0, 0.5, -1.0, 0.0, 1.0, 0.75, 0.5, -0.75, 1.0, 1.0, -0.75, -0.75, -1.0, ]);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    
    device20.pushErrorScope("validation");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array13 = new Float32Array([0.0, 0.5, -0.25, 0.5, 0.75, -0.75, 0.75, -0.75, -0.75, -0.25, 0.25, -0.25, -0.75, 0.5, 0.25, 0.75, 0.25, -0.75, -0.25, -0.75, -0.5, -0.75, 0.5, -0.25, -0.25, 0.75, 0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 1.0, -0.75, -0.5, 0.5, -1.0, 0.0, -0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 0.75, 1.0, 0.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -0.5, -0.25, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.75, -0.75, -0.25, 0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.25, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    command_encoder201.insertDebugMarker("mymarker");
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    
    device20.queue.writeBuffer(buffer200, 0, array13, 0, array13.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    
    const array14 = new Float32Array([0.25, -0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 1.0, 0.5, 0.0, 1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.0, 0.5, 1.0, 1.0, 1.0, -0.25, 0.25, 0.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.5, 1.0, 0.5, -0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.75, 1.0, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 1.0, -0.5, 1.0, -0.25, 0.5, 0.0, 0.75, 1.0, -0.25, 1.0, 1.0, 0.5, -0.75, 1.0, -0.25, 0.25, 0.75, 0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.5, 0.5, -0.75, 0.5, -1.0, 0.25, ]);
    buffer200.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("internal");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const command_buffer500 = command_encoder500.finish();
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer201.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
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
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer500.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
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
    command_encoder201.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device50.pushErrorScope("validation");
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const array15 = new Float32Array([0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 0.0, -0.75, 1.0, 0.75, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, -0.25, -0.75, 0.5, 0.5, 0.5, 1.0, 0.0, -0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.5, -1.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.5, 0.75, -1.0, -0.25, 0.5, 1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, -0.5, -0.25, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, 0.0, -0.75, 0.75, -0.25, -0.75, 0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.5, -0.25, 0.25, -0.5, 0.5, 0.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 0.0, 0.0, -0.75, 0.25, 1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -0.25, -0.5, ]);
    
    const array16 = new Float32Array([0.25, -0.75, -0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 1.0, 0.25, -0.5, 0.0, 0.25, -1.0, -0.5, 0.5, 0.5, 0.75, -0.25, 0.75, -0.75, 1.0, 1.0, 0.25, 1.0, -0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.0, -0.25, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, -0.25, -0.25, -0.75, 0.5, 0.5, 0.0, -1.0, -0.75, 0.75, -0.75, -0.25, -0.25, 0.0, 1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.75, 0.75, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 0.0, -1.0, 0.5, -0.75, 0.0, 1.0, -1.0, -1.0, -0.5, 0.25, 0.25, 0.75, -0.5, -0.25, 0.75, -0.25, 0.5, 0.0, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, -0.75, -0.75, ]);
    command_encoder400.popDebugGroup()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device20.queue.submit([command_buffer200, ]);
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
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.popDebugGroup()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    const command_buffer201 = command_encoder201.finish();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer401 = command_encoder401.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    command_encoder400.insertDebugMarker("mymarker");
    buffer204.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query503.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query504.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    buffer203.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const command_buffer400 = command_encoder400.finish();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    
    
    
    device40.queue.submit([command_buffer401, ]);
    query500.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
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
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.insertDebugMarker("mymarker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    command_encoder503.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder402.pushDebugGroup("mygroupmarker")
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
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    compute_pass_encoder5010.setPipeline(compute_pipeline502);
    
    command_encoder502.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    command_encoder402.clearBuffer(buffer401);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    command_encoder503.resolveQuerySet(
        query503,
        0,
        32,
        buffer500,
        0
    )
    const array17 = new Float32Array([-0.25, 0.0, 0.5, -1.0, 0.25, -0.25, -1.0, -0.5, -1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, -1.0, 0.0, -0.5, -0.5, 0.75, -0.5, 0.0, -0.75, 0.75, -0.5, -0.5, 1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, 1.0, -0.25, -0.25, 0.75, 0.0, -0.25, 0.5, 0.75, 1.0, 0.25, -0.5, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 0.0, 1.0, 0.5, 1.0, -1.0, 0.0, -0.5, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, -1.0, -0.75, 0.0, -1.0, ]);
    buffer400.destroy()
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder502.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query504.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("out-of-memory");
    query502.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
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
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    query202.destroy()
    command_encoder502.resolveQuerySet(
        query504,
        0,
        32,
        buffer500,
        0
    )
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder503.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    compute_pass_encoder5020.setPipeline(compute_pipeline507);
    command_encoder700.popDebugGroup()
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    
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
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device40.queue.writeBuffer(buffer401, 0, array14, 0, array14.length);
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer701 = device70.createBuffer({
        label: "buffer701",
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
                    buffer: buffer700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer701,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    
    device80.destroy();
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    
    command_encoder503.insertDebugMarker("mymarker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    compute_pass_encoder5040.setPipeline(compute_pipeline502);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
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
    device40.queue.writeBuffer(buffer401, 0, array17, 0, array17.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline507.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group500);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer401, 0, array12, 0, array12.length);
    
    
    const command_buffer701 = command_encoder701.finish();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
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
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
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
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    query501.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer504, 0, array8, 0, array8.length);
    
    buffer206.destroy()
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    compute_pass_encoder5030.setPipeline(compute_pipeline500);
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer401.destroy()
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer500, ]);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer504, 0, array13, 0, array13.length);
    
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group502);
    
    
    
    render_bundle_encoder500.setPipeline(render_pipeline501);
    device50.queue.writeBuffer(buffer504, 0, array7, 0, array7.length);
    
    compute_pass_encoder6010.popDebugGroup()
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    buffer506.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    query202.destroy()
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    query203.destroy()
    
    command_encoder203.insertDebugMarker("mymarker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    device70.pushErrorScope("internal");
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
    command_encoder700.insertDebugMarker("mymarker");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder505.insertDebugMarker("mymarker");
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    compute_pass_encoder5040.dispatchWorkgroups(100);
    command_encoder506.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder900.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer504, 0, array14, 0, array14.length);
    
    compute_pass_encoder5010.dispatchWorkgroups(100);
    const compute_pass_encoder5050 = command_encoder505.beginComputePass({ label: "compute_pass_encoder5050" });
    buffer503.destroy()
    device50.queue.writeBuffer(buffer504, 0, array2, 0, array2.length);
    command_encoder203.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder5050.setPipeline(compute_pipeline507);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    query201.destroy()
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
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const command_buffer203 = command_encoder203.finish();
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer504, 0, array16, 0, array16.length);
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    query500.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer504, 0, array0, 0, array0.length);
    query900.destroy()
    query501.destroy()
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    compute_pass_encoder5020.dispatchWorkgroups(100);
    const command_buffer700 = command_encoder700.finish();
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline507.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5050.setBindGroup(0, bind_group503);
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer203, ]);
    const command_buffer602 = command_encoder602.finish();
    compute_pass_encoder6010.popDebugGroup()
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group504);
    compute_pass_encoder5030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder5010.end();
    const command_buffer501 = command_encoder501.finish();
    const command_buffer506 = command_encoder506.finish();
    compute_pass_encoder5040.end();
    const command_buffer504 = command_encoder504.finish();
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder5050.dispatchWorkgroups(100);
    compute_pass_encoder5030.end();
    compute_pass_encoder5050.end();
    device50.queue.submit([command_buffer504, ]);
    compute_pass_encoder5020.end();
    command_encoder503.popDebugGroup()
    const command_buffer505 = command_encoder505.finish();
    const command_buffer503 = command_encoder503.finish();
    device50.queue.submit([command_buffer501, command_buffer506, ]);
    device50.queue.submit([command_buffer505, ]);
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer503, ]);
}