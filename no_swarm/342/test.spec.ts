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
    
    const array0 = new Float32Array([-0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 1.0, -0.25, 0.0, -0.5, -0.75, -0.25, 0.5, -1.0, 1.0, -0.75, 0.25, -1.0, -0.25, 1.0, -0.5, 0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.25, 0.5, 0.75, -1.0, 0.75, 1.0, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.5, 0.75, -0.75, 1.0, -0.75, 0.75, 1.0, -0.25, -0.75, 0.25, 0.5, 0.5, -0.25, 0.75, 0.5, 0.0, 0.75, 0.75, -0.25, -0.75, -1.0, -0.25, -0.25, 0.25, -1.0, 0.75, 0.0, -0.5, -0.25, 1.0, 0.25, 0.75, 0.75, 0.25, -0.75, 1.0, -1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.0, 0.25, 0.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.75, -0.5, -0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.5, 0.25, ]);
    
    const array1 = new Float32Array([-0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.25, -0.5, 0.5, 0.5, 0.0, 0.0, -1.0, 0.5, 0.5, -0.5, 0.25, -0.25, 1.0, 0.75, 0.75, -0.25, -1.0, 0.75, -0.25, 0.0, -0.25, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, 1.0, -0.75, 0.5, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.0, 0.5, 0.0, 1.0, -0.5, 1.0, 0.25, 0.75, 0.5, 1.0, -0.25, -0.5, 0.75, 0.0, 0.5, 0.25, -0.25, 1.0, 0.5, 0.25, -1.0, 0.75, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, 0.25, -1.0, -0.75, 0.25, -0.5, ]);
    
    const array2 = new Float32Array([1.0, 1.0, -0.25, -1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 1.0, -0.75, 0.0, -0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.5, 0.25, 0.75, 0.25, -0.75, -1.0, -0.5, -0.25, -0.25, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, -0.25, 0.5, -0.75, 1.0, 0.75, 1.0, 0.5, -0.75, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 1.0, 0.25, 0.25, 1.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.25, 1.0, -0.75, 1.0, -0.25, 0.75, 0.75, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, 0.0, -1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -0.75, -0.5, -1.0, -0.5, 0.0, -0.5, -0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.5, 0.75, 1.0, -0.25, 0.5, -0.25, ]);
    const array3 = new Float32Array([0.0, 0.0, 0.25, -0.5, 0.5, 0.0, -1.0, 0.5, -0.25, 0.0, 0.0, -0.25, -0.75, 0.75, -1.0, -0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -0.25, 0.0, 1.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 0.75, 0.25, -0.5, -0.25, 0.0, -0.25, 0.75, -0.25, 1.0, 1.0, 1.0, 0.0, -0.5, 1.0, 0.0, -0.25, 0.75, -0.5, -0.5, 0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 0.0, 0.0, -1.0, -0.25, 0.0, 0.75, 0.5, 0.25, 0.25, 0.0, -1.0, 0.5, 0.25, 0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.5, -0.75, -1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, 0.5, 1.0, -1.0, -0.5, 1.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.0, -0.25, ]);
    const array4 = new Float32Array([-0.25, 0.5, -1.0, 0.25, 0.0, -0.5, -1.0, 0.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.0, 0.75, -0.25, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, -0.5, 0.0, -0.5, 0.5, 0.0, 1.0, 0.0, -0.5, -0.25, -1.0, 0.75, -1.0, -0.5, -0.75, -0.25, 0.5, 0.25, 0.5, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 1.0, -0.25, -0.75, 0.5, -0.25, 0.0, 0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, -0.5, -1.0, 0.25, 0.0, -0.75, -0.5, -0.25, -1.0, -0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 0.25, 1.0, ]);
    const array5 = new Float32Array([-0.5, -0.75, 1.0, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, 0.5, -0.5, -0.75, 1.0, 0.0, 0.5, 0.75, -0.5, 1.0, -1.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.5, 0.25, 0.25, 0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, -0.5, -0.25, 1.0, 0.75, -0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, 1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.25, 0.5, -0.5, -0.25, 1.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.5, -0.75, 0.75, 0.75, 0.25, 0.25, 0.5, -0.5, 0.0, 0.0, 0.0, -0.5, 0.5, ]);
    const array6 = new Float32Array([-1.0, -1.0, -0.5, 0.5, 1.0, -1.0, 0.75, 0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.0, 0.0, 1.0, -0.25, -0.5, 0.25, -0.5, 0.25, -0.5, 0.25, 0.75, -1.0, 1.0, 1.0, 0.5, -0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.75, -0.25, -1.0, -1.0, -0.75, -0.5, 0.5, -0.75, 1.0, -0.75, -0.5, -1.0, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.25, 0.75, 0.25, -0.75, 1.0, 0.25, 0.5, -0.5, -0.25, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, -0.25, -0.5, -0.75, -0.25, 0.5, -0.5, 0.75, 0.0, -0.25, 1.0, 1.0, -0.75, 1.0, 0.0, 0.75, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, -1.0, -0.75, -0.5, 0.25, 0.75, ]);
    const array7 = new Float32Array([-0.25, -0.5, 0.5, 0.5, 1.0, 0.25, 0.5, -0.75, -0.5, -0.75, 0.25, -0.5, 0.0, -0.75, 0.75, -0.25, 1.0, 0.0, 0.75, 0.25, -0.25, -0.25, -1.0, 0.0, 0.5, -0.75, 0.25, -0.75, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 0.0, 0.5, 1.0, 0.25, 0.0, 0.5, -0.75, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, -0.75, 0.0, 0.5, -0.75, -0.75, 1.0, 0.25, -0.25, -1.0, 0.0, -1.0, -0.5, 0.0, 0.5, -1.0, -0.25, -1.0, -0.75, 0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, -0.5, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    const array8 = new Float32Array([0.5, 0.0, 0.75, -0.5, -0.5, -0.5, 0.0, -0.5, 0.5, 0.75, -0.25, -0.25, -0.5, -0.5, 1.0, -0.75, 0.25, 0.0, 0.5, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.75, -0.5, -0.25, 1.0, -0.75, -0.5, -0.25, -0.5, 1.0, 0.25, 0.0, 1.0, -1.0, 0.5, 0.0, 0.5, 0.0, 1.0, 0.5, 0.5, 0.5, -0.5, 0.5, 0.75, -0.5, -0.75, 0.75, -0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 1.0, -1.0, -0.75, 0.0, 0.5, 0.5, 0.5, 1.0, -0.25, 1.0, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.25, -1.0, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 0.0, 0.75, 1.0, 0.75, 0.0, 0.0, 0.75, 0.0, -0.5, ]);
    const array9 = new Float32Array([-1.0, -0.5, -0.75, 0.75, 0.25, 0.25, 0.25, -0.75, 0.0, 0.75, -0.5, 0.75, -0.25, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.75, -0.25, -0.5, -0.25, 0.5, -1.0, -1.0, -0.5, 0.0, -0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, 0.25, 1.0, 0.75, -0.5, -0.5, 0.25, 0.5, 0.25, 0.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, 0.25, 0.5, -0.5, -0.75, 0.25, -0.25, -0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 1.0, -0.75, 0.5, -1.0, 0.25, 0.5, ]);
    const array10 = new Float32Array([-0.75, -0.75, -0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -1.0, -0.75, 0.25, 0.25, 0.5, 0.25, 0.5, -0.75, -0.5, -0.25, -0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.25, -1.0, 1.0, 0.0, -0.25, -0.25, -0.25, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, 0.25, 0.25, 0.5, 0.25, -0.25, 0.25, -0.5, -0.75, 0.75, 0.5, 0.0, 0.0, 0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 0.0, 1.0, 0.75, 0.75, -0.5, -1.0, 0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 1.0, -0.75, -0.5, -1.0, -0.75, 1.0, -0.25, -0.5, 1.0, -1.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.5, 1.0, 0.5, 0.25, 0.0, 0.25, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array11 = new Float32Array([1.0, -0.25, -0.5, -0.75, 0.75, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, -0.75, 0.5, 0.75, 0.25, 1.0, 0.75, -0.75, -0.5, 0.75, -0.5, -1.0, 1.0, 0.25, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, -0.25, -0.5, 1.0, 0.0, 0.75, -1.0, -0.75, 0.25, -0.75, 1.0, 0.75, 0.75, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, -1.0, -0.75, 0.5, 0.5, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, 0.0, 0.0, 1.0, 0.0, -0.75, -0.25, -0.5, 1.0, 0.0, -1.0, -0.5, -0.25, 0.0, 0.25, -0.25, -0.75, 0.25, -0.5, 1.0, -0.5, -0.25, 0.5, 0.75, -0.25, 0.75, 1.0, -0.25, 1.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.5, -0.25, ]);
    
    const array12 = new Float32Array([-0.5, 0.75, -0.25, -0.75, 1.0, 0.25, 0.75, -0.5, -1.0, 0.25, -0.25, 1.0, 0.75, 0.25, -1.0, -0.25, -0.75, 0.5, 0.25, 0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 0.0, 1.0, -0.25, 0.75, -0.5, 0.75, -0.25, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, 0.0, -0.75, 1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, 0.5, -0.5, -1.0, -1.0, 0.75, -1.0, 1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -1.0, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, 1.0, -0.75, 0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 0.25, 0.5, -1.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 1.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.5, -0.5, 0.0, 1.0, ]);
    
    
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.pushErrorScope("validation");
    command_encoder100.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query100 = device10.createQuerySet({
        label: "query100",
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query101.destroy()
    
    
    texture100.destroy();
    const command_buffer101 = command_encoder101.finish();
    
    
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    device30.pushErrorScope("out-of-memory");
    const array13 = new Float32Array([1.0, 1.0, -0.5, 0.25, -0.5, 0.5, -0.75, 0.5, -1.0, -0.25, 0.0, 1.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -1.0, -0.25, -0.75, -0.75, 0.75, 0.25, -0.75, 0.5, -1.0, -0.5, 0.75, -1.0, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.75, 0.25, -0.75, 0.5, 0.5, -0.75, -0.75, -1.0, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, 0.5, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, -0.25, 0.5, -0.5, -0.75, 1.0, 0.0, 1.0, 0.75, 0.75, 0.0, 0.5, -0.25, -1.0, -1.0, -0.5, 0.0, 1.0, -0.25, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, 0.75, ]);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device10.pushErrorScope("validation");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array14 = new Float32Array([1.0, -0.75, -1.0, 0.0, -0.25, -0.25, 0.5, -0.75, 0.0, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.75, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.5, -0.5, 0.75, -0.75, -1.0, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, 0.0, 0.75, -0.25, -0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.75, 0.25, -0.75, 0.75, 0.5, 0.75, 0.75, 0.0, 1.0, -0.75, 0.5, -1.0, 1.0, -0.25, -1.0, -0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, -1.0, 0.5, -0.25, -0.25, -0.25, 1.0, 0.75, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.0, -1.0, -0.25, 1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 0.5, 0.5, -0.5, -0.25, -0.25, 1.0, ]);
    query301.destroy()
    
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    
    texture300.destroy();
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query100.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array15 = new Float32Array([-0.5, 0.5, 0.0, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -1.0, -0.5, -0.5, 0.75, -0.75, -0.5, -0.5, -0.75, 1.0, -0.25, 1.0, 1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.75, -0.5, 0.5, 0.0, -0.25, 0.5, -0.75, 0.5, -0.25, 0.0, 0.5, -0.25, 1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -1.0, -1.0, -0.25, -0.25, 0.75, 0.25, -0.5, 1.0, 0.5, 0.75, -0.75, 0.5, -0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 0.75, -1.0, -0.25, 1.0, -0.5, 0.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.75, -0.25, -0.75, 0.25, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.25, -0.5, -0.75, 1.0, 1.0, ]);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    buffer104.destroy()
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    texture301.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array16 = new Float32Array([-0.75, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, 1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -0.75, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, -1.0, -0.75, 0.5, 0.75, -0.75, 0.25, 0.25, 0.5, 0.25, -0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, -1.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.25, 1.0, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, 0.75, 1.0, -0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, 0.75, -0.5, 0.25, 0.0, 0.75, -0.5, 0.75, -0.75, 0.5, -0.5, 0.0, ]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query300.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("validation");
    query300.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query101.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.destroy();
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.pushErrorScope("internal");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    query302.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer101.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query301.destroy()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.setIndexBuffer(buffer102, "uint16");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    query104.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query300.destroy()
    query105.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    query102.destroy()
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    compute_pass_encoder3000.insertDebugMarker("marker")
    query304.destroy()
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    
    
    
    texture104.destroy();
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.destroy();
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query300.destroy()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    query301.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3000.popDebugGroup()
    
    
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    buffer301.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query302.destroy()
    
    compute_pass_encoder3010.popDebugGroup()
    query305.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    device30.pushErrorScope("validation");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query303.destroy()
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    texture303.destroy();
    query302.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query302.destroy()
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3050,
            },
        ],
        occlusionQuerySet: query305
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    query304.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.pushErrorScope("validation");
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer400.destroy()
    command_encoder400.insertDebugMarker("mymarker");
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
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    command_encoder401.clearBuffer(buffer402);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder3020.setPipeline(render_pipeline301);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeBuffer(buffer402, 0, array16, 0, array16.length);
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer401 = command_encoder401.finish();
    
    command_encoder402.clearBuffer(buffer402);
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.setPipeline(render_pipeline302);
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    render_pass_encoder3020.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    texture305.destroy();
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query306
    });
    device60.queue.writeBuffer(buffer600, 0, array16, 0, array16.length);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    command_encoder600.clearBuffer(buffer600);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group303);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    texture302.destroy();
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout302]
    });
    query301.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    
    device60.pushErrorScope("internal");
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    buffer305.destroy()
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query303.destroy()
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array16, 0, array16.length);
    command_encoder500.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder400.clearBuffer(buffer402);
    
    command_encoder400.insertDebugMarker("mymarker");
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
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    buffer303.destroy()
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    query305.destroy()
    
    
    render_pass_encoder3030.setPipeline(render_pipeline304);
    
    
    
    command_encoder600.insertDebugMarker("mymarker");
    buffer600.destroy()
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    render_pass_encoder3020.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3010.popDebugGroup()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    const command_buffer400 = command_encoder400.finish();
    command_encoder600.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3010, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer3010, 0);
    const command_buffer600 = command_encoder600.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    command_encoder500.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder3000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3010.end();
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    device60.queue.submit([command_buffer600, ]);
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
}