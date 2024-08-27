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
    
    const array0 = new Float32Array([-0.75, 0.0, -1.0, -0.25, 0.75, 0.0, 0.5, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, 0.25, 0.0, 0.75, -0.5, -1.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, -0.25, 0.0, -0.25, 0.25, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, -1.0, -0.25, 0.0, -0.75, -0.75, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 0.25, -0.5, -1.0, 1.0, 0.75, -0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.0, 1.0, 0.5, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.0, -0.75, 1.0, ]);
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 1.0, 0.25, 0.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, -0.5, 0.75, -1.0, 0.0, 0.75, 0.0, -0.25, -0.5, 1.0, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, 0.25, 0.5, -0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, 0.5, -1.0, -1.0, 1.0, -0.5, 0.25, -1.0, 1.0, 0.75, -0.75, 0.75, -0.25, -0.25, 1.0, -0.5, 1.0, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, 0.25, -1.0, -1.0, -1.0, 0.75, -0.5, -0.75, -0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 0.5, -0.75, -1.0, 0.25, 0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, ]);
    const array2 = new Float32Array([0.5, -0.25, -1.0, -0.25, 0.25, 0.25, 0.5, 0.5, -0.25, 0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 0.0, -0.75, 1.0, 1.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -0.25, 0.5, 1.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.25, -0.75, 1.0, 0.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 0.5, -0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array3 = new Float32Array([-0.75, 0.5, -1.0, 0.5, 0.25, 0.0, -1.0, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, 0.25, -0.5, -1.0, -0.25, 1.0, 0.75, -0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.5, 0.75, 0.5, -0.25, -0.75, -0.25, -1.0, -0.5, -1.0, 0.0, 0.5, 0.25, 0.5, 0.0, 0.0, -1.0, 0.0, -1.0, 0.75, 0.5, -1.0, 1.0, 1.0, -0.5, -1.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.0, -0.5, 1.0, 0.25, -0.5, -0.5, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 0.0, 0.0, 0.75, 0.0, 0.75, 0.75, -0.25, 0.5, 0.0, 1.0, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, ]);
    
    
    const array4 = new Float32Array([0.0, 0.5, -0.5, -0.25, 0.75, -0.5, -1.0, 0.25, -0.25, 0.25, 0.25, 0.0, -0.75, -0.75, 0.5, 0.75, 1.0, 1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.5, 0.75, 0.5, -0.5, -0.75, -0.5, 1.0, 0.75, -0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.5, 0.0, 0.75, 1.0, 0.25, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.75, 0.75, 0.5, -0.5, 0.25, 0.75, 0.75, 0.0, 0.5, -1.0, 0.75, 0.75, 1.0, 0.5, 0.25, 0.5, 0.5, -0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 0.5, -0.25, 0.25, 0.5, 0.5, -0.25, -0.25, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([-0.75, 0.0, 0.75, 0.75, -0.5, -1.0, -0.75, -0.5, -0.75, 0.25, -0.75, -1.0, 0.0, 0.0, 0.75, -0.5, -0.25, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 0.25, -0.25, 0.0, 0.25, 0.25, 0.0, 0.75, 0.75, -1.0, 0.5, 1.0, -0.75, 0.0, 0.5, 0.75, 0.0, 0.25, 0.0, -1.0, 0.25, 0.25, -0.5, 0.25, -0.5, 0.25, 0.0, 0.5, 0.75, 0.5, -0.5, 0.75, 0.75, 0.25, -0.25, -0.25, -0.75, 0.25, -0.25, 0.0, 0.5, 0.5, 1.0, 0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 1.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.0, -0.75, 0.75, 0.25, 0.5, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, 0.25, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const array6 = new Float32Array([0.5, 0.5, 0.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.5, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 0.0, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.5, 0.0, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.25, -1.0, -0.75, -1.0, -0.5, -0.75, -1.0, 0.25, -0.25, 0.0, -0.5, 0.75, 0.25, 0.25, -1.0, -0.25, -1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -1.0, -0.25, 0.75, 0.5, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, ]);
    const array7 = new Float32Array([-1.0, 0.5, -1.0, 0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.5, 0.25, 0.75, 0.25, -1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.75, 0.5, 0.25, 1.0, -0.75, 0.25, 0.5, 0.0, -0.75, 0.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.0, 0.0, -0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.5, 0.75, 1.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, -0.75, -0.5, 1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, -0.25, 0.0, -0.25, -1.0, 0.75, 0.5, 1.0, 0.0, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, -1.0, 0.75, 0.5, 0.75, -0.5, -0.75, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, ]);
    
    
    
    
    
    
    
    
    
    
    const array8 = new Float32Array([-1.0, -0.5, -0.5, 0.25, 0.25, 1.0, -0.25, 1.0, -1.0, 1.0, -0.25, -0.25, 0.5, 0.5, 0.0, -0.75, 0.75, -0.25, 0.0, 0.25, -1.0, 0.0, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, -0.75, -0.25, 1.0, 1.0, -1.0, 0.25, 0.0, -0.25, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -0.5, 0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 0.25, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 0.25, -0.25, -1.0, -1.0, 0.0, -0.75, 0.0, 1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -0.5, 0.5, -0.25, 0.5, 0.0, -0.25, -0.5, 0.0, 0.0, -1.0, ]);
    
    
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    device00.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array9 = new Float32Array([0.25, -0.5, -0.75, 0.75, -0.25, 0.5, -0.25, 0.75, 0.5, -0.75, -0.25, 0.5, -1.0, 0.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.75, -0.75, -0.75, 0.5, -0.75, 0.75, 0.0, -0.25, -1.0, -1.0, 0.0, -0.25, 1.0, -0.75, -0.25, -0.5, -1.0, 0.75, -0.5, 0.0, 0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, -1.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 0.25, -0.5, 0.75, 1.0, 0.25, -0.5, -0.25, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, 0.25, 0.0, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.75, -0.5, -0.75, -0.25, 1.0, 0.0, 0.25, 0.5, -1.0, 0.75, 0.25, 1.0, 0.25, ]);
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query001.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const array10 = new Float32Array([-1.0, -0.25, 1.0, 0.25, -0.75, 1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.5, 0.5, 1.0, -0.5, 1.0, 1.0, -1.0, -0.75, 1.0, 0.0, 0.75, 0.25, 0.5, -0.75, 0.5, 0.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.5, 0.25, -0.5, -1.0, 1.0, 0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 0.25, -1.0, -0.5, 0.25, 0.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.5, -1.0, 0.25, -1.0, 0.0, 0.5, 0.75, 0.75, -1.0, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, -0.5, 0.0, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.25, -1.0, ]);
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.25, -0.25, -1.0, -0.75, 0.0, 0.5, -0.75, -0.5, 1.0, -1.0, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, -0.5, -0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 0.25, -0.25, -0.75, -1.0, 0.25, 0.25, 1.0, 0.25, -0.25, -0.75, -0.5, -0.5, 0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, -0.25, 1.0, 0.5, 0.0, -1.0, 1.0, 0.0, -1.0, -0.75, -0.5, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 1.0, 0.5, 0.5, -1.0, 0.0, 0.25, 1.0, -1.0, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
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
    
    
    
    
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3000.popDebugGroup()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device40.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    compute_pass_encoder3010.popDebugGroup()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("out-of-memory");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const array12 = new Float32Array([0.25, 0.25, 0.0, 1.0, 0.75, 0.0, -0.25, -1.0, 0.25, 0.75, 0.75, 0.25, 0.25, 0.75, -0.25, 0.5, 0.25, -0.5, -0.25, 0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -1.0, -0.75, 0.5, -0.5, -0.75, -0.75, 0.0, 0.25, 0.75, 1.0, 0.5, 0.25, 0.75, 0.25, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, -0.75, 0.75, -0.25, 0.5, -0.5, 0.25, 0.5, 0.5, -0.25, -0.5, -0.75, -0.75, -0.75, 1.0, 0.75, 0.25, -0.25, 0.25, -0.25, 1.0, 0.5, -1.0, 0.0, 0.25, 0.0, 0.75, 0.75, 0.0, 0.0, 0.75, -1.0, -0.5, 0.25, 0.0, -0.75, 0.5, -1.0, 1.0, 0.0, -0.75, -1.0, 1.0, 1.0, -0.25, -0.5, -1.0, 0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 1.0, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline302);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
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
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder3020.setPipeline(compute_pipeline302);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.setPipeline(compute_pipeline303);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query300.destroy()
    
    
    
    compute_pass_encoder3010.popDebugGroup()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device60.destroy();
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query301.destroy()
    
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
    device50.destroy();
    compute_pass_encoder3030.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout307,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    device30.pushErrorScope("internal");
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    compute_pass_encoder3030.insertDebugMarker("marker")
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array13 = new Float32Array([0.5, -1.0, 0.5, -0.25, 0.0, 0.25, 0.25, -0.5, -1.0, 0.75, 1.0, -1.0, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.75, 1.0, -0.5, 0.0, -0.25, 0.75, 0.75, -0.75, 0.75, -0.75, -0.5, -0.5, 0.75, 0.0, 0.75, 0.25, 0.25, 0.5, 1.0, 0.0, -0.75, -1.0, -0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 0.0, -0.5, -0.5, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, 0.75, -0.75, 1.0, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -1.0, -0.5, -0.5, -1.0, 1.0, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.25, 0.5, ]);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout308 = device30.createBindGroupLayout({ 
        label: "bind_group_layout308",
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
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout304]
    });
    command_encoder700.insertDebugMarker("mymarker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device80.destroy();
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
    
    const array14 = new Float32Array([0.0, 0.0, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, -0.5, -0.75, -0.25, 0.0, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -0.5, -0.75, -0.75, 0.25, -0.75, 0.25, -0.25, 0.5, -1.0, 0.75, 0.25, 0.75, 0.25, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, 0.0, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 0.25, -0.5, -0.75, 0.0, 0.5, 1.0, -0.75, 0.75, 0.5, 0.75, -1.0, 0.0, -1.0, 0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, -1.0, -0.5, 0.0, 0.0, 0.25, 0.75, -0.5, -0.25, -0.5, 1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -1.0, ]);
    command_encoder701.popDebugGroup()
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout305]
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    query300.destroy()
    
    
    
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout307]
    });
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout309,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    command_encoder702.insertDebugMarker("mymarker");
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3051 = device30.createComputePipeline({
        label: "compute_pipeline3051",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const compute_pipeline3052 = device30.createComputePipeline({
        label: "compute_pipeline3052",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3053 = device30.createComputePipeline({
        label: "compute_pipeline3053",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const compute_pipeline3054 = device30.createComputePipeline({
        label: "compute_pipeline3054",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3055 = device30.createComputePipeline({
        label: "compute_pipeline3055",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3056 = device30.createComputePipeline({
        label: "compute_pipeline3056",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const bind_group_layout309 = device30.createBindGroupLayout({ 
        label: "bind_group_layout309",
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
    const compute_pipeline3057 = device30.createComputePipeline({
        label: "compute_pipeline3057",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7020.insertDebugMarker("marker")
    const compute_pipeline3058 = device30.createComputePipeline({
        label: "compute_pipeline3058",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3059 = device30.createComputePipeline({
        label: "compute_pipeline3059",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout305]
    });
    
    const compute_pipeline3060 = device30.createComputePipeline({
        label: "compute_pipeline3060",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3061 = device30.createComputePipeline({
        label: "compute_pipeline3061",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3062 = device30.createComputePipeline({
        label: "compute_pipeline3062",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline3063 = device30.createComputePipeline({
        label: "compute_pipeline3063",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    const compute_pipeline3064 = device30.createComputePipeline({
        label: "compute_pipeline3064",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3065 = device30.createComputePipeline({
        label: "compute_pipeline3065",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3066 = device30.createComputePipeline({
        label: "compute_pipeline3066",
        layout: pipeline_layout3019,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.popDebugGroup()
    const compute_pipeline3067 = device30.createComputePipeline({
        label: "compute_pipeline3067",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query301.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3068 = device30.createComputePipeline({
        label: "compute_pipeline3068",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3069 = device30.createComputePipeline({
        label: "compute_pipeline3069",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3070 = device30.createComputePipeline({
        label: "compute_pipeline3070",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    device90.destroy();
    const compute_pipeline3071 = device30.createComputePipeline({
        label: "compute_pipeline3071",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3072 = device30.createComputePipeline({
        label: "compute_pipeline3072",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline3073 = device30.createComputePipeline({
        label: "compute_pipeline3073",
        layout: pipeline_layout309,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3074 = device30.createComputePipeline({
        label: "compute_pipeline3074",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3075 = device30.createComputePipeline({
        label: "compute_pipeline3075",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    query300.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3076 = device30.createComputePipeline({
        label: "compute_pipeline3076",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3077 = device30.createComputePipeline({
        label: "compute_pipeline3077",
        layout: pipeline_layout3020,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3078 = device30.createComputePipeline({
        label: "compute_pipeline3078",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline3079 = device30.createComputePipeline({
        label: "compute_pipeline3079",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3080 = device30.createComputePipeline({
        label: "compute_pipeline3080",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3081 = device30.createComputePipeline({
        label: "compute_pipeline3081",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    command_encoder304.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline3082 = device30.createComputePipeline({
        label: "compute_pipeline3082",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    query300.destroy()
    const compute_pipeline3083 = device30.createComputePipeline({
        label: "compute_pipeline3083",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3084 = device30.createComputePipeline({
        label: "compute_pipeline3084",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
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
    compute_pass_encoder3040.setPipeline(compute_pipeline3050);
    const compute_pipeline3085 = device30.createComputePipeline({
        label: "compute_pipeline3085",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3086 = device30.createComputePipeline({
        label: "compute_pipeline3086",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline3087 = device30.createComputePipeline({
        label: "compute_pipeline3087",
        layout: pipeline_layout3021,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3088 = device30.createComputePipeline({
        label: "compute_pipeline3088",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3089 = device30.createComputePipeline({
        label: "compute_pipeline3089",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7020.popDebugGroup()
    const compute_pipeline3090 = device30.createComputePipeline({
        label: "compute_pipeline3090",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3091 = device30.createComputePipeline({
        label: "compute_pipeline3091",
        layout: pipeline_layout3015,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline3092 = device30.createComputePipeline({
        label: "compute_pipeline3092",
        layout: pipeline_layout3022,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const compute_pipeline3093 = device30.createComputePipeline({
        label: "compute_pipeline3093",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3094 = device30.createComputePipeline({
        label: "compute_pipeline3094",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3030.insertDebugMarker("marker")
    compute_pass_encoder7000.popDebugGroup()
    query700.destroy()
    
    const compute_pipeline3095 = device30.createComputePipeline({
        label: "compute_pipeline3095",
        layout: pipeline_layout3014,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    const compute_pipeline3096 = device30.createComputePipeline({
        label: "compute_pipeline3096",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline3097 = device30.createComputePipeline({
        label: "compute_pipeline3097",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3098 = device30.createComputePipeline({
        label: "compute_pipeline3098",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pipeline3099 = device30.createComputePipeline({
        label: "compute_pipeline3099",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pipeline30100 = device30.createComputePipeline({
        label: "compute_pipeline30100",
        layout: pipeline_layout3021,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    const compute_pipeline30101 = device30.createComputePipeline({
        label: "compute_pipeline30101",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline30102 = device30.createComputePipeline({
        label: "compute_pipeline30102",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30103 = device30.createComputePipeline({
        label: "compute_pipeline30103",
        layout: pipeline_layout3018,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30104 = device30.createComputePipeline({
        label: "compute_pipeline30104",
        layout: pipeline_layout3017,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3023 = device30.createPipelineLayout({ 
        label: "pipeline_layout3023",
        bindGroupLayouts: [bind_group_layout301]
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline30105 = device30.createComputePipeline({
        label: "compute_pipeline30105",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30106 = device30.createComputePipeline({
        label: "compute_pipeline30106",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30107 = device30.createComputePipeline({
        label: "compute_pipeline30107",
        layout: pipeline_layout3019,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30108 = device30.createComputePipeline({
        label: "compute_pipeline30108",
        layout: pipeline_layout3022,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline30109 = device30.createComputePipeline({
        label: "compute_pipeline30109",
        layout: pipeline_layout3023,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline30110 = device30.createComputePipeline({
        label: "compute_pipeline30110",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline30111 = device30.createComputePipeline({
        label: "compute_pipeline30111",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const compute_pipeline30112 = device30.createComputePipeline({
        label: "compute_pipeline30112",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30113 = device30.createComputePipeline({
        label: "compute_pipeline30113",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline30114 = device30.createComputePipeline({
        label: "compute_pipeline30114",
        layout: pipeline_layout3023,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline30115 = device30.createComputePipeline({
        label: "compute_pipeline30115",
        layout: pipeline_layout3016,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline30116 = device30.createComputePipeline({
        label: "compute_pipeline30116",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query300.destroy()
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const compute_pipeline30117 = device30.createComputePipeline({
        label: "compute_pipeline30117",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
}