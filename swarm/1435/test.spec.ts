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
    
    const array0 = new Float32Array([0.0, -0.75, 1.0, 0.0, 0.5, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, 1.0, -0.25, -0.5, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.5, 0.75, -0.75, -0.5, 0.5, -1.0, 0.75, -1.0, -0.25, -0.75, 0.5, -0.75, 0.25, 0.0, -0.75, -1.0, 0.75, 1.0, 0.0, 1.0, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, 1.0, -1.0, 0.75, 1.0, 0.75, 0.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 0.0, -0.5, 0.0, -0.75, -0.75, -0.5, 0.75, 0.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.5, 0.75, 0.0, -0.25, 0.25, -0.75, 0.0, -0.5, 0.0, -0.5, 0.75, -0.5, -1.0, -0.25, 0.5, -1.0, 0.5, 0.75, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.25, 0.75, -0.75, -0.25, -0.25, -0.75, 0.75, -0.5, -0.75, 0.25, -0.75, 0.75, 1.0, 0.0, -0.5, 1.0, -0.25, 0.0, 0.5, 0.5, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, -0.75, -0.5, 1.0, 0.5, 0.25, -1.0, 0.75, -1.0, -0.5, -0.5, 0.25, -1.0, 1.0, 1.0, -0.75, -0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.5, -0.25, 1.0, -1.0, -1.0, -0.5, -0.75, -0.5, -0.25, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, 0.25, 0.5, -0.75, -0.75, 0.75, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, 1.0, -0.5, 1.0, -0.25, 0.25, -0.5, -1.0, 0.0, 0.0, 0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, 0.5, -0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.75, 0.75, -1.0, 0.75, 0.5, 1.0, 0.75, 1.0, 0.25, 0.0, 1.0, 1.0, -1.0, -0.25, 1.0, 0.0, -0.25, 0.25, -1.0, 0.0, -0.75, -0.5, -0.25, 0.75, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.5, 0.75, 0.25, 0.5, -0.25, -0.25, 0.5, 0.0, 0.25, -1.0, -0.25, 0.75, -0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 0.75, 0.75, -0.25, 1.0, 0.0, -0.75, -0.75, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.5, 0.0, -1.0, 1.0, -0.25, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, 0.25, 0.75, 0.5, 0.0, -0.75, -1.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, ]);
    const array3 = new Float32Array([1.0, 0.0, -0.25, -0.75, 0.75, 0.75, -0.25, -0.25, -0.25, 0.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.25, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, -0.75, 0.0, 0.5, -0.5, 0.5, 1.0, -0.5, 1.0, -0.5, 0.25, -0.75, 0.75, 0.75, 0.5, 0.75, -1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, -0.75, -0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 1.0, 0.5, -0.25, -0.25, 1.0, 0.75, 1.0, 1.0, -1.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, 0.75, -0.25, -0.5, -0.5, -0.75, -1.0, 0.75, 1.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.75, -1.0, -0.25, 0.5, -1.0, -0.25, 0.25, 0.5, 0.75, -0.25, ]);
    const array4 = new Float32Array([-0.5, -0.25, 0.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.5, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, -0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.0, 0.75, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, 0.75, -0.75, -0.5, 0.25, 1.0, -0.75, -1.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 1.0, -0.5, -0.25, 0.0, 0.0, -0.5, -0.75, -0.5, 0.75, -0.25, 0.75, 0.75, -0.25, 0.0, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, 0.25, -0.75, 1.0, -0.25, 0.75, -0.25, -0.75, 1.0, -0.25, -0.5, 1.0, -0.75, -1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 0.0, -0.25, -1.0, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([0.25, 0.25, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 0.25, -0.75, 1.0, 0.25, -0.5, 0.25, 0.75, -0.5, 0.0, 0.75, 1.0, 0.25, 0.0, 0.75, 0.5, 0.75, 1.0, 1.0, 0.5, 0.5, 0.5, -0.5, 0.75, 1.0, -0.5, 1.0, 0.0, 0.5, -0.75, -0.75, 0.5, -1.0, -0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 0.75, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.0, 0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.5, -0.25, 0.25, -0.25, -0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.25, 0.25, 0.25, 0.75, -0.25, -0.25, -0.75, 1.0, -1.0, -0.75, -0.75, 1.0, -0.5, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    const array6 = new Float32Array([1.0, 0.0, -0.25, 0.25, 1.0, 1.0, 1.0, 0.0, 1.0, 0.5, 0.25, -0.75, 0.0, 0.0, -1.0, -1.0, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, 0.0, -0.75, -0.25, 0.0, -0.75, 1.0, -0.25, 0.25, 0.25, -0.25, -0.25, 0.75, -0.25, 1.0, 0.0, 1.0, 0.5, 0.5, -0.75, -0.5, -0.5, 1.0, 0.0, -0.25, 0.25, -0.75, 0.25, 1.0, -1.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, -1.0, -0.25, -1.0, 0.0, 0.5, -0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 0.0, -0.75, 0.75, 0.5, -0.75, -0.25, -1.0, -0.25, ]);
    
    
    const array7 = new Float32Array([0.5, 0.5, 0.5, -0.5, 0.75, -0.5, 0.75, -1.0, 0.25, -0.75, 0.75, -0.75, -0.5, 0.0, -1.0, -1.0, 0.25, -0.75, 0.25, 0.0, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, -1.0, 0.5, -0.25, -1.0, 0.5, 0.5, -1.0, 0.75, 0.25, -1.0, 0.75, -0.75, -0.75, 0.75, 0.75, -0.75, 0.5, -0.25, -0.25, 0.5, -1.0, -0.25, -1.0, -0.25, -1.0, 0.0, -0.5, 1.0, -0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.75, -0.75, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 0.5, 0.25, -0.75, 0.75, 0.5, -1.0, -0.25, 0.0, 0.25, 1.0, 0.5, 1.0, -0.75, -1.0, 0.5, 0.75, -0.75, 0.75, 0.5, -0.25, 0.25, 0.5, 0.75, 1.0, 0.5, -0.75, 0.0, 0.5, -0.5, 0.5, 1.0, 0.25, ]);
    
    
    
    
    
    
    
    const array8 = new Float32Array([1.0, 0.5, 0.5, -0.75, 0.5, -0.75, 0.0, 0.5, -0.25, -0.5, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, 0.25, -1.0, 1.0, -0.25, -1.0, -0.75, 1.0, -0.75, 0.75, -0.5, 0.5, -0.5, -0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 0.5, -0.25, 0.0, -0.75, 0.0, 0.75, 1.0, -0.5, -0.5, 0.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, -0.25, 0.5, 0.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, -0.25, -0.75, -1.0, -0.75, 0.75, 0.0, 0.5, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, 0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 0.75, -0.25, 0.5, -0.5, 0.75, 0.5, -0.5, 0.5, -0.75, 1.0, 1.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.75, 0.0, -0.75, -0.75, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const array9 = new Float32Array([1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.75, 0.25, 1.0, -0.75, -0.25, -1.0, -0.25, 0.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, -0.75, 1.0, 0.5, 1.0, -1.0, 0.0, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.25, -0.25, 0.0, 0.0, -0.75, 1.0, -0.75, -0.5, -0.75, 0.0, 1.0, 0.0, 0.75, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, -0.5, -1.0, -0.75, 1.0, -1.0, -1.0, -0.75, -0.25, -0.75, -0.25, 0.5, 0.0, -0.25, -0.25, 0.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.75, 0.5, -0.5, -1.0, 0.75, -1.0, -1.0, 0.5, -0.5, 0.0, ]);
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    
    
    const array10 = new Float32Array([1.0, 0.0, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, 0.5, -1.0, -0.25, 0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 1.0, -0.25, -0.5, -0.5, -0.25, 1.0, 0.25, 0.75, -0.75, -0.25, 0.75, -0.5, -0.25, 0.75, 0.25, -0.5, -0.75, -0.75, 0.75, 0.25, 0.0, 0.75, 0.5, -0.75, 1.0, 0.75, -0.5, 0.25, 0.25, -1.0, 0.25, 0.5, -0.5, -1.0, -0.25, -0.25, 0.25, -1.0, 0.5, -0.5, -1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 0.25, -0.5, 0.0, 0.75, -1.0, -0.5, -0.5, -0.5, -0.5, -1.0, -0.25, -0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.5, 1.0, 1.0, 0.0, 0.25, ]);
    
    
    device00.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.pushErrorScope("out-of-memory");
    device30.destroy();
    const array11 = new Float32Array([1.0, 0.25, -0.75, 1.0, 0.25, 0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -0.5, -0.75, -0.5, 1.0, -0.75, -0.75, 0.25, 1.0, 0.0, -0.75, 0.0, -0.5, 0.25, -0.75, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, 0.25, 0.75, -1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -1.0, 0.75, -0.75, -0.75, -0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.25, -0.25, 0.0, 1.0, -0.5, -0.25, 0.0, -0.25, 0.0, 0.25, -0.5, -1.0, 0.5, -0.75, 0.75, 0.75, -0.5, 1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.5, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, 0.5, -0.75, -0.5, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -0.25, -0.5, -0.75, -0.5, 0.0, 0.5, 0.0, ]);
    
    
    
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device30.pushErrorScope("out-of-memory");
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array12 = new Float32Array([-0.5, 0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, -1.0, 0.25, 1.0, -0.25, -1.0, -0.5, 1.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.75, -0.25, 1.0, 0.75, -1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.75, -0.25, 0.25, -0.25, 0.0, 0.5, 0.25, -1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -0.75, -0.75, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, 0.5, 1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 0.0, -1.0, 0.25, -0.25, ]);
    
    
    const array13 = new Float32Array([0.75, 0.75, 0.0, 0.0, -0.5, 0.0, 0.25, -0.75, -1.0, 0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 1.0, 1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 0.0, -1.0, -1.0, -0.75, -0.5, -1.0, -1.0, -0.75, 1.0, 0.5, -1.0, 0.75, -1.0, 0.75, -0.25, 1.0, 0.5, 0.75, -0.25, -0.25, 0.75, -0.75, 1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.5, 0.0, 1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.25, 0.25, 0.75, 0.25, -1.0, -0.75, -1.0, 1.0, 0.0, -1.0, 0.5, -0.75, -1.0, 0.75, 0.5, -0.75, 1.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 0.0, -0.25, 0.5, -0.25, -0.25, 1.0, 0.25, 0.0, 0.75, 0.25, 0.5, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array14 = new Float32Array([-0.75, 0.25, 1.0, -1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.25, -0.75, -0.25, 0.0, 0.5, -0.25, -0.25, -0.25, 1.0, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, -0.25, -0.5, -0.25, -0.25, -0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, -1.0, -0.5, -0.5, 1.0, 0.75, 0.25, 1.0, 1.0, 0.0, 1.0, 0.5, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.25, -0.75, -0.25, 0.75, -0.5, -0.25, 0.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, -0.75, -0.75, -0.75, -0.25, 0.5, -0.25, 0.75, -0.25, -0.75, -0.75, -0.5, 0.75, -1.0, -1.0, -1.0, 1.0, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query500.destroy()
    device40.queue.submit([]);
    device50.pushErrorScope("validation");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device40.pushErrorScope("validation");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer602.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer602.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer602.unmap();
        console.log(new Float32Array(data));
    }
    buffer601.destroy()
    device80.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeBuffer(buffer602, 0, array11, 0, array11.length);
    
    
    device60.queue.writeBuffer(buffer602, 0, array9, 0, array9.length);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device70.destroy();
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer602, 0, array4, 0, array4.length);
    
    device60.pushErrorScope("out-of-memory");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const array15 = new Float32Array([-0.75, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.0, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, 0.5, -0.5, 0.25, -0.5, -0.25, -0.75, -1.0, -0.5, -0.5, -0.25, 1.0, -0.5, -0.75, -1.0, 0.5, -0.5, 0.75, -0.25, -0.75, 1.0, 0.25, 0.5, 0.75, 0.75, -1.0, 0.75, -0.5, 0.5, -0.75, -0.25, 1.0, 0.0, -1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.75, 1.0, 0.75, 0.25, 0.0, 0.75, 0.75, -0.25, -0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 1.0, -1.0, 0.5, 0.25, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, -0.5, -1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.0, 1.0, 0.5, 0.5, 0.5, -1.0, -1.0, 0.75, 0.0, -1.0, 1.0, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array13, 0, array13.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    buffer500.destroy()
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    
    texture501.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    render_bundle_encoder600.popDebugGroup();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
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
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array16 = new Float32Array([-0.5, -1.0, 1.0, -1.0, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.75, 0.75, -0.75, 0.5, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 1.0, -0.75, -0.5, -1.0, -0.5, 1.0, 0.5, 0.75, -1.0, -0.5, -0.25, 0.25, -1.0, 0.75, -0.5, 0.0, -1.0, 1.0, 0.0, -0.75, 0.25, -1.0, -0.25, 0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.75, 0.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.0, 0.75, 0.75, -1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 0.5, -1.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.0, 1.0, 0.25, -0.5, -0.25, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, 1.0, 0.25, 0.0, -0.5, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 0.75, 0.75, -0.5, ]);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    texture502.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder501.popDebugGroup();
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    device00.pushErrorScope("validation");
    
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device90.pushErrorScope("out-of-memory");
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer501.destroy()
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device40.pushErrorScope("internal");
    buffer400.destroy()
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query500.destroy()
    const array17 = new Float32Array([-1.0, -0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.5, 0.75, -0.5, 0.5, -0.5, -0.5, -0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, -1.0, -0.75, -1.0, -0.75, 0.0, 0.5, -0.75, 0.75, 0.25, -0.25, -0.25, 0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, -0.5, -0.75, -0.75, 0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 0.25, -0.5, 0.75, 0.5, 0.5, -1.0, -1.0, -1.0, 0.5, 1.0, -0.75, -0.5, 0.75, -0.75, 0.0, -0.75, 0.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.5, -1.0, 1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, 0.5, 0.0, ]);
    
    const array18 = new Float32Array([-0.25, -0.25, 0.75, -0.75, -0.25, 0.5, 0.25, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.5, 0.0, -0.5, 0.5, -1.0, 0.0, -0.25, -0.75, -0.5, -0.75, -1.0, 0.25, 0.5, -0.5, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.5, 0.25, -0.75, 1.0, -0.25, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.5, -0.75, -0.75, 0.0, -1.0, -0.75, 0.25, 1.0, 0.5, 1.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, -0.25, 0.25, -0.25, 0.0, 0.25, -0.5, -1.0, -0.75, 0.5, 0.25, 0.0, 0.75, -1.0, 1.0, 0.0, -0.25, 0.75, 0.0, -0.5, -0.75, -0.25, -0.75, ]);
    
    const array19 = new Float32Array([0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, 0.0, 0.0, 1.0, 0.75, 0.0, 0.5, 1.0, 0.25, 1.0, 0.25, 1.0, -1.0, -0.75, -0.75, 0.5, 0.75, 0.75, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, 0.0, -1.0, -0.25, -0.5, 0.0, 0.0, -0.5, 0.75, 1.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 1.0, 0.0, 0.0, 0.75, -1.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.0, 1.0, 0.25, 1.0, 0.5, 0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 0.75, -0.25, 0.25, 0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, -0.5, 1.0, 1.0, -0.5, -1.0, 1.0, 0.5, -0.75, -0.5, 0.0, -0.5, 0.25, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, ]);
    device50.queue.writeBuffer(buffer502, 0, array11, 0, array11.length);
    device50.queue.writeTexture({ texture: texture500 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query400.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    device50.queue.writeBuffer(buffer502, 0, array17, 0, array17.length);
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    device50.queue.writeBuffer(buffer502, 0, array12, 0, array12.length);
    query402.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device50.queue.writeBuffer(buffer502, 0, array19, 0, array19.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    device50.pushErrorScope("internal");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device50.queue.writeBuffer(buffer502, 0, array13, 0, array13.length);
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module904,
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
            module: shader_module904,
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
    
    device50.queue.writeBuffer(buffer502, 0, array17, 0, array17.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device50.queue.writeBuffer(buffer502, 0, array10, 0, array10.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device50.queue.writeBuffer(buffer502, 0, array16, 0, array16.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    device50.queue.writeTexture({ texture: texture500 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    device70.pushErrorScope("out-of-memory");
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder502.setPipeline(render_pipeline501);
    render_bundle_encoder501.insertDebugMarker("marker");
    texture500.destroy();
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
    
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    device50.queue.writeBuffer(buffer502, 0, array15, 0, array15.length);
    buffer503.destroy()
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    
    
    buffer502.destroy()
    buffer503.destroy()
    device90.destroy();
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    
    
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device50.queue.writeBuffer(buffer502, 0, array14, 0, array14.length);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    query401.destroy()
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device40.queue.writeTexture({ texture: texture400 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device100.destroy();
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    query502.destroy()
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline905 = device90.createRenderPipeline({
        label: "render_pipeline905",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    device50.queue.writeBuffer(buffer502, 0, array11, 0, array11.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    const query405 = device40.createQuerySet({
        label: "query405",
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
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const array20 = new Float32Array([-1.0, -0.25, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, -0.75, 0.5, -1.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 1.0, -0.25, -1.0, -0.75, 1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, -0.25, -0.5, 0.0, 0.0, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, 0.0, 0.5, -0.25, 0.25, 1.0, 0.25, 0.0, -0.25, -0.5, 1.0, -0.75, 0.25, -1.0, -0.5, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.75, 0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 0.25, -0.75, -1.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.75, 0.0, -1.0, -0.5, 1.0, ]);
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4006 = texture400.createView({ label: "texture_view4006" });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    device50.queue.writeBuffer(buffer502, 0, array7, 0, array7.length);
    
    device50.pushErrorScope("internal");
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    buffer700.destroy()
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    query405.destroy()
    
    query400.destroy()
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    texture400.destroy();
    query404.destroy()
    buffer504.destroy()
    
    const array21 = new Float32Array([0.0, -0.5, 0.25, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, 0.75, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -1.0, 0.5, -0.25, 0.75, 0.75, 0.25, -0.25, -0.5, 0.25, 0.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.75, 0.25, 0.25, -0.25, 1.0, 1.0, 0.5, -0.25, 0.25, 1.0, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 0.25, -0.75, 0.25, -0.75, 0.0, 1.0, -0.75, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.5, 1.0, 1.0, 1.0, ]);
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
    device40.destroy();
    
    
    
    
    device50.queue.writeBuffer(buffer502, 0, array18, 0, array18.length);
    
    
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    buffer504.destroy()
    
    device60.pushErrorScope("internal");
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module5010,
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
            module: shader_module5010,
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
    buffer505.destroy()
    
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_bundle_encoder501.setPipeline(render_pipeline504);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    query503.destroy()
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    
    
    query502.destroy()
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    
    render_bundle_encoder501.popDebugGroup();
    query501.destroy()
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    query500.destroy()
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module508,
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
            module: shader_module508,
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
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    
    query404.destroy()
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
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    device110.pushErrorScope("internal");
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module5010,
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
            module: shader_module5010,
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
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer502, 0, array19, 0, array19.length);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    query503.destroy()
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const array22 = new Float32Array([-1.0, -0.25, 0.0, 0.25, -1.0, -0.25, 1.0, 0.25, -0.5, 0.75, -1.0, 1.0, -0.75, -0.25, -0.25, -0.5, -1.0, 0.75, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 1.0, 0.0, 0.5, -0.25, 0.75, 1.0, -1.0, 0.25, 0.75, -0.25, 0.5, 0.25, -1.0, 1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 1.0, 0.5, -0.75, 1.0, 0.75, -0.25, -0.5, -0.25, 0.25, 0.25, -0.5, -0.5, 0.0, 0.0, 0.0, -0.75, 0.5, -1.0, -0.5, 1.0, -0.75, 0.0, 0.75, 0.25, -0.75, -0.75, 0.75, 0.75, -1.0, 0.5, -1.0, 0.75, 0.25, -0.75, -0.25, 0.25, 0.25, -0.75, 0.5, 1.0, 0.25, -0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, 1.0, -0.5, -1.0, 0.25, 0.5, -0.25, 0.25, ]);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("internal");
    const array23 = new Float32Array([0.5, -0.25, 1.0, 0.0, -1.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, 0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 1.0, -1.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.5, 0.5, 0.5, 0.25, -0.75, 1.0, 0.0, -0.5, 1.0, 0.5, -0.75, -0.25, 0.25, -0.25, -0.25, -0.25, 0.75, 0.0, 0.0, -0.5, 0.0, -0.25, -0.5, 0.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, 0.0, -0.25, -0.75, 0.75, 0.25, -0.5, 0.5, 0.0, 1.0, 0.75, 0.0, 0.0, 0.75, 0.75, 0.25, -0.25, -0.5, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.75, -0.5, -1.0, -0.25, -0.5, 0.0, 0.25, 0.0, -0.25, 0.75, -0.5, 0.0, 0.25, 1.0, 0.0, ]);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    render_bundle_encoder502.popDebugGroup();
    query502.destroy()
    query401.destroy()
    query500.destroy()
    render_bundle_encoder1100.insertDebugMarker("marker");
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    device110.queue.writeTexture({ texture: texture1100 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}